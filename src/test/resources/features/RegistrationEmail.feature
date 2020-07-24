Feature: Registration - Email

  Scenario: ACJ-161.Registration - Email - valid email format
    Given I open "registration" page
      When I type name "abc"
      And I type LastName "efg"
      And I type email "abc@abc.com"
      And I type GroupCode "111111"
      And I type Password "12345"
      And I type ConfirmPassword "12345"
      And I click Sign in button
      Then Text "You have been Registered." appears

  Scenario: ACJ-162.Registration - Email - Required field
    Given I open "registration" page
    When I type name "abc"
    And I type LastName "efg"
    And I type email ""
    And I type GroupCode "111111"
    And I type Password "12345"
    And I type ConfirmPassword "12345"
    And I click Sign in button
    Then Text "This field is required." appears



  Scenario:	ACJ-163.Registration - Email - max char(64) in Local part of email
    Given I open "registration" page
    When I type name "abc"
    And I type LastName "efg"
    And I type email "asdfasdfASDSFSS23473458*#$&#$^#$sdggasfdaksdfsdfdddddf*^%6474943@abc.com"
    And I type GroupCode "111111"
    And I type Password "12345"
    And I type ConfirmPassword "12345"
    And I click Sign in button
    Then Text "This field is required." appears

  Scenario:	ACJ-164.Registration - Email - max char (65) in Local part of email
    Given I open "registration" page
    When I type name "abc"
    And I type LastName "efg"
    And I type email "aasdfasdfASDSFSS23473458*#$&#$^#$sdggasfdaksdfsdfdddddf*^%6474943@abc.com"
    And I type GroupCode "111111"
    Then Text "Should be a valid email address." appears

  Scenario:	ACJ-165.Registration - Email - max char (63) in Domain part
    Given I open "registration" page
    When I type name "abc"
    And I type LastName "efg"
    And I type email "abc@asdfghfffffsfnsdvksdsdssssvsdvDSJFISDCVKSJDKFJKDSJKSSDVSdfdfsff.com"
    And I type GroupCode "111111"
    And I type Password "12345"
    And I type ConfirmPassword "12345"
    And I click Sign in button
    Then Text "You have been Registered" appears

  Scenario:	ACJ-166.Registration - Email - max char (64) Domain part
    Given I open "registration" page
    When I type name "abc"
    And I type LastName "efg"
    And I type email "abc@asdfghfffffsfnsdvksdsdssssvsdvcDSJFISDCVKSJDKFJKDSJKSSDVSdfdfsff.com"
    And I type GroupCode "111111"
    And I type Password "12345"
    And I type ConfirmPassword "12345"
    And I click Sign in button
    Then Text "Should be a valid email address" appears

  Scenario:	ACJ-168.Registration - Email - max char (63) in Domain part after (.)
    Given I open "registration" page
    When I type name "abc"
    And I type LastName "efg"
    And I type email "ab@abc.asdfghfffffsfnsdvksdsdssssvsdvDSJFISDCVKSJDKFJKDSJKSSDVSdfdfsff"
    And I type GroupCode "111111"
    And I type Password "12345"
    And I type ConfirmPassword "12345"
    And I click Sign in button
    Then Text "You have been Registered" appears

  Scenario:	ACJ-169.Registration - Email - max char (64) in Domain part after (.)
    Given I open "registration" page
    When I type name "abc"
    And I type LastName "efg"
    And I type email "ab@abc.asadfghfffffsfnsdvksdsdssssvsdvDSJFISDCVKSJDKFJKDSJKSSDVSdfdfsff"
    And I type GroupCode "111111"
    And I type Password "12345"
    And I type ConfirmPassword "12345"
    Then Text "Should be a valid email address" appears

  Scenario:	ACJ-170.Registration - Email - White spaces
    Given I open "registration" page
    When I type name "abc"
    And I type LastName "efg"
    And I type email "ab c@ab c.co m"
    And I type GroupCode "111111"
    And I type Password "12345"
    And I type ConfirmPassword "12345"
    Then Text "Should be a valid email address" appears

  Scenario:	ACJ-171.Registration - Email - Missing @ character
    Given I open "registration" page
    When I type name "abc"
    And I type LastName "efg"
    And I type email "abc12.abc"
    And I type GroupCode "111111"
    And I type Password "12345"
    And I type ConfirmPassword "12345"
    Then Text "Should be a valid email address" appears

  Scenario:	ACJ-172.Registration - Email - Missing "." character
    Given I open "registration" page
    When I type name "abc"
    And I type LastName "efg"
    And I type email "abc12@abc"
    And I type GroupCode "111111"
    And I type Password "12345"
    And I type ConfirmPassword "12345"
    Then Text "Should be a valid email address" appears

