@fullRegression
Feature: Settings - Password
  Scenario: 211 Password - Alphanumeric and special characters
    Given I navigate to login page
    When I type email "teacher1@gmail.com" on page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    Then I click on Settings
    Then I click change password button
    Then I type old password "12345Abc"
    Then I wait for 1 sec
    Then I type new password "qwe&123"
    Then I wait for 1 sec
    Then I confirm new password "qwe&123"
    Then I wait for 1 sec
    Then I click on change button
    Then I wait for 1 sec
    Then I click on logout
    Then I wait for 1 sec
    Then I click on confirm logout
    Then I wait for 1 sec
    Then I should see page title as "Assessment Control @ Portnov"
    When I type email "teacher1@gmail.com" on page
    And I type password "qwe&123" on login page
    And I click on sing in button
    Then "home" page loaded
    Then I click on Settings
    Then I click change password button
    Then I type old password "qwe&123"
    Then I wait for 1 sec
    Then I type new password "12345Abc"
    Then I wait for 1 sec
    Then I confirm new password "12345Abc"
    Then I wait for 1 sec
    Then I click on change button
    Then I wait for 1 sec
    Then I click on logout
    Then I wait for 1 sec
    Then I click on confirm logout
    Then I wait for 1 sec

  Scenario: 213 Password - field is required - cannot be empty
    Given I navigate to login page
    When I type email "teacher1@gmail.com" on page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    Then I click on Settings
    Then I click change password button
    Then I wait for 1 sec
    Then I type new password "qwe&123"
    Then I wait for 1 sec
    Then I confirm new password "qwe&123"
    Then message "This field is required" apears

  Scenario: 215 Password - Minimum (5) characters
    Given I navigate to login page
    When I type email "teacher1@gmail.com" on page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    Then I click on Settings
    Then I click change password button
    Then I type old password "12345Abc"
    Then I wait for 1 sec
    Then I type new password "qwe&1"
    Then I wait for 1 sec
    Then I confirm new password "qwe&1"
    Then I wait for 1 sec
    Then I click on change button
    Then I wait for 1 sec
    Then I click on logout
    Then I wait for 1 sec
    Then I click on confirm logout
    Then I wait for 1 sec
    Then I should see page title as "Assessment Control @ Portnov"
    When I type email "teacher1@gmail.com" on page
    And I type password "qwe&1" on login page
    And I click on sing in button
    Then "home" page loaded
    Then I click on Settings
    Then I click change password button
    Then I type old password "qwe&1"
    Then I wait for 1 sec
    Then I type new password "12345Abc"
    Then I wait for 1 sec
    Then I confirm new password "12345Abc"
    Then I wait for 1 sec
    Then I click on change button
    Then I wait for 1 sec
    Then I click on logout
    Then I wait for 1 sec
    Then I click on confirm logout
    Then I wait for 1 sec


  Scenario: 217 Password - less then 5 characters password
    Given I navigate to login page
    When I type email "teacher1@gmail.com" on page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    Then I click on Settings
    Then I click change password button
    Then I wait for 1 sec
    Then I type new password "qwe"
    Then I wait for 1 sec
    Then I confirm new password "qwe"
    Then message new password short "Too short. Should be at least 5 characters" apears

  Scenario: 218 Password - Maximum (32) characters
    Given I navigate to login page
    When I type email "teacher1@gmail.com" on page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    Then I click on Settings
    Then I click change password button
    Then I type old password "12345Abc"
    Then I wait for 1 sec
    Then I type new password "aerwr3345/,rtertcwrqwxrq&!dfgdfA"
    Then I wait for 1 sec
    Then I confirm new password "aerwr3345/,rtertcwrqwxrq&!dfgdfA"
    Then I wait for 1 sec
    Then I click on change button
    Then I wait for 1 sec
    Then I click on logout
    Then I wait for 1 sec
    Then I click on confirm logout
    Then I wait for 1 sec
    Then I should see page title as "Assessment Control @ Portnov"
    When I type email "teacher1@gmail.com" on page
    And I type password "aerwr3345/,rtertcwrqwxrq&!dfgdfA" on login page
    And I click on sing in button
    Then "home" page loaded
    Then I click on Settings
    Then I click change password button
    Then I type old password "aerwr3345/,rtertcwrqwxrq&!dfgdfA"
    Then I wait for 1 sec
    Then I type new password "12345Abc"
    Then I wait for 1 sec
    Then I confirm new password "12345Abc"
    Then I wait for 1 sec
    Then I click on change button
    Then I wait for 1 sec
    Then I click on logout
    Then I wait for 1 sec
    Then I click on confirm logout
    Then I wait for 1 sec

  Scenario: 222 Password - Whitespaces are not allowed
    Given I navigate to login page
    When I type email "teacher1@gmail.com" on page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    Then I click on Settings
    Then I click change password button
    Then I type old password "12345Abc"
    Then I wait for 1 sec
    Then I type new password "qw e123"
    Then I wait for 1 sec
    Then I confirm new password "qw e123"
    Then message new password "Whitespaces are not allowed" apears

  Scenario: 224+225 Password - Password must match Confirm Password
    Given I navigate to login page
    When I type email "teacher1@gmail.com" on page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    Then I click on Settings
    Then I click change password button
    Then I type old password "12345Abc"
    Then I wait for 1 sec
    Then I type new password "qwe123"
    Then I wait for 1 sec
    Then I confirm new password "qwe12"
    Then I click on change button
    Then I wait for 1 sec
    Then message new password match "Entered passwords should match')]" apears



