@Regression
Feature: User-Last Name
  @Acceptance
  Scenario: Allowable characters: Alphanumeric $ Special characters
    Given I navigate to "Registration" page
    When I type first name "Oleks"
    And I type last name "Blinov100%"
    And I type email "OOO@ooo.com"
    And I type group code "1234"
    And I type password "12345"
    And I type confirm password "12345"
    Then I click Register me button
    When I get confirm message contains "You have been Registered."

  @Acceptance
    Scenario: Last Name field required, can’t be empty
      Given I navigate to "Registration" page
      When I type first name "Oleks"
      And I type last name ""
      And I type email "OOO@ooo.com"
      And I type group code "1234"
      And I type password "12345"
      And I type confirm password "12345"
      Then I click Register me button
      Then I get confirm message contains "This field is required"
    

  @EndToEnd @Sanity
    Scenario: White spaces are not allowed
      Given I navigate to "Registration" page
      When I type first name "Oleks"
      And I type last name " "
      And I type email "OOO@ooo.com"
      And I type group code "1234"
      And I type password "12345"
      And I type confirm password "12345"
      Then I click Register me button
      Then I get confirm message contains "Whitespaces are not allowed"

  @EndToEnd @Sanity
    Scenario: Max 254 characters (When the First name 1 char)
      Given I navigate to "Registration" page
      When I type first name "O"
      And I type last name "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      And I type email "OOO@ooo.com"
      And I type group code "1234"
      And I type password "12345"
      And I type confirm password "12345"
      Then I click Register me button
      Then I get confirm message contains "You have been Registered."


  @EndToEnd @Sanity
    Scenario: 255 characters (When the First name 1 char)
      Given I navigate to "Registration" page
      When I type first name "O"
      And I type last name "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      And I type email "OOO@ooo.com"
      And I type group code "1234"
      And I type password "12345"
      And I type confirm password "12345"
      Then I click Register me button
      Then I get confirm message contains "This field are not allowed more than 254 characters"


  @EndToEnd @Sanity
    Scenario: Min 1 characters
      Given I navigate to "Registration" page
      When I type first name "Oleks"
      And I type last name "B"
      And I type email "OOO@ooo.com"
      And I type group code "1234"
      And I type password "12345"
      And I type confirm password "12345"
      Then I click Register me button
      Then I get confirm message contains "You have been Registered."





