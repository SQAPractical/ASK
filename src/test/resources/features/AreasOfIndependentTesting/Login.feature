Feature: Login
  Scenario: Login - Valid Email/Password
    Given I navigate to "login" page
    And I type email "xjnrdnpathake@b4top.tk" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
    Then  I verify user name "Leslie Teacher" is displayed



    Scenario: Login - Invalid password
      Given I navigate to "login" page
      And I type email "xjnrdnpathake@b4top.tk" on "login" page
      And I type password "123456" on "login" page
      And I click Sign in button
      Then I verify error message "" appears

      Scenario: Login - Email field required
        Given I navigate to "login" page
        And I type email "<string>" on "<string>" page
        And I type password "<string>" on "<string>" page
        And I click Sign in button
        Then I verify error message This field is required appears

        Scenario: Login - Email case insensitive
          Given I navigate to "login" page

