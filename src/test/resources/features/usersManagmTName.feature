Feature: User management - options in teachers account - Teachers column - Options- Change User's name
  Scenario: Teachers column - Options- Change User's name
    When I navigate to the login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "User's Management" on the left menu
    And I click on "Teachers" under User's Management
    And I click on any of the teacher in the list
    And I click "Options" button for teacher
    And I click "Change User's Name"
    Then window "Change User's Name" should appear

  Scenario:  User's management - Teacher - Change User name - Username required
    When I navigate to the login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "User's Management" on the left menu
    And I click on "Teachers" under User's Management
    And I click on any of the teacher in the list
    And I click "Options" button for teacher
    And I click "Change User's Name"
    And window "Change User's Name" should appear
    And click on "New User's Name" field
    And I clear "New User's Name" field
    Then "Change" button is disabled

  Scenario:  User's management - Teacher - Change User name - Username maximum characters
    When I navigate to the login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "User's Management" on the left menu
    And I click on "Teachers" under User's Management
    And I click on any of the teacher in the list
    And I click "Options" button for teacher
    And I click "Change User's Name"
    And window "Change User's Name" should appear
    And click on "New User's Name" field
    And I clear "New User's Name" field
    And I enter name "dvcghdcvjhdbhjbxjhbjbhdcvjhdcvdjhcvjdhefvcjherve vdhedgcjhbdcjdbcjhdsvcbhdavchjdscjvcjhvrewjcbhdfvp" to "New User's Name" field
    And I click on "Change" button
    Then new Name appears

  Scenario:  User's management - Teacher - Change User name - Username cannot have only first name or last name
    When I navigate to the login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "User's Management" on the left menu
    And I click on "Teachers" under User's Management
    And I click on any of the teacher in the list
    And I click "Options" button for teacher
    And I click "Change User's Name"
    And window "Change User's Name" should appear
    And click on "New User's Name" field
    And I clear "New User's Name" field
    And I enter name "Alex" to "New User's Name" field
    And I click on "Change" button
    Then new Name appears





