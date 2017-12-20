# API consumption and testing

Learning how to consume an API and format the data to be useable. Using JSON and HTTParty in order to access data and turn it into a readable format. Also made code reusable, readable and maintainable using the Service Object Model.

# HTTParty
https://github.com/jnunemaker/httparty

# Run test

For Postcodes, cd into postcodes_io, cd into SOMRefactor. In the terminal, run rspec to see all tests run.
For json_parsing_tests which tests currency exhange rate data, cd into sparta-json-parsing, cd into json_parsing_tests and run rspec in your terminal

#Adding tests

For postcodes go to SOMRefactor, spec and select either multiple_postcodes_spec.rb or single_postcode_spec.rb

Here you can add code in this format
```
it 'should come out as something' do
  expect(class method).to be(argument)
end
```
go to lib, services for list of methods and what they do

For json_parsing_tests go to spec and select json_class_parse_spec.rb. Here you can add tests in the same format
```
it 'should come out as something' do
  expect(class method).to be(argument)
end
```
go to json_class_parse.rb for methods and what they do
