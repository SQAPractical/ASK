Feature: Settings - password

  @password1
  Scenario: Alphanumeric & Special characters
    Given I open "login" page
    When I type email "6thalaivaveriya@9phum.com"
    And I type password "Test123"
    And I click Sign in button
#    And I wait 3 seconds
    And I click settings button
    And I Click "Change password" and I type in "Test123" in password and "Test123!" in new password and "Test123!" in confirm password
    And I click [Log Out] button
    And I confirm Log Out on Confirmation popup
    And I type email "6thalaivaveriya@9phum.com"
    And I type password "Test123!"
    And I click Sign in button
    Then Text "asd sada" appears
    And I click settings button
    And I Click "Change password" and I type in "Test123!" in password and "Test123" in new password and "Test123" in confirm password
    And I wait 2 seconds

  @password2
  Scenario: Change Password-Less than 5 characters
    Given I open "login" page
    Then I type email "6thalaivaveriya@9phum.com"
    Then I type password "Test123"
    And I click Sign in button
#    And I wait 3 seconds
    Then I click settings button
    Then I Click "Change password" and I type in "Test123" in password and "Te" in new password and "Te" in confirm password
    Then Text "Too short. Should be at least 5 characters" appears

  @password3 #Known bug see bug A6-121 in jira
#  Scenario: password more then 35 characters
#    Given I open "login" page
#    Then I type email "6thalaivaveriya@9phum.com"
#    Then I type password "Test123"
#    And I click Sign in button
#    And I wait 3 seconds
#    Then I click settings button
#    Then I Click "Change password" and I type in "Test123" in password and "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" in new password and "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" in confirm password
#    Then Text "Too long. Should be no more then 32 characters" appears

  @password4
  Scenario: white spaces not allowed
    Given I open "login" page
    Then I type email "6thalaivaveriya@9phum.com"
    Then I type password "Test123"
    And  I click Sign in button
#    And I wait 3 seconds
    Then I click settings button
    Then I Click "Change password" and I type in "Test123" in password and "T e" in new password and "T e" in confirm password
    Then Text "Whitespaces are not allowed" appears

  @password5
  Scenario: Passwords must match
    Given I open "login" page
    Then I type email "6thalaivaveriya@9phum.com"
    Then I type password "Test123"
    And  I click Sign in button
#    And I wait 3 seconds
    Then I click settings button
    Then I Click "Change password" and I type in "Test123" in password and "Tasdsade" in new password and "Tafdaae" in confirm password
    Then Text "Entered passwords should match" appears

  @password6
  Scenario: New password field cannot be blank
    Given I open "login" page
    Then I type email "6thalaivaveriya@9phum.com"
    Then I type password "Test123"
    And I click Sign in button
#    And I wait 3 seconds
    Then I click settings button
    Then I Click "Change password" and I type in "Test123" in password and "" in new password and "" in confirm password
    Then Text "This field is required" appears

