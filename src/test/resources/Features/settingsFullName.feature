Feature: Settings - Full Name
  Scenario: Settings - Full Name - Latin char
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Name" button
    And I type new name "test test"
    And I click Change button
    Then text "test test" appears
    And I click "Change Your Name" button
    And I type new name "Sofia Teacher"
    And I click Change button

#  Scenario: Settings - Full Name - Field is required
#    When I open "login" page
#    And I type email "qa.sofi@gmail.com"
#    And I type password "12345"
#    And I click Sign In button
#    And I click on "Settings" menu item
#    And I click "Change Your Name" button
#    And I deleted name on settings page
#    And I click on text Changing User's Name
#    And I click Change button
#    Then text "This field is required" appears

  Scenario: Settings - Full Name - Max 256 characters including 1 space between two words
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Name" button
    And I type new name "ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg"
    And I click Change button
    Then text "ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg" appears
    And I click "Change Your Name" button
    And I type new name "Sofia Teacher"
    And I click Change button

  Scenario: Settings - Full Name - Max+1 characters not allowed
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Name" button
    And I type new name "ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg"
    And I click Change button
    Then text "Too long. Should be no more than 256 characters" appears

  Scenario: Settings - Full Name - Min 2 characters plus 1 space between two words
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Name" button
    And I type new name "a a"
    And I click Change button
    Then text "a a" appears
    And I click "Change Your Name" button
    And I type new name "Sofia Teacher"
    And I click Change button

   Scenario: Settings - Full Name - Trailing spaces are not allowed
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Name" button
    And I type new name "test test "
    And I click Change button
    Then text "Whitespaces are not allowed" appears

  Scenario: Settings - Full Name - Leading spaces are not allowed
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Settings" menu item
    And I click "Change Your Name" button
    And I type new name " test test"
    And I click Change button
    Then text "Whitespaces are not allowed" appears









