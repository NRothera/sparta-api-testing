require 'httparty'
require 'json'


class SinglePostcodeService

  attr_accessor :single_postcode_data


  def initialize
    @single_postcode_data = nil
  end

  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)

    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)

  end

  def print_results
    @single_postcode_data
  end

  def get_status_code_from_body_response
    @single_postcode_data['status']
  end

  def get_results_hash
    @single_postcode_data['result']
  end


  def get_eastings
    get_results_hash['eastings']
  end

  def get_northings
    get_results_hash['northings']
  end

  def get_nhs
    get_results_hash['nhs_ha']
  end

  def get_country
    get_results_hash['country']
  end

  def get_codes
    get_results_hash['codes']
  end

  def get_european_electoral_region
    get_results_hash['european_electoral_region']
  end

  def get_parliamentary_constituency
    get_results_hash['parliamentary_constituency']
  end

  def get_region
    get_results_hash['region']
  end

  def get_latitude
    get_results_hash['latitude']
  end

  def get_longitude
    get_results_hash['longitude']
  end

  def get_parish
    get_results_hash['parish']
  end

  def get_nuts
    get_results_hash['nuts']
  end

  def get_ccg
    get_results_hash['ccg']
  end

  def get_quality
    get_results_hash['quality']
  end

  def get_primary_care_trust
    get_results_hash['primary_care_trust']
  end

  def get_lsoa
    get_results_hash['lsoa']
  end

  def get_incode
    get_results_hash['incode']
  end

  def get_outcode
    get_results_hash['outcode']
  end

  def get_admin_ward
    get_results_hash['admin_ward']
  end

  def get_postcode
    get_results_hash['postcode']
  end


end
