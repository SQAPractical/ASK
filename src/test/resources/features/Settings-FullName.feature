Feature:Settings - Full Name
  Scenario: Settings - Full Name - Student - Allowable characters: Alphanumeric characters
    When I navigate to login page
    And  I type email "student7@gmail.com"
    And  I type password "12345Abc"
    And I click Sign In button
    And  I click "Settings" menu item
    And  I click on "Change Your Name" button
    And  deleted name on Settings page
    And I type new name "Ivan Ivanov12#$%"
    And I click on Change button


Scenario: Settings - Full Name - Student - Allowable characters: Special characters
  When I navigate to login page
  And I type email "student7@gmail.com"
  And I type password "12345Abc"
  And I click Sign In button
  And I click "Settings" menu item
  And I click on "Change Your Name" button
  And deleted name on Settings page
  And I type new name "@Qwerty Qwerty"

  Scenario: Settings - Full Name - Teacher - Allowable characters: Alphanumeric characters

    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Settings" menu item
    And I click on "Change Your Name" button
    And deleted name on Settings page
    And I type new name "1Anna Ivanova"

    Scenario: Settings - Full Name - Teacher - Allowable characters: Special characters

      When I navigate to login page
      And I type email "teacher1@gmail.com"
      And I type password "12345Abc"
      And I click Sign In button
      And I click "Settings" menu item
      And I click on "Change Your Name" button
      And deleted name on Settings page
      And I type new name "@Anna Ivanova"

      Scenario: Settings - Full Name - Student - Full name field required
        When I navigate to login page
        And I type email "student7@gmail.com"
        And I type password "12345Abc"
        And I click Sign In button
        And I click "Settings" menu item
        And I click on "Change Your Name" button
        And deleted name on Settings page
        And I type new name ""

      Scenario:Settings - Full Name - Teacher - Full name field required
        When I navigate to login page
        And I type email "teacher1@gmail.com"
        And I type password "12345Abc"
        And I click Sign In button
        And I click "Settings" menu item
        And I click on "Change Your Name" button
        And deleted name on Settings page
        And I type new name ""

        Scenario: Settings - Full Name - Student - Max 100 characters including 1 space between two words
          When I navigate to login page
          And I type email "student7@gmail.com"
          And I type password "12345Abc"
          And I click Sign In button
          And I click "Settings" menu item
          And I click on "Change Your Name" button
          And deleted name on Settings page
          And I type new name "qwertyqwertyqwertyqwertyqwertyqwertyqwertyqwer tyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyq"

        Scenario:  Settings - Full Name - Teacher - Max 100 characters including 1 space between two words
          When I navigate to login page
          And I type email "teacher1@gmail.com"
          And I type password "12345Abc"
          And I click Sign In button
          And I click "Settings" menu item
          And I click on "Change Your Name" button
          And deleted name on Settings page
          And I type new name "qwertyqwertyqwertyqwertyqwertyqwertyqwertyqwer tyqwertyqwertyqwertyqwertyqwertyqwertyqwertyqwertyq"





