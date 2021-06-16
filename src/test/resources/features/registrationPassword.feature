Feature: Registration Password
  Scenario: Registration-Password/Confirm password-Alphanumeric and special characters are allowed
   When I navigate to registration page
    And I click on register me button
    And I type first name "Ana"
    And I type last name "T"
    And I type email "qa123@gmail.com"
    And I type group code "147"
    And I type password "qwerty123?"
    And I confirm password "qwerty123?"
    And I click on register me button
    Then Text "You have been Registered" appears

   Scenario: Registration-Password/Confirm password-Field is required
    When I navigate to registration page
    And I click on register me button
    And I type first name "Ana"
    And I type last name "T"
    And I type email "qa123@gmail.com"
    And I type group code "147"
    And I type password ""
    And I confirm password ""
    And I click on register me button
    Then Text "This field is required" appears

    Scenario: Registration-password/confirm password-minimum 5 characters are allowed
     When I navigate to registration page
     And I click on register me button
     And I type first name "Ana"
     And I type last name "T"
     And I type email "qa123@gmail.com"
     And I type group code "147"
     And I type password "12345"
     And I confirm password "12345"
     And I click on register me button
     Then Text "You have been Registered." appears

     Scenario: Registration-Password/Confirm Password-maximum 32 characters are allowed
      When I navigate to registration page
      And I click on register me button
      And I type first name "Ana"
      And I type last name "T"
      And I type email "qa123@gmail.com"
      And I type group code "147"
      And I type password "01234567890123456789012345678932"
      And I confirm password "01234567890123456789012345678932"
      And I click on register me button
      Then Text "You have been Registered." appears

      Scenario: Registration-Password/Confirm Password- 4 characters are not allowed
       When I navigate to registration page
       And I click on register me button
       And I type first name "Ana"
       And I type last name "T"
       And I type email "qa123@gmail.com"
       And I type group code "147"
       And I type password "1234"
       And I confirm password "1234"
       And I click on register me button
       Then Text "Too short. Should be at least 5 characters" appears

       Scenario: Registration-Password/Confirm Password- 33 characters are not allowed
        When I navigate to registration page
        And I click on register me button
        And I type first name "Ana"
        And I type last name "T"
        And I type email "qa123@gmail.com"
        And I type group code "147"
        And I type password "012345678901234567890123456789123"
        And I confirm password "012345678901234567890123456789123"
        And I click on register me button
        Then Text "Whitespaces are not allowed" appears

        Scenario: Registration-Password/Confirm Password-Leading spaces are not allowed
         When I navigate to registration page
         And I click on register me button
         And I type first name "Ana"
         And I type last name "T"
         And I type email "qa123@gmail.com"
         And I type group code "147"
         And I type password " 1234"
         And I confirm password "1234"
         Then Text "Whitespaces are not allowed" appears

         Scenario: Registration-Password/Confirm password- Whitespace between the Password/Confirm Password are not allowed
          When I navigate to registration page
          And I click on register me button
          And I type first name "Ana"
          And I type last name "T"
          And I type email "qa123@gmail.com"
          And I type group code "147"
          And I type password "12 34"
          And I confirm password "12 34"
          Then Text "Whitespaces are not allowed" appears

          Scenario: Registration-Password/Confirm Password- Whitespace at the end are not allowed
           When I navigate to registration page
           And I click on register me button
           And I type first name "Ana"
           And I type last name "T"
           And I type email "qa123@gmail.com"
           And I type group code "147"
           And I type password "1234 "
           And I confirm password "1234 "
           Then Text "Whitespaces are not allowed" appears

           Scenario: Registration-Password/Confirm Password-Password and Confirm Password should match each other
            When I navigate to registration page
            And I click on register me button
            And I type first name "Ana"
            And I type last name "T"
            And I type email "qa123@gmail.com"
            And I type group code "147"
            And I type password "12345"
            And I confirm password "54321"
            Then Text "Entered passwords should match" appears







    