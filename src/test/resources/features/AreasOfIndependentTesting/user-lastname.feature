@scenario
Feature: User - Last name
  Scenario: User-Last Name - Alphanumerical $ Special characters
    Given I navigate to "Register Now" page
    And I type First Name "Anzxcna"
    And I type Last Name "DccFd"
    And I type email "qweddffe@mail.com" on "Registration" page
    And I type Group Code "av12"
    And I type password "12345" on "Registration" page
    And I type Confirm password "12345"
    And I click Register me button
    Then message "You have been Registered" appears
Scenario: User - Last name - Field is required
  Given I navigate to "Register now" page
  And I type First Name "Anna"
  And I type email "qweddffe@mail.com" on "Registration" page
  And I type Group Code "av12"
  And I type password "12345" on "Registration" page
  And I type Confirm password "12345"
  And I click Register me button
  Then message "Field is required" appears
  Scenario: User - Last name - Max characters
    Given I navigate to "Register Now" page
    And I type First Name "Anzxcna"
    And I type Last Name "sdfghgfdsdfghjkgfdsfghjklllllllllllllllyutresrdthjkhgfdhjkgfdhjkgfdxgggggghdghjklswikujyhtgrfedwsedrftgyhujklkjhgfdsadfghjkl;kjhgfdeswdfghjklkjhgfdsdfghjkl;kjhgfdsefghjkl;kjhgtfredwssdfghjkdfguhjhgftdesrdtfyguhijokjhgrdesrdtfyguhijokjihugytfrdesrdtftftff"
    And I type email "qwedde@mail.com" on "Registration" page
    And I type Group Code "av12"
    And I type password "12345" on "Registration" page
    And I type Confirm password "12345"
    And I click Register me button
    Then message "You have been Registered" appears
    Scenario: user - Last name - more than 254 characters
      Given I navigate to "Register Now" page
      And I type First Name "Anzxcna"
      And I type Last Name "sdfghgfasdsdfghjkgfdsfghjklllllllllllllllyutresrdthjkhgfdhjkgfdhjkgfdxgggggghdghjklswikujyhtgrfedwsedrftgyhujklkjhgfdsadfghjkl;kjhgfdeswdfghjklkjhgfdsdfghjkl;kjhgfdsefghjkl;kjhgtfredwssdfghjkdfguhjhgftdesrdtfyguhijokjhgrdesrdtfyguhijokjihugytfrdesrdtftftff"
      And I type email "qwedde@mail.com" on "Registration" page
      And I type Group Code "av12"
      And I type password "12345" on "Registration" page
      And I type Confirm password "12345"
      And I click Register me button
      Then message "Last Name 254 max charakters allowed" appears
      Scenario: User - Last name - min 1 character allowed
        Given I navigate to "Register Now" page
        And I type First Name "Anza"
        And I type Last Name "q"
        And I type email "qweddfde@mail.com" on "Registration" page
        And I type Group Code "av12"
        And I type password "12345" on "Registration" page
        And I type Confirm password "12345"
        And I click Register me button
        Then message "You have been Registered" appears
        Scenario: User - Last name - White spaces are not allowed
          Given I navigate to "Register Now" page
          And I type First Name "Anza"
          And I type Last Name "LO lo"
          And I type email "dklsoe@mail.com" on "Registration" page
          And I type Group Code "av12"
          And I type password "12345" on "Registration" page
          And I type Confirm password "12345"
          And I click Register me button
          Then message "White spaces are not allowed" appears
