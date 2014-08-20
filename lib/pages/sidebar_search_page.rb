module Automation

  class SidebarSearchPage < HomePage
    element :neighborhoods, {id: 'as_values_id_places__id__in'}
    element :primary_search, {id: 'search-button'}
    element_list :searched_item_list, {css: 'div.listing-item span.title'}

    def initialize(driver)
      @driver = driver
    end

    def is_current_page?
      search_form.displayed?
    end

    #def search_property_for_rent value
    #
    #end
    # @param [Object] search_filter

    # @param [Object] value
    def select_filter_drop_downs search_filter , value
       case search_filter
         when 'filter_type'
           select_from_drop_down 's:swfield', value
         when 'filter_category'
           select_from_drop_down 'rc:swfield', value
         when 'filter_sub_category'
           select_from_drop_down 'c1:swfield', value
         when 'bathroom minimum'
           select_from_drop_down 'bathrooms__gte:swfield', value
         when 'item sorting'
           select_from_drop_down 'id_sort_by', value
       end
    end

    def select_from_drop_down id, value
      list = driver.find_element(:id, id).find_elements(:css, 'option')
      list.each do |item|
         if item.text == value
            item.click
         end
      end
    end

    def add_neighborhoods value
      neighborhoods.clear
      neighborhoods.send_keys value
      wait_for_element [:css, "em"]
      driver.find_element(:css, "em").click
      wait_for_element [:css, "a.as-close"]
    end

    def first_time_search
      primary_search.click
    end

    def second_search
      driver.find_element(:id, "search-button-mini").click
    end

    def navigate_last_page
      driver.find_element(:css, "#property-listings-footer > div.pagingarea > div.actions > span.paging_forward > #last_page").click
    end

    def open_last_item
      searched_item_list[searched_item_list.length-1].click
    end

    def get_bathroom_count
      driver.find_element(:xpath, "//div[@id='listing-details-list']/ul/li[3]/strong").text
    end

   end
end

