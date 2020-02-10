@predefined
  Feature: Smoke steps
    @predefined2
    Scenario: Predefined steps for https://www.bing.com/
      Given I open url "https://www.bing.com/"
      Then I should see page title as "Bing"
      Then  element with xpath

