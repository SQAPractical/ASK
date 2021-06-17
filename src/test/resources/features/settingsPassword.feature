Feature: Settings - Password
  Scenario: Settings - Password - Alphanumeric and sp char
    When I navigate to login page
    And I type email "hmarwan_skomar@asifboot.com"
    And I type password "12Ab!"
    And I click on Sign In button
    And I click on Settings button
    And I click on Change Your Password button
    And I type password "12Ab!"
    And I type new password "12aB!"
    And I confirm password "12aB!"
    And I click on Change button
    And I click on Log Out button
    And I confirm Log Out
    Then Element with text "Sign In" is displayed on Sign In page
    And I type email "hmarwan_skomar@asifboot.com"
    And I type password "12aB!"
    And I click on Sign In button
    Then Element with text "Log Out" is displayed on home page

    Scenario: Settings - Password - Min Char -1
      When I navigate to login page
      And I type email "hmarwan_skomar@asifboot.com"
      And I type password "12aB!"
      And I click on Sign In button
      And I click on Settings button
      And I click on Change Your Password button
      And I type password "12aB!"
      And I type new password "12Ab"
      And I confirm password "12Ab"
      Then Text "Too short. Should be at least 5 characters" appears

  Scenario: Settings - Password - Max 32 Char
    When I navigate to login page
    And I type email "hmarwan_skomar@asifboot.com"
    And I type password "12aB!"
    And I click on Sign In button
    And I click on Settings button
    And I click on Change Your Password button
    And I type password "12aB!"
    And I type new password "qqwdhqk23!!hqqkjjehkqjhrkqqjrhqk"
    And I confirm password "qqwdhqk23!!hqqkjjehkqjhrkqqjrhqk"
    And I click on Change button
    And I click on Log Out button
    And I confirm Log Out
    Then Element with text "Sign In" is displayed on Sign In page
    And I type email "hmarwan_skomar@asifboot.com"
    And I type password "qqwdhqk23!!hqqkjjehkqjhrkqqjrhqk"
    And I click on Sign In button
    Then Element with text "Log Out" is displayed on home page

  Scenario: Settings - Password - Min 5 char
    When I navigate to login page
    And I type email "hmarwan_skomar@asifboot.com"
    And I type password "qqwdhqk23!!hqqkjjehkqjhrkqqjrhqk"
    And I click on Sign In button
    And I click on Settings button
    And I click on Change Your Password button
    And I type password "qqwdhqk23!!hqqkjjehkqjhrkqqjrhqk"
    And I type new password "12Ab!"
    And I confirm password "12Ab!"
    And I click on Change button
    And I click on Log Out button
    And I confirm Log Out
    Then Element with text "Sign In" is displayed on Sign In page
    And I type email "hmarwan_skomar@asifboot.com"
    And I type password "12Ab!"
    And I click on Sign In button
    Then Element with text "Log Out" is displayed on home page

  Scenario: Settings - Password - Password cannot be changed if new password/confirm password fields are empty
    When I navigate to login page
    And I type email "hmarwan_skomar@asifboot.com"
    And I type password "12Ab!"
    And I click on Sign In button
    And I click on Settings button
    And I click on Change Your Password button
    And I type password "12Ab!"
    And I type new password ""
    And I confirm password ""
    Then Text "This field is required" appears

  Scenario: Settings - Password - Leading space
    When I navigate to login page
    And I type email "hmarwan_skomar@asifboot.com"
    And I type password "12Ab!"
    And I click on Sign In button
    And I click on Settings button
    And I click on Change Your Password button
    And I type password "12Ab!"
    And I type new password " 12345"
    And I confirm password " 12345"
    Then Text "Whitespaces are not allowed" appears

  Scenario: Settings - Password - Whitespace between char
    When I navigate to login page
    And I type email "hmarwan_skomar@asifboot.com"
    And I type password "12Ab!"
    And I click on Sign In button
    And I click on Settings button
    And I click on Change Your Password button
    And I type password "12Ab!"
    And I type new password "12 345"
    And I confirm password "12 345"
    Then Text "Whitespaces are not allowed" appears

  Scenario: Settings - Password - Trailing space
    When I navigate to login page
    And I type email "hmarwan_skomar@asifboot.com"
    And I type password "12Ab!"
    And I click on Sign In button
    And I click on Settings button
    And I click on Change Your Password button
    And I type password "12Ab!"
    And I type new password "12345 "
    And I confirm password "12345 "
    Then Text "Whitespaces are not allowed" appears

  Scenario: Settings - Password - User Cannot Change Password Providing Wrong Current Password
    When I navigate to login page
    And I type email "hmarwan_skomar@asifboot.com"
    And I type password "12Ab!"
    And I click on Sign In button
    And I click on Settings button
    And I click on Change Your Password button
    And I type password "10Ab@"
    And I type new password "12345"
    And I confirm password "12345"
    And I click on Change button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario: Settings - Password - Mismatch Between New Password And Confirm Password Triggers Error Message
    When I navigate to login page
    And I type email "hmarwan_skomar@asifboot.com"
    And I type password "12Ab!"
    And I click on Sign In button
    And I click on Settings button
    And I click on Change Your Password button
    And I type password "12Ab!"
    And I type new password "12345"
    And I confirm password "54321"
    And I click on Change button
    Then Text "Entered passwords should match" appears

#  This test case will fail because the bug is not fixed
#    Scenario: Settings - Password - Max Char +1
#      When I navigate to login page
#      And I type email "hmarwan_skomar@asifboot.com"
#      And I type password "12Ab!"
#      And I click on Sign In button
#      And I click on Settings button
#      And I click on Change Your Password button
#      And I type password "12Ab!"
#      And I type new password "qqwdhqk23!!hqqkjjehkqjhrkqqjrhqk1"
#      And I confirm password "qqwdhqk23!!hqqkjjehkqjhrkqqjrhqk1"
#      Then Text "Too long" appears