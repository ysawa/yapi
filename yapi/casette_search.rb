# -*- coding: utf-8 -*-

class YAPI::CassetteSearch
  URL = "http://cassette.search.olp.yahooapis.jp/OpenLocalPlatform/V1/cassetteSearch"

  def self.get_contents(query = nil, from = nil, number = nil, format = 'json')
    url_params = { start: from, results: number, output: format }.merge(params)
    return YAPI.get_contents(URL, params)
  end
end
