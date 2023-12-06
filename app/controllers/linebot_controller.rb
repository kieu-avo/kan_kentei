class LinebotController < ApplicationController
  skip_before_action :require_login, only: [:callback]

  require 'line/bot'

  protect_from_forgery except: :callback

  def client
    @client ||= Line::Bot::Client.new { |config|
      config.channel_id = ENV["LINE_CHANNEL_ID"]
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
  }
  end

  def callback
    body = request.body.read
    signature = request.env['HTTP_X_LINE_SIGNATURE']

    unless client.validate_signature(body, signature)
      head :bad_request
    end

    events = client.parse_events_from(body)
    events.each do |event|
      case event
      when Line::Bot::Event::Message
        handle_message(event)
      end
    end

    render plain: "OK"
  end

  private 

  def handle_message(event)
    case event.type
    when Line::Bot::Event::MessageType::Text
      message_text = event.message['text']
      
      message = case message_text 
                when '現在受検できる級を確認したい'
                  {
                    type: 'text',
                    text: "日本編 🇯🇵 \n 熊本、宮崎、三重、兵庫、群馬 \n \n 海外編 🌍 \n カナダ、オランダ、フィンランド、マルタ、ベトナム"
                  }
                else
                  {
                    type: 'text',
                    text: "このアカウントは通知専用ですので、ご質問等はお問い合わせフォームからお願いします🙇🏼"
                  }
                end

      client.reply_message(event['replyToken'], message)
    end
  end
end
