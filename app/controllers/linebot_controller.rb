class LinebotController < ApplicationController
  require 'line/bot'

  protect_from_forgery expect: :callback

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
      message = {
        type: 'text',
        text: event.message['text']
      }
      client.reply_message(event['replyToken'], message)
    end
  end



end
