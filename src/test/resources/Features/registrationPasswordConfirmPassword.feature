Feature: Registration - Confirm password
  Scenario: Registration - Confirm password-Alphanumeric and special characters
    When I open to login page
    And I type First Name "Ivan"
    And I type Last Name "Ivanov"
    And I type Email "hxoxoe@rtfj.site"
    And I type Group Code "111"
    And I type Password "adc123@!#"
    And I type confirm Password "adc123@!#"
    And I click on Register Me button
    Then Text "You have been Registered." appears
  Scenario: Registration - Confirm password-Empty field
    When I open to login page
    And I type First Name "Ivan"
    And I type Last Name "Ivanov"
    And I type Email "hxoxoe@rtfj.site"
    And I type Group Code "111"
    And I type Password ""
    And I confirm Password "adc123@!#"
    And I click on Register Me button
    Then Text "This field is required" appears
  Scenario: Registration - Confirm password-Minimum characters
    When I open to login page
    And I type First Name "Ivan"
    And I type Last Name "Ivanov"
    And I type Email "hxoxoe@rtfj.site"
    And I type Group Code "111"
    And I type Password "ab12@"
    And I confirm Password "ab12@"
    And I click on Register Me button
    Then Text "You have been Registered." appears
  Scenario: Registration - Confirm password-Minimum characters-1
    When I open to login page
    And I type First Name "Ivan"
    And I type Last Name "Ivanov"
    And I type Email "hxoxoe@rtfj.site"
    And I type Group Code "111"
    And I type Password "ab1@"
    And I confirm Password "ab1@"
    And I click on Register Me button
    Then Text "Too short." appears
  Scenario: Registration - Confirm password-Maximum characters
    When I open to login page
    And I type First Name "Ivan"
    And I type Last Name "Ivanov"
    And I type Email "hxoxoe@rtfj.site"
    And I type Group Code "111"
    And I type Password "ab12@ab12@ab12@ab12@abab12@ab12@"
    And I confirm Password "ab12@ab12@ab12@ab12@abab12@ab12@"
    And I click on Register Me button
    Then Text "You have been Registered." appears
  Scenario: Registration - Confirm password-Maximum characters+1
    When I open to login page
    And I type First Name "Ivan"
    And I type Last Name "Ivanov"
    And I type Email "hxoxoe@rtfj.site"
    And I type Group Code "111"
    And I type Password "ab12@ab12@ab12@ab12@abab12@ab12@!"
    And I confirm Password "ab12@ab12@ab12@ab12@abab12@ab12@!"
    And I click on Register Me button
    Then Text "Too long." appears
  Scenario: Registration - Confirm password-Whitespaces
    When I open to login page
    And I type First Name "Ivan"
    And I type Last Name "Ivanov"
    And I type Email "hxoxoe@rtfj.site"
    And I type Group Code "111"
    And I type Password "ab1 2@!!"
    And I confirm Password "ab1 2@!!"
    And I click on Register Me button
    Then Text "Whitespaces are not allowed" appears
  Scenario: Registration - Confirm password-Combination
    When I open to login page
    And I type First Name "Ivan"
    And I type Last Name "Ivanov"
    And I type Email "hxoxoe@rtfj.site"
    And I type Group Code "111"
    And I type Password "abc123!4"
    And I confirm Password "abc123!"
    And I click on Register Me button
    Then Text "Entered passwords should match" appears