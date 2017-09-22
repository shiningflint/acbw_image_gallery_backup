# README

## Setup aws to rails.
1. Add the gem to the gemfile "gem 'aws-sdk'"
2. Create a new file inside the config/initializers, name it 'aws.rb'
3. Create a new aws resource in the controller
4. When testing on windows, there will be an SSL error, uncomment the 'use_bundled_cert' for testing
5. Listing all objects
`@acbw_bucket.objects.limit(100).each do |obj|`
6. Listing all objects in a specific folder
`@acbw_bucket.objects(prefix: 'uploads/').collect(&:key)`
