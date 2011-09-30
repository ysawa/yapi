# -*- coding: utf-8 -*-

class YAPI::LocalSearch
  URL = "http://search.olp.yahooapis.jp/OpenLocalPlatform/V1/localSearch"

  def self.get_contents(params = {}, from = nil, number = nil, format = 'json')
    url_params = { start: from, results: number, output: format }.merge(params)
    return YAPI.get_contents(URL, url_params)
  end
end
