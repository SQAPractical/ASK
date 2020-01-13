Feature: User - Email
  Scenario: Allowable characters: Alphanumeric $ Special characters
    Given I navigate to "Registration" page
    When I type first name "Nazik"
    And I type last name "Baruch"
    And I type email "qwerty123!#$@gmail.com"
    And I type group code "696"
    And I type password "popop"
    And I type confirm password "popop"
    And I click Register me button
    Then message "You have been Registered." appears

  Scenario: Email field required, can’t be empty
    Given I navigate to "Registration" page
    When I type first name "Nazik"
    And I type last name "Baruch"
    And I type email "778777@gmail.com"
    And I type group code "696"
    And I type password "popop"
    And I type confirm password "popop"
    And I click Register me button
    Then message "You have been Registered." appears

  Scenario: Local port with 64 characters on the left of an @ domain on the right with 63 characters followed by (.)  with 63 characters in last part of domain
    Given I navigate to "Registration" page
    When I type first name "Nazik"
    And I type last name "Baruch"
    And I type email "a111111111111111111111111111111111111111111111111111111111111111@111111111111111111111111111111111111111111111111111111111111111.111111111111111111111111111111111111111111111111111111111111111"
    And I type group code "696"
    And I type password "popop"
    And I type confirm password "popop"
    And I click Register me button
    Then message "You have been Registered." appears

  Scenario: White spaces are not allowed
    Given I navigate to "Registration" page
    When I type first name "Nazik"
    And I type last name "Baruch"
    And I type email " "
    And I type group code "696"
    And I type password "popop"
    And I type confirm password "popop"
    And I click Register me button
    Then message "Should be a valid email address" appears

  Scenario: Case insensitive
    Given I navigate to "Registration" page
    When I type first name "Nazik"
    And I type last name "Baruch"
    And I type email "TyT@gmail.com"
    And I type group code "696"
    And I type password "popop"
    And I type confirm password "popop"
    And I click Register me button
    Then message "You have been Registered." appears