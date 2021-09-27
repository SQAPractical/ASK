Feature: User's management - Options in Teacher's account
  Scenario: User's management - Options in Teacher's account - Teacher is able to change their name
    When I go to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Management" menu item
    And I click Teacher tab
    And I find and click "Diana Brown" in the list
    And I click Options button
    And I click Change User's Name button
    And I delete the name
    And I type new name "Diana Potter"
    And I click Change button
    Then text "Diana Potter" appears
    And I click Options button
    And I click Change User's Name button
    And I delete the name
    And I type new name "Diana Brown"
    And I click Change button
    Then text "Diana Brown" appears

  Scenario: User's management - Options in Teacher's account - User's name field is required
    When I go to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Management" menu item
    And I click Teacher tab
    And I find and click "Diana Brown" in the list
    And I click Options button
    And I click Change User's Name button
    And I delete name in New Name field
    And I click Change button
    Then error message "This field is required" appears

  Scenario: User's management - Options in Teacher's account - 1 characters name
    When I go to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Management" menu item
    And I click Teacher tab
    And I find and click "Diana Brown" in the list
    And I click Options button
    And I click Change User's Name button
    And I delete the name
    And I type new name "Q"
    And I click Change button
    Then error message "Should be at least 2 characters name" appears


  Scenario: User's management - reset name back after previous test case with bug
    When I go to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Management" menu item
    And I click Teacher tab
    And I find and click "Q" in the list
    And I click Options button
    And I click Change User's Name button
    And I delete the name
    And I type new name "Diana Brown"
    And I click Change button

  Scenario: User's management - Options in Teacher's account - 100 characters name
    When I go to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Management" menu item
    And I click Teacher tab
    And I find and click "Diana Brown" in the list
    And I click Options button
    And I click Change User's Name button
    And I delete the name
    And I type new name "100CharactersName100CharactersName100CharactersName100CharactersName100CharactersName100CharactersNa"
    And I click Change button
    Then text "100CharactersName100CharactersName100CharactersName100CharactersName100CharactersName100CharactersNa" appears
    And I click Options button
    And I click Change User's Name button
    And I delete the name
    And I type new name "Diana Brown"
    And I click Change button
    Then text "Diana Brown" appears

  Scenario: User's management - Options in Teacher's account - 101 characters name
    When I go to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Management" menu item
    And I click Teacher tab
    And I find and click "Diana Brown" in the list
    And I click Options button
    And I click Change User's Name button
    And I delete the name
    And I type new name "101CharactersName101CharactersName101CharactersName101CharactersName101CharactersName101CharactersNam"
    And I click Change button
    Then error message "Should be no more than 100 character" appears

  Scenario: User's management - Options in Teacher's account - Tailing space in name
    When I go to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Management" menu item
    And I click Teacher tab
    And I find and click "Daria T" in the list
    And I click Options button
    And I click Change User's Name button
    And I delete the name
    And I type new name "Daria T "
    And I click Change button
    Then error message "Trailing and leading spaces are not allowed" appears

  Scenario: User's management - Options in Teacher's account - Leading space in name
    When I go to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Management" menu item
    And I click Teacher tab
    And I find and click "Daria T" in the list
    And I click Options button
    And I click Change User's Name button
    And I delete the name
    And I type new name " Daria T"
    And I click Change button
    Then error message "Trailing and leading spaces are not allowed" appears

