if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start do
    add_filter 'test'
    command_name 'Mintest'
  end
end
require 'bc-bakery'
require 'minitest'
require 'minitest/unit'
require 'minitest/autorun'
require 'minitest/pride'
