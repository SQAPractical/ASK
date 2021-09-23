Feature:Settings - Full Name

  Scenario: Settings - Full Name - Student - Allowable characters: Alphanumeric characters
    When I navigate to login page
    And  I type email "student7@gmail.com"
    And  I type password "12345Abc"
    And I click Sign In button
    And I click "Settings" menu item
    And I click on "Change Your Name" button
    And  deleted name on Settings page
    And I type new name "Ivan Ivanov12#$%"
    And I click on Change button
    Then Text "Ivan Ivanov12#$%" appears

  Scenario: Settings - Full Name - Student - Allowable characters: Special characters
    When I navigate to login page
    And I type email "student7@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Settings" menu item
    And I click on "Change Your Name" button
    And deleted name on Settings page
    And I type new name "@Qwerty Qwerty"
    And I click on Change button
    Then Text "@Qwerty Qwerty" appears

  Scenario: Settings - Full Name - Teacher - Allowable characters: Alphanumeric characters
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Settings" menu item
    And I click on "Change Your Name" button
    And deleted name on Settings page
    And I type new name "1Anna Ivanova"
    And I click on Change button
    Then Text "1Anna Ivanova" appears


  Scenario: Settings - Full Name - Student - Full name field required
    When I navigate to login page
    And I type email "student7@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Settings" menu item
    And I click on "Change Your Name" button
    And deleted name on Settings page
    And I type new name ""
    And I click on Change button
    Then Text "This field is required" appears

  Scenario:Settings - Full Name - Teacher - Full name field required
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Settings" menu item
    And I click on "Change Your Name" button
    And deleted name on Settings page
    And I type new name ""
    And I click on Change button
    Then Text "This field is required" appears

  Scenario: Settings - Full Name - Student - Max 100 characters including 1 space between two words
    When I navigate to login page
    And I type email "student7@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Settings" menu item
    And I click on "Change Your Name" button
    And deleted name on Settings page
    And I type new name "qwertyqwertyqwertyqwertyqwertyqwertyqwertyqwer tyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyq"
    And I click on Change button
    Then Text "qwertyqwertyqwertyqwertyqwertyqwertyqwertyqwer tyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyq" appears

  Scenario:  Settings - Full Name - Teacher - Max 100 characters including 1 space between two words
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Settings" menu item
    And I click on "Change Your Name" button
    And deleted name on Settings page
    And I type new name "qwertyqwertyqwertyqwertyqwertyqwertyqwertyqwer tyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqrrr"
    And I click on Change button
    Then Text "Too long. Should be no more than 100 characters" appears





