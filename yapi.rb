# -*- coding: utf-8 -*-

require 'open-uri'
require 'yaml'
require 'json/pure'
require './config/initialize'

module YAPI
  autoload :GenreCode, File.dirname(__FILE__) + '/yapi/genre_code'

  def build_url(url, params = {})
    result = url
    result += '?'
    pairs = ["appid=#{app_id}"]
    params.each do |key, value|
      pairs << "#{key}=#{value}" unless value.nil?
    end
    result += pairs.join('&')
  end

  def get_contents(url, params)
    url_with_params = YAPI.build_url(url, params)
    begin
      result = ""
      open(url_with_params) do |f|
        f.each_line { |line| result += line }
      end
      return JSON.parse(result)
    rescue => e
      p e
      return nil
    end
  end

  module_function :build_url, :get_contents
end
