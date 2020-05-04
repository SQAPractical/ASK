Feature: Quiz_Update_at

  Scenario Outline: Verify that functional of Quiz as "Update at" works properly when edit single question
    Given I open login page
    When I type email <email>
    And I type password <pass>
    And I click Sign in button
    And I wait for 1 sec
    Then text <text> appears
    Then I Click on quiz button, on the left menu
    And I wait for 2 sec
    Then I click on sad quiz
    And I wait for 5 sec
    Then updated at field should be displayed
    And I wait for 2 sec
    #Then make note updated at time
    Then I click on edit button
    And I wait for 1 sec
    Then I click on Q: Choose A
    And I wait for 2 sec
    Then I click on Add option
    And I wait for 1 sec
    When I type "A" on appeared text area
    And I wait for 2 sec
    Then I click on Save button
    And I wait for 10 sec
    Then I click on sad quiz
    And I wait for 1 sec
    Then updated at field should be displayed
    #Compare time and date between what appear now on "Update At" and  noted before
    #Everytime need to update option number to run auto.












    Examples:
      | email                       | pass           |      text           |
      # valid em/valid pass
      | "qa.sofi@gmail.com"         | "12345Abc"     | "Sug Teacher1" |




  Scenario Outline: Verify that functional of Quiz as "Update at" works properly when you edit textual question
    Given I open login page
    When I type email <email>
    And I type password <pass>
    And I click Sign in button
    And I wait for 1 sec
    Then text <text> appears
    Then I Click on quiz button, on the left menu
    And I wait for 2 sec
    Then I click on sad quiz
    And I wait for 5 sec
    Then updated at field should be displayed
    And I wait for 2 sec
    #Then make note updated at time
    Then I click on edit button
    And I wait for 2 sec
    Then I click on add question button
    And I wait for 2 sec
    Then I click on textual radio button
    And I wait for 2 sec
    Then I type "A" on Question name text area
    Then I click on Save button
    And I wait for 10 sec
    Then I click on sad quiz
    And I wait for 1 sec
    Then updated at field should be displayed
    #Compare time and date between what appear now on "Update At" and  noted before





    Examples:
      | email                       | pass           | text           |
      # valid em/valid pass
      | "qa.sofi@gmail.com"         | "12345Abc"     | "Sug Teacher1" |





    Scenario Outline: Verify that functional of Quiz as "Update at" works properly when you edit title of quiz
      Given I open login page
      When I type email <email>
      And I type password <pass>
      And I click Sign in button
      And I wait for 1 sec
      Then text <text> appears
      Then I Click on quiz button, on the left menu
      And I wait for 2 sec
      Then I click on sad quiz
      And I wait for 5 sec
      Then updated at field should be displayed
      And I wait for 2 sec
    #Then make note updated at time
      Then I click on edit button
      And I wait for 2 sec
      Then I type "A" on title of the quiz text field
      Then I click on Save button
      And I wait for 10 sec
      Then I click on sad quiz
      And I wait for 1 sec
      Then updated at field should be displayed
    #Compare time and date between what appear now on "Update At" and  noted before


      Examples:
        | email                       | pass           | text           |
      # valid em/valid pass
        | "qa.sofi@gmail.com"         | "12345Abc"     | "Sug Teacher1" |
