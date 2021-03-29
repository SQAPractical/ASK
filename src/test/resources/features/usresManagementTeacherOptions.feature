Feature: User's Management - Options in Teacher's account - Change Name
  Scenario: User's management - Options in Teacher’s account - Change Name - to alphanumeric name (363)
    When I navigate to login page
    And I type email "sprogramado@dzw.fr"
    And I type password "22233"
    And I click on Sign In button
    And I click on User's Management button
    And I click on Teachers button
    And I click on "AnotherTeacher ForAutomation" name
    And I click on Options button
    And I click on Change User's Name button
    And I change name to "John Snow"
    And I click on Change button
    And I close mat-card
    And I click on Teachers button
    Then Text "John Snow" appears
    And I click on "John Snow" name
    And I click on Options button
    And I click on Change User's Name button
    And I change name to "AnotherTeacher ForAutomation"
    And I click on Change button

  Scenario: User's management - Options in Teacher’s account - Change Name - Field is required (365)
    When I navigate to login page
    And I type email "sprogramado@dzw.fr"
    And I type password "22233"
    And I click on Sign In button
    And I click on User's Management button
    And I click on Teachers button
    And I click on "AnotherTeacher ForAutomation" name
    And I click on Options button
    And I click on Change User's Name button
    And I delete User's Name
    And I press Enter on the keyboard
    Then Error message about required field appears

  Scenario: User's management - Options in Teacher’s account - Change Name - "Change" button is disable when field is empty (364)
    When I navigate to login page
    And I type email "sprogramado@dzw.fr"
    And I type password "22233"
    And I click on Sign In button
    And I click on User's Management button
    And I click on Teachers button
    And I click on "AnotherTeacher ForAutomation" name
    And I click on Options button
    And I click on Change User's Name button
    And I delete User's Name
    And I press Enter on the keyboard
    Then Change button is disabled

  Scenario: User's management - Options in Teacher’s account - Change Name - 3 words are not allowed (369)
    When I navigate to login page
    And I type email "sprogramado@dzw.fr"
    And I type password "22233"
    And I click on Sign In button
    And I click on User's Management button
    And I click on Teachers button
    And I click on "AnotherTeacher ForAutomation" name
    And I click on Options button
    And I click on Change User's Name button
    And I change name to "Name Lastname Lastname"
    Then Text "Should contain only first and last name latin characters" appears

  Scenario: User's management - Options in Teacher’s account - Change Name - Trailing spaces are not allowed (436)
    When I navigate to login page
    And I type email "sprogramado@dzw.fr"
    And I type password "22233"
    And I click on Sign In button
    And I click on User's Management button
    And I click on Teachers button
    And I click on "AnotherTeacher ForAutomation " name
    And I click on Options button
    And I click on Change User's Name button
    And I change name to "Olga Wilson "
    Then Text "Should contain only first and last name latin characters" appears

  Scenario: User's management - Options in Teacher’s account - Change Name - Leading spaces are not allowed (437)
    When I navigate to login page
    And I type email "sprogramado@dzw.fr"
    And I type password "22233"
    And I click on Sign In button
    And I click on User's Management button
    And I click on Teachers button
    And I click on "AnotherTeacher ForAutomation" name
    And I click on Options button
    And I click on Change User's Name button
    And I change name to " AnotherTeacher ForAutomation"
    Then Text "Should contain only first and last name latin characters" appears

  Scenario: User's management - Options in Teacher’s account - Change Name - Max 100 letters in Full name, space included (367)
    When I navigate to login page
    And I type email "sprogramado@dzw.fr"
    And I type password "22233"
    And I click on Sign In button
    And I click on User's Management button
    And I click on Teachers button
    And I click on "AnotherTeacher ForAutomation" name
    And I click on Options button
    And I click on Change User's Name button
    And I change name to "a abcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabc"
    And I click on Change button
    And I close mat-card
    And I click on Teachers button
    Then Text "a abcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabc" appears
    And I click on "a abcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabc" name
    And I click on Options button
    And I click on Change User's Name button
    And I change name to "AnotherTeacher ForAutomation"
    And I click on Change button

  Scenario: User's management - Options in Teacher’s account - Change Name - 101 letters in Full name are not allowed (435)
    When I navigate to login page
    And I type email "sprogramado@dzw.fr"
    And I type password "22233"
    And I click on Sign In button
    And I click on User's Management button
    And I click on Teachers button
    And I click on "AnotherTeacher ForAutomation" name
    And I click on Options button
    And I click on Change User's Name button
    And I change name to "a abcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeakbcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabc"
    Then Text "Too long. Should be no more than 100 characters" appears

  Scenario: User's management - Options in Teacher’s account - Change Name - digits are not allowed (370)
    When I navigate to login page
    And I type email "sprogramado@dzw.fr"
    And I type password "22233"
    And I click on Sign In button
    And I click on User's Management button
    And I click on Teachers button
    And I click on "AnotherTeacher ForAutomation" name
    And I click on Options button
    And I click on Change User's Name button
    And I change name to "123"
    Then Text "Should contain only first and last name latin characters" appears