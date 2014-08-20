require 'rspec'
require 'selenium-webdriver'
require 'cucumber'
require 'rake'
require 'simplecov'
#require 'spec/spec_helper'


include RSpec::Matchers
require 'selenium_fury'
include SeleniumFury::SeleniumWebDriver::CreateSeleniumWebDriver

require File.dirname(__FILE__) + "/../lib/driver_config/driver_setup"
require File.dirname(__FILE__) + "/../lib/pages/simple_calculator"
require File.dirname(__FILE__) + "/../lib/pages/home_page"
require File.dirname(__FILE__) + "/../lib/pages/sidebar_search_page"
include Automation

