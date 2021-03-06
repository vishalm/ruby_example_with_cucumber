@webdriver

Feature: Search
  As a user
  On dubizzle
  I want to search for apartments

  @webdriver
  Scenario: Navigate to Dubai home page
    Given I am on dubizzle dubai home page
    When I check for content
    Then I the title of home page should be dubizzle Dubai Classifieds
    And I should see place an ad option
    And I should see search form
    And I should see quick links

#  @wip @webdriver @ignore
#  Scenario: Navigate to Egypt home page
#    Given I am on dubizzle egypt home page
#    When I check for content
#    Then I the title of home page should be dubizzle Egypt
#    And I should see place an ad option
#    And I should see search form
#    And I should see quick links


  @webdriver
  Scenario: Search for lowest price appartment have 2 bathrooms
    Given I am on dubizzle dubai home page
    When I search for Property For Rent
    And select Residential Units for Rent
    And select Villa/House for Rent
    And add search in neighborhoods of Dubai Marina area
    And I search
    And I narrow down search to minimum 2 bathroom
    And I search again
    And I sort search results on Price Highest to Lowest
    And I open the last item in the search
    Then I should see last item have minimum 2 bathroom