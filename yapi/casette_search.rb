# -*- coding: utf-8 -*-

class YAPI::CassetteSearch
  URL = "http://cassette.search.olp.yahooapis.jp/OpenLocalPlatform/V1/cassetteSearch"

  def self.get_contents(query = nil, casette_id = nil, category = nil, sort = nil, from = nil, number = nil, format = 'json')
    params = { query: query, cid: casette_id, category: category, sort: sort, start: from, results: number, output: format }
    return YAPI.get_contents(URL, params)
  end
end
