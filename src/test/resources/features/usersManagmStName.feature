@fullRegression
@partialRegression
Feature: Change name

  Scenario: Change name - Leading spaces are not allowed
    Given I navigate to login page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on User's Management button
    Then I click on Students button
    And I click on student with name A B
    And I click on button Options
    Then drop-down list appears
    And I click on Change User's Name button
    And I delete previous name
    And I type new name " A B"
    And I click on Change button
    Then message "Should contain only first and last name latin characters" appears


  Scenario: Change name - Alphanumeric and special characters
    Given I navigate to login page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on User's Management button
    Then I click on Students button
    And I click on student with name A B
    And I click on button Options
    Then drop-down list appears
    And I click on Change User's Name button
    And I delete previous name
    And I type new name "Ivan123@$% Ivanov"
    And I click on Change button
    Then Full name of the student was changed

  Scenario: Change name - Field is required
    Given I navigate to login page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on User's Management button
    Then I click on Students button
    And I click on student with name A B
    And I click on button Options
    Then drop-down list appears
    And I click on Change User's Name button
    And I delete previous name
    And I click on Change button
    Then message "This field is required" appears

  Scenario: Change name - Maximum characters
    Given I navigate to login page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on User's Management button
    Then I click on Students button
    And I click on student with name A B
    And I click on button Options
    Then drop-down list appears
    And I click on Change User's Name button
    And I delete previous name
    And I type new name "Ivan IvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvano"
    And I click on Change button
    Then Full name of the student was changed

  Scenario: Change name - Maximum characters +1
    Given I navigate to login page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on User's Management button
    Then I click on Students button
    And I click on student with name A B
    And I click on button Options
    Then drop-down list appears
    And I click on Change User's Name button
    And I delete previous name
    And I type new name "Ivadn IvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanov"
    And I click on Change button
    Then message "Too long. Should be no more than 100 characters" appears

  Scenario: Change name - 1 character
    Given I navigate to login page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on User's Management button
    Then I click on Students button
    And I click on student with name A B
    And I click on button Options
    Then drop-down list appears
    And I click on Change User's Name button
    And I delete previous name
    And I type new name "I"
    And I click on Change button
    Then message "Should contain only first and last name latin characters" appears

  Scenario: Change name - Minimum characters without space
    Given I navigate to login page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on User's Management button
    Then I click on Students button
    And I click on student with name A B
    And I click on button Options
    Then drop-down list appears
    And I click on Change User's Name button
    And I delete previous name
    And I type new name "II"
    And I click on Change button
    Then message "Should contain only first and last name latin characters" appears

  Scenario: Change name - Only one space allowed
    Given I navigate to login page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on User's Management button
    Then I click on Students button
    And I click on student with name A B
    And I click on button Options
    Then drop-down list appears
    And I click on Change User's Name button
    And I delete previous name
    And I type new name "I   I"
    And I click on Change button
    Then message "Should contain only first and last name latin characters" appears

  Scenario: Change name - One space between two words required
    Given I navigate to login page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on User's Management button
    Then I click on Students button
    And I click on student with name A B
    And I click on button Options
    Then drop-down list appears
    And I click on Change User's Name button
    And I delete previous name
    And I type new name "AB"
    And I click on Change button
    Then message "Should contain only first and last name latin characters" appears

  Scenario: Change name - Minimum characters
    Given I navigate to login page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on User's Management button
    Then I click on Students button
    And I click on student with name A B
    And I click on button Options
    Then drop-down list appears
    And I click on Change User's Name button
    And I delete previous name
    And I type new name "I I"
    And I click on Change button
    Then Full name of the student was changed