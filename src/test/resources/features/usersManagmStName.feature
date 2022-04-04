@UM
Feature: Automate test set User's management
  Scenario: Options in Student's account Change Name
    When I navigate to login page
    And  I type email "mike18blue@anatolygroup.com"
    And  I type password "password123"
    And  I click on Sign In button
    And  I click on User's management tab on the left side menu
    And  I choose Student from the list
    And  I click Option button
    And  I click Change User's name option
    And  I delete user name
    And  I type new student name "Alan Alan"
    And  I click on Change button
    And  I click on User's management tab on the left side menu
    Then Message "Alan Alan" appears
  Scenario: Change User's name - Field Required
    When I navigate to login page
    And  I type email "mike18blue@anatolygroup.com"
    And  I type password "password123"
    And  I click on Sign In button
    And  I click on User's management tab on the left side menu
    And  I choose Student from the list
    And  I click Option button
    And  I click Change User's name option
    And  I delete user name
    And  I type new student name ""
    And  I click on Change button
    Then Message "This field is required" appears
  Scenario: Change User's name - Maximum 100 Characters
    When I navigate to login page
    And  I type email "mike18blue@anatolygroup.com"
    And  I type password "password123"
    And  I click on Sign In button
    And  I click on User's management tab on the left side menu
    And  I choose Student from the list
    And  I click Option button
    And  I click Change User's name option
    And  I delete user name
    And  I type new student name "hjfkhgfhgfhgfhgfsdvfgdhjdhsfhgdhjdgjsfghfdgjdfhsfghgdjsfhsfjgjghjdgjghjgdhjghjhgjghjghjfgjghjfghjjhj"
    And  I click on Change button
    And  I click on User's management tab on the left side menu
    Then Message "hjfkhgfhgfhgfhgfsdvfgdhjdhsfhgdhjdgjsfghfdgjdfhsfghgdjsfhsfjgjghjdgjghjgdhjghjhgjghjghjfgjghjfghjjhj" appears
    And  I choose Student "hjfkhgfhgfhgfhgfsdvfgdhjdhsfhgdhjdgjsfghfdgjdfhsfghgdjsfhsfjgjghjdgjghjgdhjghjhgjghjghjfgjghjfghjjhj"from the list
    And  I click Option button
    And  I click Change User's name option
    And  I delete user name
    And  I type new student name "Alan Alan"
    And  I click on Change button
Scenario: Change User's Name field cannot be saved with 100 + 1 characters.
  When I navigate to login page
  And  I type email "mike18blue@anatolygroup.com"
  And  I type password "password123"
  And  I click on Sign In button
  And  I click on User's management tab on the left side menu
  And  I choose Student from the list
  And  I click Option button
  And  I click Change User's name option
  And  I delete user name
  And  I type new student name "hjfkhgfhgfhgfhgfsdvfgdhjdhsfhgdhjdgjsfghfdgjdfhsfghgdjsfhsfjgjghjdgjghjgdhjghjhgjghjghjfgjghjfghjjhjs"
  And  I click on Change button
  Then Message "Too long. Should be no more than 100 characters" appears
  Scenario: Change User's name - Minimum 2 Characters
    When I navigate to login page
    And  I type email "mike18blue@anatolygroup.com"
    And  I type password "password123"
    And  I click on Sign In button
    And  I click on User's management tab on the left side menu
    And  I choose Student from the list
    And  I click Option button
    And  I click Change User's name option
    And  I delete user name
    And  I type new student name "hh"
    And  I click on Change button
    And  I click on User's management tab on the left side menu
    Then Message "hh" appears
    And  I choose Student "hh"from the list
    And  I click Option button
    And  I click Change User's name option
    And  I delete user name
    And  I type new student name "Alan Alan"
    And  I click on Change button

