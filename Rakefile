require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

namespace :features do
  Cucumber::Rake::Task.new(:webdriver) do |t|
    t.profile = 'webdriver'
  end

  Cucumber::Rake::Task.new(:non_webdriver) do |t|
    t.profile = 'non_webdriver'
  end

  task :ci => [:webdriver, :non_webdriver]
end

task :default => 'features:webdriver'