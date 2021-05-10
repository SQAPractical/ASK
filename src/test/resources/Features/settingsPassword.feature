@fullRegression
Feature: Settings - Password
  Scenario: Settings - Password - Allowable characters: Alphanumeric and special characters
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "12345Abc"
    And I type New Password "Password@123"
    And I type Confirm New Password "Password@123"
    And I click Change button
    And I click on Log Out on left menu
    And I type Email "teacher4@gmail.com"
    And I type Password "Password@123"
    And I click on Sign In button
    Then Text "Log Out" appears
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@123"
    And I type New Password "12345Abc"
    And I type Confirm New Password "12345Abc"
    And I click Change button

  Scenario: Settings - Password - Min char
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "12345Abc"
    And I type New Password "AS121"
    And I type Confirm New Password "AS121"
    And I click Change button
    And I click on Log Out on left menu
    And I type Email "teacher4@gmail.com"
    And I type Password "AS121"
    And I click on Sign In button
    Then Text "Log Out" appears
    And I click Settings
    And I click Change Your Password button
    And I type Password "AS121"
    And I type New Password "12345Abc"
    And I type Confirm New Password "12345Abc"
    And I click Change button


  Scenario: Settings - Password - Field required - Password field
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password ""
    And I type New Password "12345Abc"
    Then Text "This field is required" appears

  Scenario: Settings - Password - Field required - New Password field
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "12345Abc"
    And I type Confirm New Password "12345Abc"
    And I type New Password ""
    And I click Change button
    Then Error "This field is required" appears

  Scenario: Settings - Password - Field required - Confirm New Password field
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@"
    And I type Confirm New Password ""
    Then Change button disabled
    Then Error "This field is required" appears


  Scenario: Settings - Password - Max char
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "12345Abc"
    And I type New Password "PasswordPasswordPassword12345!@#"
    And I type Confirm New Password "PasswordPasswordPassword12345!@#"
    And I click Change button
    And I click on Log Out on left menu
    And I type Email "teacher4@gmail.com"
    And I type Password "PasswordPasswordPassword12345!@#"
    And I click on Sign In button
    Then Text "Log Out" appears
    And I click Settings
    And I click Change Your Password button
    And I type Password "PasswordPasswordPassword12345!@#"
    And I type New Password "12345Abc"
    And I type Confirm New Password "12345Abc"
    And I click Change button
#bug
  Scenario: Settings - Password - Max char+1
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "12345Abc"
    And I type New Password "PasswordPasswordPassword!@#123456"
    And I type Confirm New Password "PasswordPasswordPassword!@#123456"
    And I click Change button
    Then Error "No more than 32 char allowed" appears

  Scenario: Settings - Password - Min-1 char
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "PasswordPasswordPassword!@#123456"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@"
    And I type New Password "AS12"
    Then Error "Too short. Should be at least 5 characters" appears

  Scenario: Settings - Password - Whitespaces are not allowed - Password field
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "PasswordPasswordPassword!@#123456"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "12 345Abc"
    And I type New Password "12 345Abc"
    Then Text "Whitespaces are not allowed" appears

  Scenario: Settings - Password - Whitespaces are not allowed - New Password field
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "PasswordPasswordPassword!@#123456"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@"
    And I type New Password "12 345Abc"
    Then Error "Whitespaces are not allowed" appears

  Scenario: Settings - Password - Whitespaces are not allowed - Confirm New Password field
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "PasswordPasswordPassword!@#123456"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "Password@"
    And I type Confirm New Password "12 345Abc"
    And I type New Password "123"
    Then Error "Whitespaces are not allowed" appears

  Scenario: Settings - Password - New Password must match Confirm New Password
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "PasswordPasswordPassword!@#123456"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "PasswordPasswordPassword!@#123456"
    And I type New Password "12345Abc"
    And I type Confirm New Password "12345Abc"
    And I click Change button

  Scenario: Settings - Password - Mismatch New Password and Confirm New Password are not allowed
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "12345Abc"
    And I type New Password "Password@"
    And I type Confirm New Password "Password"
    And I click Change button
    Then Error "Entered passwords should match" appears

  Scenario: Settings - Password - Changing New Password
    When I navigate to login page
    And I type Email "teacher4@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click Settings
    And I click Change Your Password button
    And I type Password "12345Abc"
    And I type New Password "Password@"
    And I type Confirm New Password "Password"
    And I type New Password "Password@"
    And I click Change button
    Then Error "Entered passwords should match" appears

