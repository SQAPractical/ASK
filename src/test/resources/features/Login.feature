@login
Feature: Login
  @login1
  Scenario: valid email and valid password allows to login
    Given I navigate to "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then text "Elena Talley" appears

  @login2.1
  Scenario: invalid email (not registered) and valid password doesnot allow to login
    Given I navigate to "login" page
    And I type email "qaqq.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then text "Authentication  failed. User not found or password does not match" appears

  @login2.2
  Scenario: valid email and invalid password (not corresponding password) doesnot allow to login
    Given I navigate to "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "1234567"
    And I click Sign In button
    Then text "Authentication  failed. User not found or password does not match" appears

   @login2.3
   Scenario: blank email and blank password doesnot allow to login
     Given I navigate to "login" page
     And I leave "email" blank
     And I leave "password" blank
     And I click Sign In button
     Then text "This field is required" appears

   @login3
   Scenario: password field displays input in bullets
     Given I navigate to "login" page
     And I type email "qa.sofi@gmail.com"
     And I type password "12345"
     Then password displays in bullets

    @login4
    Scenario: "Cut" menu item on Password field is disabled
      Given I navigate to "login" page
      And I type email "qa.sofi@gmail.com"
      And I type password "12345"
      Then  cut menu item on password field is disabled

    @login5
    Scenario: "copy" menu item on Password field is disabled

    @login6
    Scenario: leading and trailing spaces not allowed

    @login7
    Scenario: email field case insensitive
      Given I navigate to "login" page
      And I type email "qa.sofi@gmail.com"
      And I type password "12345"
      And I click Sign In button
      Then text "Elena Talley" appears
      Then I logout with confirm message
      And I wait for 2 sec
#        to check with uppercase email id
      And I type email "QA.SOFI@GMAIL.COM"
      And I type password "12345"
      And I click Sign In button
      Then text "Elena Talley" appears

     @login8
     Scenario: password field case sensitive
       Given I navigate to "login" page
       And I type email "teachersgtest@gmail.com"
       And I type password "sendisk111"
       And I click Sign In button
       Then text "Seema Teacher" appears
       Then I logout with confirm message
       And I wait for 5 sec
#      to check with uppercase password
       And I type email "teachersgtest@gmail.com"
       And I type password "SENDISK111"
       And I click Sign In button
       Then text "Authentication  failed. User not found or password does not match" appears
       And I wait for 5 sec

