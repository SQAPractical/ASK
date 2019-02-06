Feature:  3.1
  @EndToEnd
  Scenario: Create User
    When Navigate to login page
    And Push Register Now link
    And Type First Name  "Anton"
    And Type Last Name "Antonov"
    And Type Email "anton@antonov.com"
    And Type Group Code " 123456"
    And Type Password " 123456"
    And Type Confirm password " 123456"
    And Push Register Me button
    #  // Login as teacher and delete student
    And Type email "tanyasptest+6@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Delete Student with name "Anton Antonov"
    And Click Logout on left navigational panel