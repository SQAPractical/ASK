Feature: Setting - Full Name
  Scenario: Settings - Full Name - Clicking on "Cancel" button name will remain unchanged
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Log Out" is displayed on home page
    Then I select Settings from menu option
    And I click Change Your Name button
    Then Dialog box will appear
    And I click on Cancel button
    And Name "Anna Ivanova" will be displayed


  Scenario: Settings - Full Name - Required Field
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Log Out" is displayed on home page
    Then I select Settings from menu option
    And I click Change Your Name button
    Then Dialog box will appear
    Then I click on the text field
    Then I delete the name in the text field
    Then I click on disabled Change button
    Then Text "This field is required" appears


  Scenario: Settings - Full Name - 1 Character for first name and 1 character
  for last name with space in between allowed
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Log Out" is displayed on home page
    Then I select Settings from menu option
    And I click Change Your Name button
    Then Dialog box will appear
    Then I click on the text field
    Then I delete the name in the text field
    And I type "A" space "I" in the text field
    Then I click Change button
    And Changed name "A I" is displayed

  Scenario: Settings - Full Name - 1 Alphabetical Character Not Allowed
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Log Out" is displayed on home page
    Then I select Settings from menu option
    And I click Change Your Name button
    Then Dialog box will appear
    Then I click on the text field
    Then I delete the name in the text field
    Then I type "A"
    Then I click on disabled Change button
    Then Text "Should contain only first and last name latin characters" appears


  Scenario: Settings - Full Name - Max 100 alphabetical characters allowed
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Log Out" is displayed on home page
    Then I select Settings from menu option
    And I click Change Your Name button
    Then Dialog box will appear
    Then I click on the text field
    Then I delete the name in the text field
    And I type "Anna" space "IvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvan" in the text field
    Then I click Change button
    And Changed name "Anna IvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvan" is displayed

  Scenario: Settings - Full Name - Max 100 + 1 alphabetical characters not allowed
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Log Out" is displayed on home page
    Then I select Settings from menu option
    And I click Change Your Name button
    Then Dialog box will appear
    Then I click on the text field
    Then I delete the name in the text field
    And I type "Anna" space "IvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvanovaIvano" in the text field
    Then I click Change button
    Then Text "Too long. Should be no more than 100 characters" appears

  Scenario: Settings - Full Name - Numerical and special characters not allowed
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Log Out" is displayed on home page
    Then I select Settings from menu option
    And I click Change Your Name button
    Then Dialog box will appear
    Then I click on the text field
    Then I delete the name in the text field
    And I type "&" space "5" in the text field
    Then I click Change button
    Then Text "Should contain only first and last name latin characters" appears

  Scenario: Settings - Full Name - Leading and trailing whitespace not allowed
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Log Out" is displayed on home page
    Then I select Settings from menu option
    And I click Change Your Name button
    Then Dialog box will appear
    Then I click on the text field
    Then I delete the name in the text field
    Then I type " Anna" space "Ivanova "
    Then I click Change button
    Then Text "Should contain only first and last name latin characters" appears




