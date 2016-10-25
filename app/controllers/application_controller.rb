class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def convert_date(str)
    date_parts = str.split(' ')
    date = date_parts[0].split('/')
    time = date_parts[1].split(':')
    time[0] = (Integer(time[0]) + 12).to_s if date_parts.last.downcase == 'pm'
    Time.parse("#{date.last}-#{date.first}-#{date[1]} #{time.join(':')}")
  end
end
