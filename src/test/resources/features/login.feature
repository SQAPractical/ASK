Feature: Login

  Scenario: valid email and valid password
    Given I navigate to "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then text "Elena Talley" appears


  Scenario: invalid email and valid password
    Given I navigate to "login" page
    And I type email "qaqq.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then text "Authentication  failed. User not found or password does not match" appears