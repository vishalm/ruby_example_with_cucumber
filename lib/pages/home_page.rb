  module Automation
  class HomePage < PageObject

  element :place_an_ad_option, {id: 'place_an_ad_callout_en'}
  element :search_form, {id: 'search-widget-form'}
  element :quick_links, {id: 'quick-links'}

  def initialize(page_driver)
    @driver = page_driver
  end

  def go_to(local='dubai')
    begin
      driver.navigate.to(get_homepage_url(local))
      raise "Wrong page" if !is_current_page?(local)
      self
    rescue Exception=>e
      raise ("Wrong page #{e}")
    end
  end

  def is_current_page?(local='dubai')
      driver.title.downcase.include? local.downcase
  end

   def get_homepage_url(local='dubai')
     url =''
     case local.downcase
       when "dubai"
        url = 'http://dubai.dubizzle.com'
       when "egypt"
        url = 'https://egypt.dubizzle.com/en/?page=1'
       else
         raise"Wrong Choice of local"
     end
     url
   end

    def get_page_title
      driver.title
    end

    def is_link_present? link
      send(link).displayed?
    end


  def select_drop_down_by_text drop_down ,text
    Selenium::WebDriver::Support::Select.new(driver.find_element(:id => drop_down)).select_by :text, text
  end

  end
end

