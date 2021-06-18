Feature: Email
  Scenario: Registration - Email - Alphanumeric characters and @ special char
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "test123@gmail.com"
    And I type group code "12345"
    And I type password "Dom123"
    And I confirm password "Dom123"
    And I click on register me button
    Then Text "You have been Registered" appears

    Scenario: Registration - Email - Email field required, can’t be empty
      When I navigate to registration page
      And I type first name "Ivan"
      And I type last name "Test"
      And I type email ""
      And I type group code "12345"
      And I type password "Dom123"
      And I confirm password "Dom123"
      And I click on register me button
      Then Text "This field is required" appears

      Scenario: Registration - Email - (65@64.64)Local part with 64 characters on the left of an @ domain on the right with 63 characters followed by (.) with 63 characters in last part of domain. max+1
        When I navigate to registration page
        And I type first name "Ivan"
        And I type last name "Test"
        And I type email "12345678901234567890ConfirmPasswordDom123ConfirmPasswordDomfff065@12345678901234567890ConfirmPasswordDom123ConfirmPasswordDomfff64.12345678901234567890ConfirmPasswordDom123ConfirmPasswordDomfff64"
        And I type group code "12345"
        Then Text "Should be a valid email address" appears



        Scenario: Registration - Email -Whitespaces are not allowed
          When I navigate to registration page
          And I type first name "Ivan"
          And I type last name "Test"
          And I type email "go max@gmail.com"
          And I type group code "12345"
          Then Text "Should be a valid email address" appears




