# -*- coding: utf-8 -*-

class YAPI::GenreCode
  URL = "http://category.search.olp.yahooapis.jp/OpenLocalPlatform/V1/genreCode"

  def self.get_contents(genre_code = nil, number = nil, format = 'json')
    params = { gc: genre_code, results: number, output: format }
    return YAPI.get_contents(URL, params)
  end
end
