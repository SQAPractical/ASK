Feature: 123
  Scenario: Validate something

  @sample
  Feature: Predefined steps for Sample page
  @sample1
  Scenario: Responsive UI behavior for Sample
    Given I open url "https://skryabin.com/webdriver/html/sample.html"
    When I resize window to 1280 and 1024
    Then element with xpath "//b[@id='location']" should be displayed
    And I wait for 5 sec
    When I resize window to 400 and 1024
    Then element with xpath "//b[@id='location']" should not be displayed
    And I wait for 5 sec
