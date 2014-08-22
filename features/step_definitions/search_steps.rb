When(/^I search for (Property For Rent)$/) do |search_type|
  @homepage = SidebarSearchPage.new(driver)
  @homepage.select_filter_drop_downs("filter_type", search_type)
end

When(/^select (Residential Units for Rent)$/) do |category|
  @homepage.select_filter_drop_downs("filter_category", category)
end

When(/^select (Villa\/House for Rent)$/) do |sub_category|
  @homepage.select_filter_drop_downs("filter_sub_category", sub_category)
end
When(/^add search in neighborhoods of (Dubai Marina) area$/) do |sub_area|
  @homepage.add_neighborhoods sub_area
end

When(/^I search$/) do
  @homepage.first_time_search
end
When(/^I narrow down search to minimum (\d+) bathroom$/) do |bath_count|
  @homepage.select_filter_drop_downs("bathroom minimum", bath_count)
end
When(/^I search again$/) do
  @homepage.second_search
end

When(/^I sort search results on (Price Highest to Lowest)$/) do |result_sorting|
  @homepage.select_filter_drop_downs("item sorting", result_sorting)
end
When(/^I open the last item in the search$/) do
  @homepage.navigate_last_page
  @homepage.open_last_item
end

Then(/^I should see last item have minimum (\d+) bathroom$/) do |expected_count|
  actual_count = @homepage.get_bathroom_count.to_i
  (expected_count.to_i <= actual_count).should == true
end
