require "bundler"
Bundler.require

require "minitest/mock"
require "minitest/autorun"
require "./test/mocha-color/test_cardinality"
require "./test/mocha-color/test_expectation"
require "./test/mocha-color/test_mockery"
require "./test/mocha-color/test_unexpected_invocation"
