Feature: Settings - Password
  Scenario: Settings - Password - Alphanumeric and special characters + 5 characters max
    When I navigate to login page
    And I type my email "teacher5@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click Change Your Password button
    And I type password "12345Abc"
    And I type new password "s!@#1"
    And I type confirm new password "s!@#1"
    And I click Change button
    And I click on "Log Out" on left menu
    And I click Log Out button
    And I type my email "teacher5@gmail.com"
    And I type password "s!@#1"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click Change Your Password button
    And I type password "s!@#1"
    And I type new password "12345Abc"
    And I type confirm new password "12345Abc"
    And I click Change button
    And I click on "Log Out" on left menu
    And I click Log Out button

  Scenario: Settings - Password - Field is required
    When I navigate to login page
    And I type my email "teacher5@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click Change Your Password button
    And I type password "12345Abc"
    And I click New Password field
    And I type confirm new password "smith!@#123"
    Then Message "This field is required" appears

  Scenario: Settings - Password - Less than 5 characters not allowed
    When I navigate to login page
    And I type my email "teacher5@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click Change Your Password button
    And I type password "12345Abc"
    And I type new password "1234"
    And I type confirm new password "12345"
    Then Message "Too short. Should be at least 5 characters" appears

  Scenario: Settings - Password - Maximum 32 characters
    When I navigate to login page
    And I type my email "teacher5@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click Change Your Password button
    And I type password "12345Abc"
    And I type new password "smith123456798909835645646475435"
    And I type confirm new password "smith123456798909835645646475435"
    And I click Change button
    And I click on "Log Out" on left menu
    And I click Log Out button
    And I type my email "teacher5@gmail.com"
    And I type password "smith123456798909835645646475435"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click Change Your Password button
    And I type password "smith123456798909835645646475435"
    And I type new password "12345Abc"
    And I type confirm new password "12345Abc"
    And I click Change button
    And I click on "Log Out" on left menu
    And I click Log Out button

  Scenario: Settings - Password - More than 32 characters not allowed
    When I navigate to login page
    And I type my email "teacher5@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click Change Your Password button
    And I type password "12345Abc"
    And I type new password "smith1234567989098356456464754356"
    And I type confirm new password "smith1234567989098356456464754355"
    Then Message "Too long. Should be no more than 32 characters" appears

  Scenario: Settings - Password - Leading space not allowed
    When I navigate to login page
    And I type my email "teacher5@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click Change Your Password button
    And I type password "12345Abc"
    And I type new password " s!@#1"
    And I type confirm new password "12345"
    Then Message "Whitespaces are not allowed" appears


  Scenario: Settings - Password - Trailing space not allowed
    When I navigate to login page
    And I type my email "teacher5@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click Change Your Password button
    And I type password "12345Abc"
    And I type new password "s!@#1 "
    And I type confirm new password "12345"
    Then Message "Whitespaces are not allowed" appears

  Scenario: Settings - Password - Space between characters not allowed
    When I navigate to login page
    And I type my email "teacher5@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click Change Your Password button
    And I type password "12345Abc"
    And I type new password "s !@#1"
    And I type confirm new password "12345"
    Then Message "Whitespaces are not allowed" appears

  Scenario: Settings - Password - Reject not matching password
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click Change Your Password button
    And I type password "12345Abc"
    And I type new password "s!@#1"
    And I type confirm new password "s!@#2"
    And I click New Password field
    Then Message "Entered passwords should match" appears

  Scenario: Settings - Password - Cancel button
    When I navigate to login page
    And I type my email "teacher5@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click Change Your Password button
    And I type password "12345Abc"
    And I type new password "s!@#1"
    And I type confirm new password "s!@#1"
    And I click Cancel button
    And I click on "Log Out" on left menu
    And I click Log Out button
    And I type my email "teacher5@gmail.com"
    And I type password "12345Abc"
    Then I click Sign In button



