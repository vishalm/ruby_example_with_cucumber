#module Automation
#  def select_dropdown_by_value value
#  end
#
#  def select_drop_down_by_text drop_down ,text
#    Selenium::WebDriver::Support::Select.new(driver.find_element(:id => drop_down)).select_by :text, text
#  end
#
#  def wait_for_ajax()
#  end
#
#  def wait_for_text text
#    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
#    wait.until { driver.text.include.start_with? text }
#  end
#
#  def wait_for_element text
#    !60.times{ break if (element_present?(:id, text) rescue false); sleep 1 }
#  end
#
#end