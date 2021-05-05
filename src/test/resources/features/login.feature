Feature: Log in
  Scenario: Log in - Valid email / valid password
    When I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    Then Text "New Jon Snow" appears
    
    

  