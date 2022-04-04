Feature: Registration - Email
  @smoke
  Scenario: Registration - Email - Alphanumeric and special characters
    Given I navigate to registration page
    And I type first name "abc"
    And I type last name "abc"
    And I type email "test123@gmail.com"
    And I type group code "abc"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "You have been Registered." appears

    Scenario: Registration - Email - Email field required, can’t be empty
      Given I navigate to registration page
      And I type first name "abc"
      And I type last name "abc"
      And I type email ""
      And I type group code "abc"
      And I type password "12345"
      And I type confirm password "12345"
      And I click on Register Me button
      Then Message "This field is required" appears

    Scenario: Registration - Email - Whitespaces are not allowed
      Given I navigate to registration page
      And I type first name "abc"
      And I type last name "abc"
      And I type email " test123@gmail.com"
      And I type group code "abc"
      And I type password "12345"
      And I type confirm password "12345"
      And I click on Register Me button
      Then Message "Should be a valid email address" appears

    Scenario: Registration - Email - Whitespaces are not allowed in the middle
      Given I navigate to registration page
      And I type first name "abc"
      And I type last name "abc"
      And I type email "test123 @gmail.com"
      And I type group code "abc"
      And I type password "12345"
      And I type confirm password "12345"
      And I click on Register Me button
      Then Message "Should be a valid email address" appears

    Scenario: Registration - Email - Whitespaces are not allowed in the end
      Given I navigate to registration page
      And I type first name "abc"
      And I type last name "abc"
      And I type email "test123@gmail.com "
      And I type group code "abc"
      And I type password "12345"
      And I type confirm password "12345"
      And I click on Register Me button
      Then Message "Should be a valid email address" appears

    Scenario: Registration - Email - Special characters are not allowed
      Given I navigate to registration page
      And I type first name "abc"
      And I type last name "abc"
      And I type email "!!!test123@gmail.com "
      And I type group code "abc"
      And I type password "12345"
      And I type confirm password "12345"
      And I click on Register Me button
      Then Message "Should be a valid email address" appears
