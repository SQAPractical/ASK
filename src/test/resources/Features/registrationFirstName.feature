@fullRegression
Feature: Registration - First Name
  Scenario: Registration - First Name - Latin characters
    When I open "Registration" page
    And I type first name "Lyna"
    And I type last name "Pigotska"
    And I type email "utomation@automation.com"
    And I type group code "t005"
    And I type password "12345"
    And I type to confirm password "12345"
    And I click on Register Me button
    Then text "You have been Registered." appears

  Scenario: Registration - First Name - Field is required
    When I open "Registration" page
    And I type last name "Pigotska"
    And I type email "utomation@automation.com"
    And I type group code "t005"
    And I type password "12345"
    And I type to confirm password "12345"
    And I click on Register Me button
    Then text "This field is required" appears


  Scenario: Registration - First Name - max char (254)
    When I open "Registration" page
    And I type first name "twfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxct"
    And I type last name "Pigotska"
    And I type email "Automation@automation.com"
    And I type group code "t005"
    And I type password "12345"
    And I type to confirm password "12345"
    And I click on Register Me button
    Then text "You have been Registered." appears

  Scenario: Registration - First Name - max+1 char (255)
    When I open "Registration" page
    And I type first name "twjleargsagrwggaersdfzxctwfgearksarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxctwfgeargsarwggaersdfzxct"
    And I type last name "Pigotska"
    And I type email "utomation@automation.com"
    And I type group code "t005"
    And I type password "12345"
    And I type to confirm password "12345"
    And I click on Register Me button
    Then text "Too long. Should be no more than 254 characters" appears

  Scenario: Registration - First Name - min char (1)
    When I open "Registration" page
    And I type first name "L"
    And I type last name "Pigotska"
    And I type email "Automation@automation.com"
    And I type group code "t005"
    And I type password "12345"
    And I type to confirm password "12345"
    And I click on Register Me button
    Then text "You have been Registered." appears

  Scenario: Registration - First Name -  Whitespaces not allowed
    When I open "Registration" page
    And I type first name "L ina"
    And I type last name "Pigotska"
    And I type email "Automation@automation.com"
    And I type group code "t005"
    And I type password "12345"
    And I type to confirm password "12345"
    And I click on Register Me button
    Then text "Whitespaces are not allowed" appears

  Scenario: Registration - First Name -  Leading spaces are not allowed
    When I open "Registration" page
    And I type first name " Lina"
    And I type last name "Pigotska"
    And I type email "Automation@automation.com"
    And I type group code "t005"
    And I type password "12345"
    And I type to confirm password "12345"
    And I click on Register Me button
    Then text "Whitespaces are not allowed" appears

  Scenario: Registration - First Name -  Trailing spaces are not allowed
    When I open "Registration" page
    And I type first name "Lina "
    And I type last name "Pigotska"
    And I type email "Automation@automation.com"
    And I type group code "t005"
    And I type password "12345"
    And I type to confirm password "12345"
    And I click on Register Me button
    Then text "Whitespaces are not allowed" appears