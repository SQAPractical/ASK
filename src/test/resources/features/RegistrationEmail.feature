@registration
Feature: Email

  @registration1
  Scenario: Alphanumeric & Special characters
    Given I navigate to "registration" page
    When I type "Mimi" into First Name input field
    And I type "Miss" into Last Name input field
    And I type "olchiih_12@gmail.com" into Email field
    And I type "123" into Group Code field
    And I type "12345" into Password field
    And I type "12345" into Confirm Password field
    And I click on Register Me button
    And I wait for 3 sec
    Then text "You have been Registered." appears

  @registration2
    #Verify that empty field is not allowed
  Scenario: Empty field
    Given I navigate to "registration" page
    When I type "Olga" into First Name input field
    And I type "Su" into Last Name input field
    And I type "" into Email field
    And I type "123" into Group Code field
    And I type "12345" into Password field
    And I type "12345" into Confirm Password field
    And I click on Register Me button
    Then text "This field is required" appears

    @registration3
      #Verify that email (with Local port with 64 characters on the left of an @ domain on the right with 63 characters followed by (.) with 63 characters in last part of domain) is valid
    Scenario: Valid email
      Given I navigate to "registration" page
      When I type "Summer" into First Name input field
      And I type "Summer" into Last Name input field
      And I type "Test4qqqqqqttqwwwwwwwwwwrrrrrrrrrrttttttttttyyyyyyyyyyuuuuuuuuuu@Testqqqqqqqqqqwwwwwwwwwwrrrrrrrrrrttttttttttyyyyyyyyyyuuuugmail.comqqqqqqqqqqwwwwwwwwwwrrrrrrrrrrttttttttttyyyyyyyyyyuuuuuu" into Email field
      And I type "123" into Group Code field
      And I type "12345" into Password field
      And I type "12345" into Confirm Password field
      And I click on Register Me button
      And I wait for 3 sec
      Then text "You have been Registered." appears

      @registration4
        #Verify that Local port doesn`t accept 65 characters on the left of an @ domain
      Scenario: left side of domain
        Given I navigate to "registration" page
        When I type "Summer" into First Name input field
        And I type "Sun" into Last Name input field
        And I type "Test2tguuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuhhhhhhhhh@gmail.com" into Email field
        And I type "123" into Group Code field
        And I type "12345" into Password field
        And I type "12345" into Confirm Password field
        And I click on Register Me button
        Then text "Should be a valid email address" appears

        @registration5
          #Verify that Local port doesn`t accept 64 characters on the right side of domain
        Scenario: the right side of domain
    Given I navigate to "registration" page
    When I type "Sushi" into First Name input field
    And I type "Sunny" into Last Name input field
    And I type "Test13@Test1rqqqqqqqqqwwwwwwwwwwrrrrrrrrrrttttttttttyyyyyyyyyyuuuugmail.comqqqqqqqqqqwwwwwwwwwwrrrrrrrrrrttttttttttyyyyyyyyyyuuuuuu" into Email field
    And I type "123" into Group Code field
    And I type "12345" into Password field
    And I type "12345" into Confirm Password field
    And I click on Register Me button
    Then text "Should be a valid email address" appears

          @registration6
            #Verify that Local port doesn`t accept 64 characters in the last part of domain
          Scenario: last part of domain
            Given I navigate to "registration" page
            When I type "Sunny" into First Name input field
            And I type "Anya" into Last Name input field
            And I type "Test@gmail.comqrqqqqqqqqwwwwwwwwwwrrrrrrrrrrttttttttttyyyyyyyyyyuuuuuu1qqqq" into Email field
            And I type "123" into Group Code field
            And I type "12345" into Password field
            And I type "12345" into Confirm Password field
            And I click on Register Me button
            Then text "Should be a valid email address" appears

            @registration7
              #Verify that an @ domain not followed by (.)  will show notification "Should be a valid email address"
            Scenario: No (.)
    Given I navigate to "registration" page
    When I type "Anya" into First Name input field
    And I type "Anya" into Last Name input field
    And I type "Testing121@gmailcom" into Email field
    And I type "123" into Group Code field
    And I type "12345" into Password field
    And I type "12345" into Confirm Password field
    And I click on Register Me button
    Then text "Should be a valid email address" appears
              #Test case fails because of the bug

              @registration8
                # Verify that White spaces are not allowed
              Scenario: white spaces
                Given I navigate to "registration" page
                When I type "Anny" into First Name input field
                And I type "Anya" into Last Name input field
                And I type "Test ing@gmailcom" into Email field
                And I type "123" into Group Code field
                And I type "12345" into Password field
                And I type "12345" into Confirm Password field
                And I click on Register Me button
                Then text "Should be a valid email address" appears
