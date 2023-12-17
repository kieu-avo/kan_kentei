class LinebotController < ApplicationController
  skip_before_action :require_login, only: [:callback]

  require 'line/bot'

  protect_from_forgery except: :callback

  def client
    @client ||= Line::Bot::Client.new do |config|
      config.channel_id = ENV["LINE_CHANNEL_ID"]
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    end
  end

  def callback
    body = request.body.read
    signature = request.env['HTTP_X_LINE_SIGNATURE']

    head :bad_request unless client.validate_signature(body, signature)

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
      message = build_reply_message(event.message['text'])
      client.reply_message(event['replyToken'], message)
    end
  end

  def build_reply_message(message_text)
    case message_text
    when '現在受検できる級を確認したい'
      {
        type: 'text',
        text: "現在受検できる級は下記の通りです。\n \n 日本編 🇯🇵 \n 熊本、宮崎、三重、兵庫、群馬、栃木、岐阜、静岡
              \n \n 海外編 🌍 \n カナダ、オランダ、フィンランド、マルタ、ベトナム"
      }
    else
      {
        type: 'text',
        text: "このアカウントは通知専用ですので、ご質問等はお問い合わせフォームからお願い致します🙇🏼"
      }
    end
  end
end
