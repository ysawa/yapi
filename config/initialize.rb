# -*- coding: utf-8 -*-

module YAPI
  CONFIGURE = ::YAML.load_file(File.dirname(__FILE__) + "/yapi.yml")

  def app_id
    CONFIGURE['app']['id']
  end

  module_function :app_id
end
