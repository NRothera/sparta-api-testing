require 'httparty'
require 'json'


class MultiplePostcodesService

  attr_accessor :multiple_postcode_data

  def initialize
    @multiple_postcode_data = nil
  end

  include HTTParty

  base_uri 'https://api.postcodes.io'


  def get_multiple_postcodes(postcodes_array)
    @multiple_postcode_data = JSON.parse(self.class.post("/postcodes", body: {"postcodes" => postcodes_array}).body)
  end

  def get_status
    @multiple_postcode_data['status']
  end

  def get_results_array
    @multiple_postcode_data['result']
  end

  def get_multiple_postcodes_results_hash
    get_results_array[0]['result']
  end

  def get_latitude
    get_multiple_postcodes_results_hash['latitude']
  end

  def get_longitude
    get_multiple_postcodes_results_hash['longitude']
  end

  def get_eastings
    get_multiple_postcodes_results_hash['eastings']
  end

  def get_northings
    get_multiple_postcodes_results_hash['northings']
  end

  def get_nhs
    get_multiple_postcodes_results_hash['nhs_ha']
  end

  def get_country
    get_multiple_postcodes_results_hash['country']
  end

  def get_codes
    get_multiple_postcodes_results_hash['codes']
  end

  def get_european_electoral_region
    get_multiple_postcodes_results_hash['european_electoral_region']
  end

  def get_parliamentary_constituency
    get_multiple_postcodes_results_hash['parliamentary_constituency']
  end

  def get_region
    get_multiple_postcodes_results_hash['region']
  end

  def get_parish
    get_multiple_postcodes_results_hash['parish']
  end

  def get_nuts
    get_multiple_postcodes_results_hash['nuts']
  end

  def get_ccg
    get_multiple_postcodes_results_hash['ccg']
  end

  def get_quality
    get_multiple_postcodes_results_hash['quality']
  end

  def get_primary_care_trust
    get_multiple_postcodes_results_hash['primary_care_trust']
  end

  def get_lsoa
    get_multiple_postcodes_results_hash['lsoa']
  end

  def get_incode
    get_multiple_postcodes_results_hash['incode']
  end

  def get_incode_length
    get_incode.length
  end

  def get_outcode
    get_multiple_postcodes_results_hash['outcode']
  end

  def get_outcode_length
    get_outcode.length
  end

  def get_admin_ward
    get_multiple_postcodes_results_hash['admin_ward']
  end

  def get_postcode_length
    get_multiple_postcodes_results_hash['postcode'].gsub(' ','').length
  end



end
