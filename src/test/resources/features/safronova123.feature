@sample
  Feature: Predefined steps for Sample page

  @sample1
  Scenario: Validate responsive UI behavior
    Given I open url "http://skryabin.com/webdriver/html/sample.html"
    And I resize window to 1280 and 1024
    Then element with xpath "//*[@id='location']" should be displayed
    When I resize window to 400 and 1024
    Then element with xpath "//*[@id='location']" should not be displayed