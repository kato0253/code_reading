require "slack-notify"
require 'clockwork'
require 'active_support/time'

module Clockwork
  # ここに、「どれくらいの周期で処理をするのか？」というClockworkのメソッドを記述します
  # ここに、slackで一定時間ごとに送りたい処理と設定を書き込みます
  every(3.minutes, 'test') do
  sample = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK_URL'])
  sample.notify('Hi')
  end
end

sample = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK_URL'])
sample.notify("Hello")


# notifier = Slack::Notifier.new(
#   env['WEBHOOK_URL'],
#   channel: '#' + env['CHANNEL']
# )
# notifier.ping '通知するテキスト'

# require 'net/http'
# require 'uri'
# require 'json'
# require 'dotenv'
# require 'clockwork'
# include Clockwork
# require 'active_support/time'

# module Clockwork
# every(3.minutes, "test") do
# sample = SlackNotify::Client.new(webhook_url: ENV['URL'])
# sample.notify(“Hello”)
# end
# end

# class SlackWraper
#   def self.post(text)
#     data = { "text" => text }
#     request_url = ENV['WEBHOOK_URL']
#     uri = URI.parse(request_url)
#     Net::HTTP.post_form(uri, {"payload" => data.to_json})
#   end
# end
#
# Dotenv.load
# SlackWraper.post("テスト")
