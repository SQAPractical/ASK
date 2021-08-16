Feature: Setting - Password
  Scenario: Setting - Password - Alphanumeric and special characters
    When I navigate to login page
    And I type login "shepelenkoalla@bk.ru"
    And I type password "Qwertyu"
    And I click Sign In button
    And I click Setting
    And I click Change Your Password button
    And I type Password "Qwertyu"
    And I type New Password "Qwertyu7@"
    And I type confirm password "Qwertyu7@"
    And I click Change button
    And I click Log Out
    And I confirm Log Out
    And I type login "shepelenkoalla@bk.ru"
    And I type password "Qwertyu7@"
    And I click Sign In button
    Then I navigate to Alla Shepelenko student profile


  Scenario: Setting - Password - Password field is required - cannot be empty
    When I navigate to login page
    And I type login "shepelenkoalla@bk.ru"
    And I type password "Qwertyu7@"
    And I click Sign In button
    And I click Setting
    And I click Change Your Password button
    And I type Password ""
    And I type New Password "Qwertyu7"
    And I type confirm password "Qwertyu7"
    And I click Change button
    Then Message "This field is required" displays

  Scenario: Setting - Password - Min 5 char
    When I navigate to login page
    And I type login "shepelenkoalla@bk.ru"
    And I type password "Qwertyu7@"
    And I click Sign In button
    And I click Setting
    And I click Change Your Password button
    And I type Password "Qwertyu7@"
    And I type New Password "12345"
    And I type confirm password "12345"
    And I click Change button
    And I click Log Out
    And I confirm Log Out
    And I type login "shepelenkoalla@bk.ru"
    And I type password "12345"
    And I click Sign In button
    Then I navigate to Alla Shepelenko student profile

  Scenario: Setting - Password - Min -1 char
    When I navigate to login page
    And I type login "shepelenkoalla@bk.ru"
    And I type password "12345"
    And I click Sign In button
    And I click Setting
    And I click Change Your Password button
    And I type Password "12345"
    And I type New Password "1234"
    And I type confirm password "1234"
    And I click Change button
    Then Message "Too short. Should be at least 5 characters" displays

  Scenario: Setting - Password - Max 32 char
    When I navigate to login page
    And I type login "shepelenkoalla@bk.ru"
    And I type password "12345"
    And I click Sign In button
    And I click Setting
    And I click Change Your Password button
    And I type Password "12345"
    And I type New Password "12345678912345678901234567890123"
    And I type confirm password "12345678912345678901234567890123"
    And I click Change button
    And I click Log Out
    And I confirm Log Out
    And I type login "shepelenkoalla@bk.ru"
    And I type password "12345678912345678901234567890123"
    And I click Sign In button
    Then I navigate to Alla Shepelenko student profile

  Scenario: Setting - Password - Max +1 char
    When I navigate to login page
    And I type login "shepelenkoalla@bk.ru"
    And I type password "12345678912345678901234567890123"
    And I click Sign In button
    And I click Setting
    And I click Change Your Password button
    And I type Password "12345678912345678901234567890123"
    And I type New Password "123456789123456789012345678901231"
    And I type confirm password "123456789123456789012345678901231"
    And I click Change button
    Then Message "Too long. Should be no more than 32 characters" displays

  Scenario: Setting - Password -  Whitespaces are not allowed
    When I navigate to login page
    And I type login "shepelenkoalla@bk.ru"
    And I type password "12345678912345678901234567890123"
    And I click Sign In button
    And I click Setting
    And I click Change Your Password button
    And I type Password "12345678912345678901234567890123"
    And I type New Password " "
    And I type confirm password " "
    And I click Change button
    Then Message "Whitespaces are not allowed" displays

  Scenario: Setting - Password - New Password must match Confirm New Password
    When I navigate to login page
    And I type login "shepelenkoalla@bk.ru"
    And I type password "12345678912345678901234567890123"
    And I click Sign In button
    And I click Setting
    And I click Change Your Password button
    And I type Password "12345678912345678901234567890123"
    And I type New Password "Qwertyu"
    And I type confirm password "Qwertyu"
    And I click Change button
    And I click Log Out
    And I confirm Log Out
    And I type login "shepelenkoalla@bk.ru"
    And I type password "Qwertyu"
    And I click Sign In button
    Then I navigate to Alla Shepelenko student profile

  Scenario: Setting - Password - New Password miss match Confirm New Password
    When I navigate to login page
    And I type login "shepelenkoalla@bk.ru"
    And I type password "Qwertyu"
    And I click Sign In button
    And I click Setting
    And I click Change Your Password button
    And I type Password "Qwertyu"
    And I type New Password "12345"
    And I type confirm password "123456"
    And I click Change button
    Then Message "Entered passwords should match" displays

  Scenario: Setting - Password - Existing password is incorrect
    When I navigate to login page
    And I type login "shepelenkoalla@bk.ru"
    And I type password "Qwertyu"
    And I click Sign In button
    And I click Setting
    And I click Change Your Password button
    And I type Password "Qwertyu7"
    And I type New Password "12345"
    And I type confirm password "12345"
    And I click Change button
    Then Message "Authentication failed. User not found or password does not match" displays







