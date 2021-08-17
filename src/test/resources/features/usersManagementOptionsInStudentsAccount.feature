@FullRegression
Feature: User's management - Options in Student's account
  Scenario: Change User's Name (Allowable characters: Alphanumeric and special characters)
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "Alla Shepelenko" from list of "Students"
    And I click on Options button
    And I click on menu item Change Users Name from dropdown list
    And I type text "A5@ A5@" in New User Name field
    And I click "Change" button in pop up window
    And I click on "Log Out" on left menu
    And I click "Log Out" button in pop up window
    And I type email "shepelenkoalla@bk.ru"
    And I type password "Qwertyu"
    And I click Sign In button
    Then "A5@ A5@" is displayed in top left corner

  Scenario: Change User's Name (Change last name in alphabetical characters)
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "A5@ A5@" from list of "Students"
    And I click on Options button
    And I click on menu item Change Users Name from dropdown list
    And I type text "Alla Shepelenko" in New User Name field
    And I click "Change" button in pop up window
    And I click on "Log Out" on left menu
    And I click "Log Out" button in pop up window
    And I type email "shepelenkoalla@bk.ru"
    And I type password "Qwertyu"
    And I click Sign In button
    Then "Alla Shepelenko" is displayed in top left corner

  Scenario: Change User's Name (Whitespaces are not allowed)
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "Alla Shepelenko" from list of "Student"
    And I click on Options button
    And I click on menu item Change Users Name from dropdown list
    And I type text "A a B b C c" in New User Name field
    And I click "Change" button in pop up window
    And "Change" button in pop up window is disabled
    Then Message "Whitespaces are not allowed" appears

  Scenario: Change User's Name (Min 2 characters + space)
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "A a B b C c" from list of "Students"
    And I click on Options button
    And I click on menu item Change Users Name from dropdown list
    And I type text "A B" in New User Name field
    And I click "Change" button in pop up window
    And I click on "Log Out" on left menu
    And I click "Log Out" button in pop up window
    And I type email "shepelenkoalla@bk.ru"
    And I type password "Qwertyu"
    And I click Sign In button
    Then "A B" is displayed in top left corner

  Scenario: Change User's Name (Max 98 characters (When the First name 1 char))
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "A B" from list of "Students"
    And I click on Options button
    And I click on menu item Change Users Name from dropdown list
    And I type text "A kshckdvhfjhfjcnvvknkkhkdkjvkjfdkfkfhfjhfkjjlsdfjdjklfjlasfjdkfjkfjlsjdkjfdkjsldjskffjsldjfkdfjkkkk" in New User Name field
    And I click "Change" button in pop up window
    And I click on "Log Out" on left menu
    And I click "Log Out" button in pop up window
    And I type email "shepelenkoalla@bk.ru"
    And I type password "Qwertyu"
    And I click Sign In button
    Then "A kshckdvhfjhfjcnvvknkkhkdkjvkjfdkfkfhfjhfkjjlsdfjdjklfjlasfjdkfjkfjlsjdkjfdkjsldjskffjsldjfkdfjkkkk" is displayed in top left corner

  Scenario: Change User's Name - negative (Max 99 characters (When the First name 1 char))
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "A kshckdvhfjhfjcnvvknkkhkdkjvkjfdkfkfhfjhfkjjlsdfjdjklfjlasfjdkfjkfjlsjdkjfdkjsldjskffjsldjfkdfjkkkk" from list of "Students"
    And I click on Options button
    And I click on menu item Change Users Name from dropdown list
    And I type text "A kshckdvhfjhfjcnvvknkkhkdkjvkjfdkfkfhfjhfkjjlsdfjdjklfjlasfjdkfjkfjlsjdkjfdkjsldjskffjsldjfkdfjkkkkk" in New User Name field
    And I click "Change" button in pop up window
    And "Change" button in pop up window is disabled
    Then Message "Too long. Should be no more than 100 characters" appears

  Scenario: Change User's Name BACK
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "A kshckdvhfjhfjcnvvknkkhkdkjvkjfdkfkfhfjhfkjjlsdfjdjklfjlasfjdkfjkfjlsjdkjfdkjsldjskffjsldjfkdfjkkkk" from list of "Students"
    And I click on Options button
    And I click on menu item Change Users Name from dropdown list
    And I type text "Alla Shepelenko" in New User Name field
    And I click "Change" button in pop up window
    And I click on "Log Out" on left menu
    And I click "Log Out" button in pop up window
    And I type email "shepelenkoalla@bk.ru"
    And I type password "Qwertyu"
    And I click Sign In button
    Then "Alla Shepelenko" is displayed in top left corner

  Scenario: Change User's Role (To Teacher)
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I click on Teacher tab
    And I select "Alla Shepelenko" from list of "Students"
    And I click on Options button
    And I click on menu item Change Users Role from dropdown list
    And I click "Change Role" button in pop up window
    And I click on "Log Out" on left menu
    And I click "Log Out" button in pop up window
    And I type email "shepelenkoalla@bk.ru"
    And I type password "Qwertyu"
    And I click Sign In button
    Then "TEACHER" is displayed in top left corner

  Scenario: Change User's Role (To Student)
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "Alla Shepelenko" from list of "Teachers"
    And I click on Options button
    And I click on menu item Change Users Role from dropdown list
    And I click "Change Role" button in pop up window
    And I click on "Log Out" on left menu
    And I click "Log Out" button in pop up window
    And I type email "shepelenkoalla@bk.ru"
    And I type password "Qwertyu"
    And I click Sign In button
    Then "STUDENT" is displayed in top left corner

  Scenario: Change User's Group (Allowable characters: Alphanumeric and special characters)
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "Alla Shepelenko" from list of "Students"
    And I click on Options button
    And I click on menu item Change Users Group from dropdown list
    And I type text "A5@" in New Users Group field
    And I click "Change" button in pop up window
    Then Group name "A5@" is displayed

  Scenario: Change User's Group (Group code field required, can’t be empty)
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "Alla Shepelenko" from list of "Students"
    And I click on Options button
    And I click on menu item Change Users Group from dropdown list
    And I clear New Users Group field
    And I click "Change" button in pop up window
    And "Change" button in pop up window is disabled
    Then Message "This field is required" appears

  Scenario: Change User's Group (Min 1 character)
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "Alla Shepelenko" from list of "Students"
    And I click on Options button
    And I click on menu item Change Users Group from dropdown list
    And I type text "%" in New Users Group field
    And I click "Change" button in pop up window
    Then Group name "%" is displayed

  Scenario: Change User's Group (Max 6 characters)
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "Alla Shepelenko" from list of "Students"
    And I click on Options button
    And I click on menu item Change Users Group from dropdown list
    And I type text "123456" in New Users Group field
    And I click "Change" button in pop up window
    Then Group name "123456" is displayed

  Scenario: Change User's Group (Max +1 characters)
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "Alla Shepelenko" from list of "Students"
    And I click on Options button
    And I click on menu item Change Users Group from dropdown list
    And I type text "1234567" in New Users Group field
    And I click "Change" button in pop up window
    And "Change" button in pop up window is disabled
    Then Message "Too long. Should be no more than 6 characters" appears

  Scenario: Change User's Group (Whitespaces are not allowed)
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "Alla Shepelenko" from list of "Students"
    And I click on Options button
    And I click on menu item Change Users Group from dropdown list
    And I type text " " in New Users Group field
    And I click "Change" button in pop up window
    And "Change" button in pop up window is disabled
    Then Message "Whitespaces are not allowed" appears

   Scenario: Delete User
    When I navigate to login page
    And I type email "shepelenkoalla82@gmail.com"
    And I type password "Qwertyu7"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select "test test123" from list of "Students"
    And I click on Options button
    And I click on menu item Delete User from dropdown list
    And I click "Delete" button in pop up window
    And I click on "Log Out" on left menu
    And I click "Log Out" button in pop up window
    And I type email "cabd@bitesatlanta.com"
    And I type password "12345Abc"
    And I click Sign In button
    Then "Authentication failed. User not found or password does not match" is displayed in top left corner






    