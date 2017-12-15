require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new.single_postcode_service
      @postcodesio.get_single_postcode('se96rj')
    end

    it 'should respond with a status message of 200' do
      expect(@postcodesio.get_status_code_from_body_response).to eq 200
    end

    it 'should respond as a hash of results' do
      expect(@postcodesio.get_results_hash).to be_kind_of(Hash)
    end


      it 'should have latitude key value be float' do
        expect(@postcodesio.get_latitude).to be_kind_of(Float)
      end

      it 'should have longitude key value be float' do
        expect(@postcodesio.get_longitude).to be_kind_of(Float)
      end

      it 'should have country key value be England, Wales, Scotland or Ireland' do
        country_array = ['England', "Wales", "Scotland", "Ireland"]
        expect(country_array).to include(@postcodesio.get_country)
      end

      it 'should have eastings key value be integer' do
        expect(@postcodesio.get_eastings).to be_kind_of(Integer)
      end

      it 'should have northings key value be integer' do
        expect(@postcodesio.get_northings).to be_kind_of(Integer)
      end

      it 'should have nhs_ha key value to be string' do
        expect(@postcodesio.get_nhs).to be_kind_of(String)
      end

      it 'should have country key value to be string' do
        expect(@postcodesio.get_country).to be_kind_of(String)
      end

      it 'should have european_electoral_region key value to be string' do
        expect(@postcodesio.get_european_electoral_region).to be_kind_of(String)
      end

      it "should have parliamentary_constituency key value to be string" do
        expect(@postcodesio.get_parliamentary_constituency).to be_kind_of(String)
      end

      it 'should have a length of 23' do
        expect(@postcodesio.get_results_hash.length).to eql(23)
      end


      it 'should have codes values be strings' do
        @postcodesio.get_codes.each do |key,value|
          expect(value).to be_kind_of(String)
        end
      end

      it 'should have region value to be string' do
        expect(@postcodesio.get_region).to be_kind_of(String)
      end

      it 'should have key parish value to be string' do
        expect(@postcodesio.get_parish).to be_kind_of(String)
      end

      it 'should expect key nuts value to be string' do
        expect(@postcodesio.get_nuts).to be_kind_of(String)
      end

      it 'should expect key ccg value to be string' do
        expect(@postcodesio.get_ccg).to be_kind_of(String)
      end

      it 'should expect quality to equal 1' do
        expect(@postcodesio.get_quality).to eql(1)
      end

      it 'should expect primary_care_trust value to be string' do
        expect(@postcodesio.get_primary_care_trust).to be_kind_of(String)
      end

      it 'should expect lsoa to be string' do
        expect(@postcodesio.get_lsoa).to be_kind_of(String)
      end

      it 'should expect incode key to be string' do
        expect(@postcodesio.get_incode).to be_kind_of(String)
      end

      it 'should expect outcode key to be string' do
        expect(@postcodesio.get_outcode).to be_kind_of(String)
      end

      it 'should expect admin_ward to be string' do
        expect(@postcodesio.get_admin_ward).to be_kind_of(String)
      end

      it "postcode length should be between 5,8" do
        expect(@postcodesio.get_postcode.length).to be_between(5,8)
      end



  end
end
