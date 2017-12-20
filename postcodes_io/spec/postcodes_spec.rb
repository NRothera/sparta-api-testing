require 'spec_helper'

describe "postcodes" do

  before(:all) do
    @code = Postcodesio.new
    @postcodes_array = ["pe84ej", "sw1v4qh"]
    @postcode = 'sw1v4qh'
    @first_array = @code.access_first_hash_array(@code.get_multiple_postcodes(@postcodes_array))
    @results_single_postcode = @code.access_results_single_postcode(@code.get_single_postcode(@postcode))

  end

  it 'should be a hash' do
    expect(@code.get_multiple_postcodes(@postcodes_array)).to be_kind_of(Hash)
  end

  it "status should be 200" do
    expect(@code.get_multiple_postcodes(@postcodes_array)['status']).to eql(200)
  end

  it 'should have latitude key value be float' do
    expect(@first_array['latitude']).to be_kind_of(Float)
  end

  it 'should have longitude key value be float' do
    expect(@first_array['longitude']).to be_kind_of(Float)
  end

  it 'should have array of postcodes' do
    expect(@code.get_multiple_postcodes(@postcodes_array)['result']).to be_kind_of(Array)
  end

  it 'should have country key value be England, Wales, Scotland or Ireland' do
    country_array = ['England', "Wales", "Scotland", "Ireland"]
    expect(country_array).to include(@first_array['country'])
  end

  it 'should be a hash' do
    expect(@code.get_single_postcode(@postcode)).to be_kind_of(Hash)
  end

  it 'should have eastings key value be integer' do
    expect(@first_array['eastings']).to be_kind_of(Integer)
  end

  it 'should have northings key value be integer' do
    expect(@first_array['northings']).to be_kind_of(Integer)
  end

  it 'should have nhs_ha key value to be string' do
    expect(@first_array['nhs_ha']).to be_kind_of(String)
  end

  it 'should have country key value to be string' do
    expect(@first_array['country']).to be_kind_of(String)
  end

  it 'should have codes values be strings' do
    @first_array['codes'].each do |key,value|
      expect(value).to be_kind_of(String)
    end
  end

  it 'should have a length of 23' do
    expect(@first_array.length).to eql(23)
  end

  it 'should have european_electoral_region key value to be string' do
    expect(@first_array['european_electoral_region']).to be_kind_of(String)
  end

  it "should have parliamentary_constituency key value to be string" do
    expect(@first_array['parliamentary_constituency']).to be_kind_of(String)
  end

  it 'should have region value to be string' do
    expect(@first_array['region']).to be_kind_of(String)
  end

  it 'should have key parish value to be string' do
    expect(@first_array['parish']).to be_kind_of(String)
  end

  it 'should expect key nuts value to be string' do
    expect(@first_array['nuts']).to be_kind_of(String)
  end

  it 'should expect key ccg value to be string' do
    expect(@first_array['ccg']).to be_kind_of(String)
  end

  it 'should expect quality to equal 1' do
    expect(@first_array['quality']).to eql(1)
  end

  it 'should expect primary_care_trust value to be string' do
    expect(@first_array['primary_care_trust']).to be_kind_of(String)
  end

  it 'should expect lsoa to be string' do
    expect(@first_array['lsoa']).to be_kind_of(String)
  end

  it 'should expect incode key to be string' do
    expect(@first_array['incode']).to be_kind_of(String)
  end

  it 'should expect outcode key to be string' do
    expect(@first_array['outcode']).to be_kind_of(String)
  end

  it 'should expect admin_ward to be string' do
    expect(@first_array['admin_ward']).to be_kind_of(String)
  end

  it 'should have latitude key value be float' do
    expect(@results_single_postcode['latitude']).to be_kind_of(Float)
  end

  it 'should have longitude key value be float' do
    expect(@results_single_postcode['longitude']).to be_kind_of(Float)
  end

  it 'should have country key value be England, Wales, Scotland or Ireland' do
    country_array = ['England', "Wales", "Scotland", "Ireland"]
    expect(country_array).to include(@results_single_postcode['country'])
  end

  it 'should have eastings key value be integer' do
    expect(@results_single_postcode['eastings']).to be_kind_of(Integer)
  end

  it 'should have northings key value be integer' do
    expect(@results_single_postcode['northings']).to be_kind_of(Integer)
  end

  it 'should have nhs_ha key value to be string' do
    expect(@results_single_postcode['nhs_ha']).to be_kind_of(String)
  end

  it 'should have country key value to be string' do
    expect(@results_single_postcode['country']).to be_kind_of(String)
  end

  it 'should have european_electoral_region key value to be string' do
    expect(@results_single_postcode['european_electoral_region']).to be_kind_of(String)
  end

  it "should have parliamentary_constituency key value to be string" do
    expect(@results_single_postcode['parliamentary_constituency']).to be_kind_of(String)
  end

  it 'should have a length of 23' do
    expect(@results_single_postcode.length).to eql(23)
  end


  it 'should have codes values be strings' do
    @results_single_postcode['codes'].each do |key,value|
      expect(value).to be_kind_of(String)
    end
  end

  it 'should have region value to be string' do
    expect(@results_single_postcode['region']).to be_kind_of(String)
  end

  it 'should have key parish value to be string' do
    expect(@results_single_postcode['parish']).to be_kind_of(String)
  end

  it 'should expect key nuts value to be string' do
    expect(@results_single_postcode['nuts']).to be_kind_of(String)
  end

  it 'should expect key ccg value to be string' do
    expect(@results_single_postcode['ccg']).to be_kind_of(String)
  end

  it 'should expect quality to equal 1' do
    expect(@results_single_postcode['quality']).to eql(1)
  end

  it 'should expect primary_care_trust value to be string' do
    expect(@results_single_postcode['primary_care_trust']).to be_kind_of(String)
  end

  it 'should expect lsoa to be string' do
    expect(@results_single_postcode['lsoa']).to be_kind_of(String)
  end

  it 'should expect incode key to be string' do
    expect(@results_single_postcode['incode']).to be_kind_of(String)
  end

  it 'should expect outcode key to be string' do
    expect(@results_single_postcode['outcode']).to be_kind_of(String)
  end

  it 'should expect admin_ward to be string' do
    expect(@results_single_postcode['admin_ward']).to be_kind_of(String)
  end

  it "postcode length should be between 7 and 9" do
    expect(@results_single_postcode['postcode'].length).to be_between(5,8)
  end


end
