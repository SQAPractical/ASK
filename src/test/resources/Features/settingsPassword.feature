Feature: Settings-Password
  Scenario: Settings-Password-Alphanum and special chars
    When I open "login" page
    And I type email "student9@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Password" button
    And I type old password "12345Abc"
    And I type new password "vv95030"
    And I type "vv95030" to confirm new password
    And I click on Change button
    And I click on "Log Out" menu item
    And I click the same button on pop-up window
    And I type email "student9@gmail.com"
    And I type password "vv95030"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Password" button
    And I type old password "vv95030"
    And I type new password "12345Abc"
    And I type "12345Abc" to confirm new password
    And I click on Change button
    And I click on "Log Out" menu item
    And I click the same button on pop-up window

  Scenario: Settings-Password-New Password field required
    When I open "login" page
    And I type email "student9@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Password" button
    And I type old password "vv95030"
    And I click on New Password field
    And I click on Confirm New Password field
    Then text "This field is required" appears

  Scenario: Settings-Password-Max 32 chars
    When I open "login" page
    And I type email "student9@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Password" button
    And I type old password "12345Abc"
    And I type new password "1gkKM5676%0#hjHNMK45465768hjkh&y"
    And I type "1gkKM5676%0#hjHNMK45465768hjkh&y" to confirm new password
    And I click on Change button
    And I click on "Log Out" menu item
    And I click the same button on pop-up window
    And I type email "student9@gmail.com"
    And I type password "1gkKM5676%0#hjHNMK45465768hjkh&y"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Password" button
    And I type old password "1gkKM5676%0#hjHNMK45465768hjkh&y"
    And I type new password "12345Abc"
    And I wait for 2 sec
    And I type "12345Abc" to confirm new password
    And I click on Change button
    And I click on "Log Out" menu item
    And I click the same button on pop-up window

  Scenario: Settings-Password-Min 5 chars
    When I open "login" page
    And I type email "student9@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Password" button
    And I type old password "12345Abc"
    And I type new password "vv950"
    And I type "vv950" to confirm new password
    And I click on Change button
    And I click on "Log Out" menu item
    And I click the same button on pop-up window
    And I type email "student9@gmail.com"
    And I type password "vv950"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Password" button
    And I type old password "vv950"
    And I type new password "12345Abc"
    And I type "12345Abc" to confirm new password
    And I click on Change button
    And I click on "Log Out" menu item
    And I click the same button on pop-up window

  Scenario: Settings-Password-Min(5)-1 chars not allowed
    When I open "login" page
    And I type email "student9@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Password" button
    And I type old password "12345Abc"
    And I type new password "vv95"
    And I type "vv95" to confirm new password
    Then text "Too short. Should be at least 5 characters" appears

  Scenario: Settings-Password-leading spaces not allowed
    When I open "login" page
    And I type email "student9@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Password" button
    And I type old password "12345Abc"
    And I type new password " vv95030"
    And I type " vv95030" to confirm new password
    Then text "Whitespaces are not allowed" appears

  Scenario: Settings-Password-whitespaces not allowed
    When I open "login" page
    And I type email "student9@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Password" button
    And I type old password "12345Abc"
    And I type new password " vv 95030"
    And I type " vv 95030" to confirm new password
    Then text "Whitespaces are not allowed" appears

  Scenario: Settings-Password-trailing spaces not allowed
    When I open "login" page
    And I type email "student9@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Password" button
    And I type old password "12345Abc"
    And I type new password "vv95030 "
    And I type "vv95030 " to confirm new password
    Then text "Whitespaces are not allowed" appears

  Scenario: Settings-Password-new pass should match with confirm new pass
    When I open "login" page
    And I type email "student9@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Password" button
    And I type old password "12345Abc"
    And I type new password "vv95030"
    And I type "vv9503" to confirm new password
    Then text "Entered passwords should match" appears

  Scenario: Settings-Password-Max(33)+1 chars not allowed
    When I open "login" page
    And I type email "student9@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Password" button
    And I type old password "12345Abc"
    And I type new password "1gkKM5676%0#hjHNMK45465768hjkh&y1"
    And I type "1gkKM5676%0#hjHNMK45465768hjkh&y1" to confirm new password
    Then text "Too long. Should be no more than 32 characters" appears

#  Scenario: Settings-Password-Change password back after tc with bug
#    When I open "login" page
#    And I type email "student9@gmail.com"
#    And I type password "1gkKM5676%0#hjHNMK45465768hjkh&y1"
#    And I click Sign In button
#    And I click on "Settings" menu item
#    And I click "Change Your Password" button
#    And I type old password "1gkKM5676%0#hjHNMK45465768hjkh&y1"
#    And I type new password "12345Abc"
#    And I type "12345Abc" to confirm new password
#    And I click Change button
#    And I click on "Log Out" menu item
#    And I click the same button on pop-up window