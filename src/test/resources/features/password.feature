Feature: password

  @password1
<<<<<<< HEAD
  Scenario: Alphanumeric & Special characters
    Given I open "login" page
<<<<<<< HEAD
    Then I type email "6thalaivaveriya@9phum.com"
    Then I type a password "Test123"
    Then I click Sign in button
    And I click settings button
=======
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    And I click Sign in button
    And I wait 3 seconds
    Then I click on "Settings" on the side
>>>>>>> master
    Then I Click "Change password" and I type in "Test123" in password and "Test123!@" in new password and "Test123!@" in confirm password
||||||| merged common ancestors
<<<<<<<<< Temporary merge branch 1
  Scenario: Alphanumeric & Special characters
    Given I open "login" page
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    And I click Sign in button
    And I wait 3 seconds
    Then I click on "Settings" on the side
    Then I Click "Change password" and I type in "Test123" in password and "Test123!@" in new password and "Test123!@" in confirm password
||||||||| merged common ancestors
  Scenario: Alphanumeric & Special characters
    Given I open "login" page
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    Then I click Signin button
    Then I click on "Settings" on the side
    Then I Click "Change password" and I type in "Test123" in password and "Test123!@" in new password and "Test123!@" in confirm password
=========
  Scenario Outline: Alphanumeric & Special characters
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np          | npc         |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "Test123!@" | "Test123!@" |
>>>>>>>>> Temporary merge branch 2
=======
  Scenario Outline: Alphanumeric & Special characters
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np          | npc         |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "Test123!@" | "Test123!@" |
>>>>>>> 357da037ff4da5dd88874751fa028f3d3a10fb0b

  @password2
<<<<<<< HEAD
  Scenario: Change Password-Less than 5 characters
    Given I open "login" page
<<<<<<< HEAD
    Then I type email "6thalaivaveriya@9phum.com"
    Then I type a password "Test123"
    Then I click Sign in button
    And I click settings button
=======
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    And I click Sign in button
    And I wait 3 seconds
    Then I click on "Settings" on the side
>>>>>>> master
    Then I Click "Change password" and I type in "Test123" in password and "Te" in new password and "Te" in confirm password
    Then Text "Too short. Should be at least 5 characters" appears

  @password3
  Scenario: password more then 35 characters
    Given I open "login" page
<<<<<<< HEAD
    Then I type email "6thalaivaveriya@9phum.com"
    Then I type a password "Test123"
||||||| merged common ancestors
<<<<<<<<< Temporary merge branch 1
  Scenario: Change Password-Less than 5 characters
    Given I open "login" page
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    And I click Sign in button
    And I wait 3 seconds
    Then I click on "Settings" on the side
    Then I Click "Change password" and I type in "Test123" in password and "Te" in new password and "Te" in confirm password
    Then Text "Too short. Should be at least 5 characters" appears
||||||||| merged common ancestors
  Scenario: Change Password-Less than 5 characters
    Given I open "login" page
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    Then I click Signin button
    Then I click on "Settings" on the side
    Then I Click "Change password" and I type in "Test123" in password and "Te" in new password and "Te" in confirm password
    Then text "Too short. Should be at least 5 characters" Appears
=========
  Scenario Outline: Change Password-Less than 5 characters
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
=======
  Scenario Outline: Change Password-Less than 5 characters
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
>>>>>>> 357da037ff4da5dd88874751fa028f3d3a10fb0b
    Then I click Sign in button
    And I click settings button
<<<<<<< HEAD
=======
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    And I click Sign in button
    And I wait 3 seconds
    Then I click on "Settings" on the side
>>>>>>> master
    Then I Click "Change password" and I type in "Test123" in password and "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" in new password and "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" in confirm password
||||||| merged common ancestors
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Then Text <text> appears
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np   | npc  | text                                         |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "Te" | "Te" | "Too short. Should be at least 5 characters" |
>>>>>>>>> Temporary merge branch 2

<<<<<<<<< Temporary merge branch 1
  @password3 #Known bug see bug A6-121 in jira
  Scenario: password more then 35 characters
    Given I open "login" page
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    And I click Sign in button
    And I wait 3 seconds
    Then I click on "Settings" on the side
    Then I Click "Change password" and I type in "Test123" in password and "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" in new password and "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" in confirm password
||||||||| merged common ancestors
  @password3 #Known bug see bug A6-121 in jira
  Scenario: password more then 35 characters
    Given I open "login" page
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    Then I click Signin button
    Then I click on "Settings" on the side
    Then I Click "Change password" and I type in "Test123" in password and "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" in new password and "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" in confirm password
=========
  @password3
  Scenario Outline: password more then 35 characters
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np                                  | npc                                 |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" | "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" |
>>>>>>>>> Temporary merge branch 2
=======
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Then Text <text> appears
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np   | npc  | text                                         |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "Te" | "Te" | "Too short. Should be at least 5 characters" |

  @password3
  Scenario Outline: password more then 35 characters
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np                                  | npc                                 |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" | "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" |
>>>>>>> 357da037ff4da5dd88874751fa028f3d3a10fb0b

  @password4
<<<<<<< HEAD
  Scenario: white spaces not allowed
    Given I open "login" page
<<<<<<< HEAD
    Then I type email "6thalaivaveriya@9phum.com"
    Then I type a password "Test123"
    Then I click Sign in button
    And I click settings button
=======
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    And  I click Sign in button
    And I wait 3 seconds
    Then I click on "Settings" on the side
>>>>>>> master
    Then I Click "Change password" and I type in "Test123" in password and "T e" in new password and "T e" in confirm password
    Then Text "Whitespaces are not allowed" appears
||||||| merged common ancestors
<<<<<<<<< Temporary merge branch 1
  Scenario: white spaces not allowed
    Given I open "login" page
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    And  I click Sign in button
    And I wait 3 seconds
    Then I click on "Settings" on the side
    Then I Click "Change password" and I type in "Test123" in password and "T e" in new password and "T e" in confirm password
    Then Text "Whitespaces are not allowed" appears
||||||||| merged common ancestors
  Scenario: white spaces not allowed
    Given I open "login" page
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    Then I click Signin button
    Then I click on "Settings" on the side
    Then I Click "Change password" and I type in "Test123" in password and "T e" in new password and "T e" in confirm password
    Then text "Whitespaces are not allowed" Appears
=========
  Scenario Outline: white spaces not allowed
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Then Text <text> appears
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np    | npc   | text                          |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "T e" | "T e" | "Whitespaces are not allowed" |
>>>>>>>>> Temporary merge branch 2
=======
  Scenario Outline: white spaces not allowed
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Then Text <text> appears
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np    | npc   | text                          |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "T e" | "T e" | "Whitespaces are not allowed" |
>>>>>>> 357da037ff4da5dd88874751fa028f3d3a10fb0b

  @password5
<<<<<<< HEAD
  Scenario: Passwords must match
    Given I open "login" page
<<<<<<< HEAD
    Then I type email "6thalaivaveriya@9phum.com"
    Then I type a password "Test123"
    Then I click Sign in button
    And I click settings button
=======
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    And  I click Sign in button
    And I wait 3 seconds
    Then I click on "Settings" on the side
>>>>>>> master
    Then I Click "Change password" and I type in "Test123" in password and "Tasdsade" in new password and "Tafdaae" in confirm password
    Then Text "Entered passwords should match" appears
||||||| merged common ancestors
<<<<<<<<< Temporary merge branch 1
  Scenario: Passwords must match
    Given I open "login" page
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    And  I click Sign in button
    And I wait 3 seconds
    Then I click on "Settings" on the side
    Then I Click "Change password" and I type in "Test123" in password and "Tasdsade" in new password and "Tafdaae" in confirm password
    Then Text "Entered passwords should match" appears
||||||||| merged common ancestors
  Scenario: Passwords must match
    Given I open "login" page
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    Then I click Signin button
    Then I click on "Settings" on the side
    Then I Click "Change password" and I type in "Test123" in password and "Tasdsade" in new password and "Tafdaae" in confirm password
    Then text "Entered passwords should match" Appears
=========
  Scenario Outline: Passwords must match
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Then Text <text> appears
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np         | npc       | text                             |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "Tasdsade" | "Tafdaae" | "Entered passwords should match" |
>>>>>>>>> Temporary merge branch 2
=======
  Scenario Outline: Passwords must match
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Then Text <text> appears
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np         | npc       | text                             |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "Tasdsade" | "Tafdaae" | "Entered passwords should match" |
>>>>>>> 357da037ff4da5dd88874751fa028f3d3a10fb0b

  @password6
<<<<<<< HEAD
  Scenario: New password field cannot be blank
    Given I open "login" page
<<<<<<< HEAD
    Then I type email "6thalaivaveriya@9phum.com"
    Then I type a password "Test123"
    Then I click Sign in button
    And I click settings button
    Then I Click "Change password" and I type in "Test123" in password and "" in new password and "" in confirm password
    Then Text "This field is required" appears









=======
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    And I click Sign in button
    And I wait 3 seconds
    Then I click on "Settings" on the side
    Then I Click "Change password" and I type in "Test123" in password and "" in new password and "" in confirm password
    Then Text "This field is required" appears
>>>>>>> master

||||||| merged common ancestors
<<<<<<<<< Temporary merge branch 1
  Scenario: New password field cannot be blank
    Given I open "login" page
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    And I click Sign in button
    And I wait 3 seconds
    Then I click on "Settings" on the side
    Then I Click "Change password" and I type in "Test123" in password and "" in new password and "" in confirm password
    Then Text "This field is required" appears
||||||||| merged common ancestors
  Scenario: New password field cannot be blank
    Given I open "login" page
    Then I type in "6thalaivaveriya@9phum.com" in email
    Then I type in "Test123"in password
    Then I click Signin button
    Then I click on "Settings" on the side
    Then I Click "Change password" and I type in "Test123" in password and "" in new password and "" in confirm password
    Then text "This field is required" Appears








=========
  Scenario Outline: New password field cannot be blank
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Then Text <text> appears
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np | npc | text                     |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "" | ""  | "This field is required" |








>>>>>>>>> Temporary merge branch 2

=======
  Scenario Outline: New password field cannot be blank
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Then Text <text> appears
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np | npc | text                     |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "" | ""  | "This field is required" |
>>>>>>> 357da037ff4da5dd88874751fa028f3d3a10fb0b
