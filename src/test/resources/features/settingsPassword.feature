Feature: Settings - Password
  Scenario: Settings - New Password - Alphanumeric and special characters
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Password" button
    And I type password "12345Abc"
    And I type new password "123Abc!@#"
    And I type confirm new password "123Abc!@#"
    And I click on Change button
    And I redirect to settings page
# Change password back to default
    And I click on "Change Your Password" button
    And I type password "123Abc!@#"
    And I type new password "12345Abc"
    And I type confirm new password "12345Abc"
    And I click on Change button


  Scenario: Settings - Password - Password field cannot be empty
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Password" button
    And I type password ""
    And I type new password "123Abc!@#"
    And I type confirm new password "123Abc!@#"
    Then Message "This field is required" appears
  Scenario: Settings - Password - New Password field cannot be empty
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Password" button
    And I type password "12345Abc"
    And I type new password ""
    And I type confirm new password "123Abc!@#"
    Then Message "This field is required" appears
  Scenario: Settings - Password - Confirm New Password field cannot be empty
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Password" button
    And I type password "12345Abc"
    And I type new password "123Abc!@#"
    And I type confirm new password ""
    Then Message "This field is required" appears
  Scenario: Settings - New Password- Minimum (5) characters
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Password" button
    And I type password "12345Abc"
    And I type new password "123Ab"
    And I type confirm new password "123Ab"
    And I click on Change button
    And I redirect to settings page
    # Change password back to default
    And I click on "Change Your Password" button
    And I type password "123Ab"
    And I type new password "12345Abc"
    And I type confirm new password "12345Abc"
    And I click on Change button
  Scenario: Settings - New Password- Minimum (5-1) characters
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Password" button
    And I type password "12345Abc"
    And I type new password "123A"
    And I type confirm new password "123A"
    Then Message "Too short. Should be at least 5 characters" appears
  Scenario: Settings - New Password- Maximum (32) characters
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Password" button
    And I type password "12345Abc"
    And I type new password "abcdefghigklmnop1234567891011121"
    And I type confirm new password "abcdefghigklmnop1234567891011121"
    And I click on Change button
    And I redirect to settings page
      # Change password back to default
    And I click on "Change Your Password" button
    And I type password "abcdefghigklmnop1234567891011121"
    And I type new password "12345Abc"
    And I type confirm new password "12345Abc"
    And I click on Change button
  Scenario: Settings - New Password- Maximum (32+1) characters
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Password" button
    And I type password "12345Abc"
    And I type new password "abcdefghigklmnop12345678910111213"
    And I type confirm new password "abcdefghigklmnop12345678910111213"
    Then Message "Too long. Should be no more than 32 characters" appears
  Scenario: Settings - New Password- Whitespaces are not allowed-Leading spaces
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Password" button
    And I type password "12345Abc"
    And I type new password " 123A"
    And I type confirm new password " 123A"
    Then Message "Whitespaces are not allowed" appears
  Scenario: Settings - New Password- Whitespaces are not allowed-In-between spaces
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Password" button
    And I type password "12345Abc"
    And I type new password "123 A"
    And I type confirm new password "123 A"
    Then Message "Whitespaces are not allowed" appears
  Scenario: Settings - New Password- Whitespaces are not allowed-Trailing spaces
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Password" button
    And I type password "12345Abc"
    And I type new password "123A "
    And I type confirm new password "123A "
    Then Message "Whitespaces are not allowed" appears

  Scenario: Settings - Password- New Password must match Confirm Password
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Password" button
    And I type password "12345Abc"
    And I type new password "123Abc!@#"
    And I type confirm new password "456Rcd&"
    And I click outside the Confirm password field
    Then Message "Entered passwords should match" appears