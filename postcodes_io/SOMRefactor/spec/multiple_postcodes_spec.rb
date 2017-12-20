require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a multiple postcodes works correctly' do
    before(:all) do
      @postcodesio2 = Postcodesio.new.multiple_postcode_service
      @postcodesio2.get_multiple_postcodes(['sw1v4qh', 'pe84ej'])
    end

    it 'should be a hash' do
      expect(@postcodesio2.get_multiple_postcodes_results_hash).to be_kind_of(Hash)
    end

    it "status should be 200" do
      expect(@postcodesio2.get_status).to eql(200)
    end
    #
    it 'should have latitude key value be float' do
      expect(@postcodesio2.get_latitude).to be_kind_of(Float)
    end
    #
    it 'should have longitude key value be float' do
      expect(@postcodesio2.get_longitude).to be_kind_of(Float)
    end

    it 'should have array of postcodes' do
      expect(@postcodesio2.get_results_array).to be_kind_of(Array)
    end

    it 'should have country key value be England, Wales, Scotland or Ireland' do
      country_array = ['England', "Wales", "Scotland", "Ireland"]
      expect(country_array).to include(@postcodesio2.get_multiple_postcodes_results_hash['country'])
    end
    #
    it 'should be a hash' do
      expect(@postcodesio2.get_multiple_postcodes_results_hash).to be_kind_of(Hash)
    end

    it 'should have eastings key value be integer' do
      expect(@postcodesio2.get_eastings).to be_kind_of(Integer)
    end

    it 'should have northings key value be integer' do
      expect(@postcodesio2.get_northings).to be_kind_of(Integer)
    end

    it 'should have nhs_ha key value to be string' do
      expect(@postcodesio2.get_nhs).to be_kind_of(String)
    end

    it 'should have country key value to be string' do
      expect(@postcodesio2.get_country).to be_kind_of(String)
    end

    it 'should have codes values be strings' do
      @postcodesio2.get_codes.each do |key,value|
        expect(value).to be_kind_of(String)
      end
    end

    it 'should have a length of 23' do
      expect(@postcodesio2.get_multiple_postcodes_results_hash.length).to eql(23)
    end

    it 'should have european_electoral_region key value to be string' do
      expect(@postcodesio2.get_european_electoral_region).to be_kind_of(String)
    end

    it "should have parliamentary_constituency key value to be string" do
      expect(@postcodesio2.get_parliamentary_constituency).to be_kind_of(String)
    end

    it 'should have region value to be string' do
      expect(@postcodesio2.get_region).to be_kind_of(String)
    end

    it 'should have key parish value to be string' do
      expect(@postcodesio2.get_parish).to be_kind_of(String)
    end

    it 'should expect key nuts value to be string' do
      expect(@postcodesio2.get_nuts).to be_kind_of(String)
    end

    it 'should expect key ccg value to be string' do
      expect(@postcodesio2.get_ccg).to be_kind_of(String)
    end

    it 'should expect quality to equal 1' do
      expect(@postcodesio2.get_quality).to eql(1)
    end

    it 'should expect primary_care_trust value to be string' do
      expect(@postcodesio2.get_primary_care_trust).to be_kind_of(String)
    end

    it 'should expect lsoa to be string' do
      expect(@postcodesio2.get_lsoa).to be_kind_of(String)
    end

    it 'should expect incode key to be string' do
      expect(@postcodesio2.get_incode).to be_kind_of(String)
    end

    it 'should expect outcode key to be string' do
      expect(@postcodesio2.get_outcode).to be_kind_of(String)
    end

    it 'should return outcode length between 3-4' do
      expect(@postcodesio2.get_outcode_length).to be_between(3,4)
    end

    it 'should expect admin_ward to be string' do
      expect(@postcodesio2.get_admin_ward).to be_kind_of(String)
    end

    it 'should have a lnegth between between 5-7' do
      expect(@postcodesio2.get_postcode_length).to be_between(5,7)
    end

    it "should return incode length of 3" do
      expect(@postcodesio2.get_incode_length).to eql(3)
    end


  end
end
