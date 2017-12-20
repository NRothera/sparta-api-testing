require 'httparty'
require 'json'


class Postcodesio


  def initialize


  end

  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)

    JSON.parse(self.class.get("/postcodes/#{postcode}").body)

  end


  def get_multiple_postcodes(postcodes_array)

    JSON.parse(self.class.post("/postcodes", body: {"postcodes" => postcodes_array}).body)

  end

  def access_first_hash_array(get_multiple_postcodes)
    get_multiple_postcodes['result'][1]['result']
  end

  def access_results_single_postcode(get_single_postcode)
    get_single_postcode['result']
  end

end

x = Postcodesio.new
