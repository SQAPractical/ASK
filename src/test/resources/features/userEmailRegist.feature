Feature: User - Email - Registration

  @test1
  Scenario: User - Email - Alphanumeric and special characters
    Given I open register page
    When I enter First Name "abc123"
    And I enter Last Name "def456"
    And I enter Email "123#@gmail.com"
    And I enter Group Code "123"
    And I enter Password "abc12345"
    And I confirm Password "abc12345"
    And I click on "Register me" button
    And I'm waiting for 3 sec
    Then I can see message "You have been Registered"

    @test2
    Scenario: User - Email - Email field required
      Given I open register page
      When I enter First Name "abc123"
      And I enter Last Name "def456"
      And I enter Group Code "123"
      And I enter Password "abc12345"
      And I confirm Password "abc12345"
      And I click on "Register me" button
      Then I can see message "This field is required"

    @test3
    Scenario: User - Email - White spaces are not allowed
      Given I open register page
      When I enter First Name "abc123"
      And I enter Last Name "def456"
      And I enter Email "ema il123#@gmail.com"
      And I enter Group Code "123"
      And I enter Password "abc12345"
      And I confirm Password "abc12345"
      And I click on "Register me" button
      Then I can see message "Should be a valid email address"

    @test4
    Scenario: User - Email - Case insensitive
      Given I open register page
      When I enter First Name "abc123"
      And I enter Last Name "def456"
      And I enter Email "eMaiL123#@gmail.Com"
      And I enter Group Code "123"
      And I enter Password "abc12345"
      And I confirm Password "abc12345"
      And I click on "Register me" button
      And I'm waiting for 3 sec
      Then I can see message "You have been Registered"

    @test5
    Scenario: User- Email - 64 characters on the left of an @ domain
      Given I open register page
      When I enter First Name "abc123"
      And I enter Last Name "def456"
      And I enter Email "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee@gmail.com"
      And I enter Group Code "123"
      And I enter Password "abc12345"
      And I confirm Password "abc12345"
      And I click on "Register me" button
      And I'm waiting for 3 sec
      Then I can see message "You have been Registered"

    @test6
    Scenario: User - Email - more than 64 characters on the left of an @ domain
      Given I open register page
      When I enter First Name "abc123"
      And I enter Last Name "def456"
      And I enter Email "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee@gmail.com"
      And I enter Group Code "123"
      And I enter Password "abc12345"
      And I confirm Password "abc12345"
      And I click on "Register me" button
      Then I can see message "Should be a valid email address"

    @test7
    Scenario: User- Email - 63 characters on the right of @ by (.)
      Given I open register page
      When I enter First Name "abc123"
      And I enter Last Name "def456"
      And I enter Email "email@eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.com"
      And I enter Group Code "123"
      And I enter Password "abc12345"
      And I confirm Password "abc12345"
      And I click on "Register me" button
      And I'm waiting for 3 sec
      Then I can see message "You have been Registered"

    @test8
    Scenario: User- Email - on the right of @ with more then 63 characters followed by (.)
      Given I open register page
      When I enter First Name "abc123"
      And I enter Last Name "def456"
      And I enter Email "email@eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.com"
      And I enter Group Code "123"
      And I enter Password "abc12345"
      And I confirm Password "abc12345"
      And I click on "Register me" button
      Then I can see message "Should be a valid email address"

     @test9
     Scenario: User- Email - With 63 characters in last part of domain
       Given I open register page
       When I enter First Name "abc123"
       And I enter Last Name "def456"
       And I enter Email "email@gmail.eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
       And I enter Group Code "123"
       And I enter Password "abc12345"
       And I confirm Password "abc12345"
       And I click on "Register me" button
       And I'm waiting for 3 sec
       Then I can see message "You have been Registered"

      @test10
      Scenario: User- Email - With more than 63 characters in last part of domain
        Given I open register page
        When I enter First Name "abc123"
        And I enter Last Name "def456"
        And I enter Email "email@gmail.eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
        And I enter Group Code "123"
        And I enter Password "abc12345"
        And I confirm Password "abc12345"
        And I click on "Register me" button
        Then I can see message "Should be a valid email address"





