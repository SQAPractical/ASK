@registration
Feature: Group Code

  @registration1
  #Verify that Group Code field accepts Alphanumeric & Special characters
  Scenario: Alphanumeric & Special characters
   Given I navigate to "registration" page
   When I type "Tati" into First Name input field
   And I type "Mart" into Last Name input field
   And I type "tatimart0@mail.ru" into Email field
   And I type "2803" into Group Code field
   And I type "12345" into Password field
   And I type "12345" into Confirm Password field
   And I click on Register Me button
   And I wait for 3 sec
   Then text "You have been Registered." appears

    @registration2
    #Verify that empty field is not allowed
  Scenario: Group code field required, can’t be empty
   Given I navigate to "registration" page
   When I type "Tati" into First Name input field
   And I type "Mart" into Last Name input field
   And I type "tatimart1@mail.ru" into Email field
   And I type "" into Group Code field
   And I type "12345" into Password field
   And I type "12345" into Confirm Password field
   And I click on Register Me button
   Then text "This field is required" appears

  @registration3
    #Verify that Group Code field accept Min 1 characters
  Scenario: Group code field accept Min 1 character
  Given I navigate to "registration" page
  When I type "Tati" into First Name input field
  And I type "Mart" into Last Name input field
  And I type "tatimart2@mail.ru" into Email field
  And I type "1" into Group Code field
  And I type "12345" into Password field
  And I type "12345" into Confirm Password field
  And I click on Register Me button
  And I wait for 3 sec
  Then text "You have been Registered." appears

   @registration4
  #Verify that Group Code field accept Max 6 characters
  Scenario: Group code field accept Max 6 characters
   Given I navigate to "registration" page
   When I type "Tati" into First Name input field
   And I type "Mart" into Last Name input field
   And I type "tatimart3@mail.ru" into Email field
   And I type "123456" into Group Code field
   And I type "12345" into Password field
   And I type "12345" into Confirm Password field
   And I click on Register Me button
   And I wait for 3 sec
   Then text "You have been Registered." appears

     @registration5
   #Verify that Group Code field do not accept 7 characters
   Scenario: Group code field do not accept 7 characters
   Given I navigate to "registration" page
   When I type "Tati" into First Name input field
   And I type "Mart" into Last Name input field
   And I type "tatimart4@mail.ru" into Email field
   And I type "1234567" into Group Code field
   And I type "12345" into Password field
   And I type "12345" into Confirm Password field
   And I click on Register Me button
   Then text "Too long. Should be no more than 6 characters" appears

   @reqistration6
   #Verify that White spaces are not allowed in the Group field
   Scenario: White spaces are not allowed
   Given I navigate to "registration" page
   When I type "Tati" into First Name input field
   And I type "Mart" into Last Name input field
   And I type "tatimart5@mail.ru" into Email field
   And I type "123 5" into Group Code field
   And I type "12345" into Password field
   And I type "12345" into Confirm Password field
   And I click on Register Me button
   Then text "Should be a valid group code" appears
     #Test case fails because of the bug