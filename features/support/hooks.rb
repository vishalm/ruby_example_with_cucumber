Before('@webdriver') do
  launch_driver
end


After('@webdriver') do
  quit_driver
end