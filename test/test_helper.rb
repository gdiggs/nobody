require 'bundler'
Bundler.require

require 'minitest/autorun'
require 'turn'
require_relative './minitest_helper'
require File.expand_path('../../lib/nobody.rb', __FILE__)
