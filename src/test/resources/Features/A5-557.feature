Feature: Settings - Password
  Scenario: Settings - Password - Allowable characters: Alphanumeric and special characters
    When I navigate to login page
    And I type Email "azikas22@gmail.com"
    And I type Password "Password@"
    And I click Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@"
    And I type New Password "Password@"
    And I type Confirm New Password "Password@"
    And I click Change button

  Scenario: Settings - Password - Field required - Password field
    When I navigate to login page
    And I type Email "azikas22@gmail.com"
    And I type Password "Password@"
    And I click Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type New Password "Password@"
    Then text "This field is required" appears

  Scenario: Settings - Password - Field required - New Password field
    When I navigate to login page
    And I type Email "azikas22@gmail.com"
    And I type Password "Password@"
    And I click Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@"
    And I type Confirm New Password "Password@"
    And I click Change button
    Then Error "Entered passwords should match" appears

  Scenario: Settings - Password - Field required - Confirm New Password field
    When I navigate to login page
    And I type Email "azikas22@gmail.com"
    And I type Password "Password@"
    And I click Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@"
    And I type New Password "Password@"
    Then Change button disabled


  Scenario: Settings - Password - Max char
    When I navigate to login page
    And I type Email "azikas22@gmail.com"
    And I type Password "Password@"
    And I click Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@"
    And I type New Password "PasswordPasswordPassword12345!@#"
    And I type Confirm New Password "PasswordPasswordPassword12345!@#"
    And I click Change button

  Scenario: Settings - Password - Max char+1
    When I navigate to login page
    And I type Email "azikas22@gmail.com"
    And I type Password "PasswordPasswordPassword12345!@#"
    And I click Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "PasswordPasswordPassword12345!@#"
    And I type New Password "PasswordPasswordPassword!@#123456"
    And I type Confirm New Password "PasswordPasswordPassword!@#123456"
    And I click Change button

  Scenario: Settings - Password - Min char
    When I navigate to login page
    And I type Email "azikas22@gmail.com"
    And I type Password "PasswordPasswordPassword!@#123456"
    And I click Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@"
    And I type New Password "AS12"
    Then Error "Too short. Should be at least 5 characters" appears

  Scenario: Settings - Password - Whitespaces are not allowed - Password field
    When I navigate to login page
    And I type Email "azikas22@gmail.com"
    And I type Password "PasswordPasswordPassword!@#123456"
    And I click Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "12 345Abc"
    And I type New Password "12 345Abc"
    Then text "Whitespaces are not allowed" appears

  Scenario: Settings - Password - Whitespaces are not allowed - New Password field
    When I navigate to login page
    And I type Email "azikas22@gmail.com"
    And I type Password "PasswordPasswordPassword!@#123456"
    And I click Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@"
    And I type New Password "12 345Abc"
    Then Error "Whitespaces are not allowed" appears

  Scenario: Settings - Password - Whitespaces are not allowed - Confirm New Password field
    When I navigate to login page
    And I type Email "azikas22@gmail.com"
    And I type Password "PasswordPasswordPassword!@#123456"
    And I click Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@"
    And I type Confirm New Password "12 345Abc"
    And I type New Password "123"
    Then Error "Whitespaces are not allowed" appears

  Scenario: Settings - Password - New Password must match Confirm New Password
    When I navigate to login page
    And I type Email "azikas22@gmail.com"
    And I type Password "PasswordPasswordPassword!@#123456"
    And I click Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "PasswordPasswordPassword!@#123456"
    And I type New Password "Password@"
    And I type Confirm New Password "Password@"
    And I click Change button

  Scenario: Settings - Password - Mismatch New Password and Confirm New Password are not allowed
    When I navigate to login page
    And I type Email "azikas22@gmail.com"
    And I type Password "Password@"
    And I click Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@"
    And I type New Password "Password@"
    And I type Confirm New Password "Password"
    And I click Change button
    Then Error "Entered passwords should match" appears

  Scenario: Settings - Password - Changing New Password
    When I navigate to login page
    And I type Email "azikas22@gmail.com"
    And I type Password "Password@"
    And I click Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@"
    And I type New Password "Password@"
    And I type Confirm New Password "Password"
    And I type New Password "Password@"
    And I click Change button
    Then Error "Entered passwords should match" appears

