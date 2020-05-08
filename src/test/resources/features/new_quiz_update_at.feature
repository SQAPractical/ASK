Feature: New_Quiz_update_at

  Scenario Outline: Verify that functional of Quiz as "Update at" works properly when edit single question(1)
    Given I open login page
    When I type email <email>
    And I type password <pass>
    And I click Sign in button
    Then text <text> appears
    Then I Click on quiz button, on the left menu
    Then I click on create new quiz button
    When I type "something" on title of quiz
    Then I click on Add Question button
    And I click on Single-Choice radio button
    Then I type "something" on Question name text area
    And I click on Option one radio button
    When I type "A" on name of options
    Then I click on Save button
    And I click on quiz that i have just created
    Then updated at field should be displayed
   #note: cannot make screenshot, so believe me, and write down time on paper
    And I wait for 5 sec
    And I click on edit button
    Then I click on Q one: something
    And I click on Option two radio button
    Then I click on Save button
    Then I click on quiz that i have just edited
    Then updated at field should be displayed
    #note: pay attention to the time of update, should be different
    Then I wait for 5 sec
    Then I delete quiz that I created
    Then I confirm that



    Examples:
      | email                       | pass           |      text           |
      # valid em/valid pass
      | "qa.sofi@gmail.com"         | "12345Abc"     | "Sug Teacher1"      |



  Scenario Outline: Verify that functional of Quiz as "Update at" works properly when you edit textual question
    Given I open login page
    When I type email <email>
    And I type password <pass>
    And I click Sign in button
    Then text <text> appears
    Then I Click on quiz button, on the left menu
    Then I click on create new quiz button
    When I type "something" on title of quiz
    Then I click on Add Question button
    Then I click on textual radio button
    Then I type "something?" on Question name text area
    Then I click on Save button
    And I click on quiz that i have just created
    Then updated at field should be displayed
     #note: cannot make screenshot, so believe me, and write down time on paper
    And I wait for 5 sec
    Then I click on edit button
    Then I click on Q one: something
    Then I type "somethin edited?" on Question name text area
    Then I click on Save button
    Then I click on quiz that i have just edited
    Then updated at field should be displayed
    #note: pay attention to the time of update, should be different
    Then I wait for 5 sec
    Then I delete quiz that I created
    Then I confirm that

    Examples:
      | email                       | pass           |      text           |
      # valid em/valid pass
      | "qa.sofi@gmail.com"         | "12345Abc"     | "Sug Teacher1"      |



  Scenario Outline: Verify that functional of Quiz as "Update at" works properly when you edit title of quiz
    Given I open login page
    When I type email <email>
    And I type password <pass>
    And I click Sign in button
    Then text <text> appears
    Then I Click on quiz button, on the left menu
    Then I click on create new quiz button
    When I type "something" on title of quiz
    Then I click on Add Question button
    Then I click on textual radio button
    Then I type "something?" on Question name text area
    Then I click on Save button
    And I click on quiz that i have just created
    Then updated at field should be displayed
     #note: cannot make screenshot, so believe me, and write down time on paper
    And I wait for 5 sec
    Then I click on edit button
    Then I type "Edit" on title of quiz
    Then I click on Save button
    Then I click on quiz that i have just edited
    Then updated at field should be displayed
    #note: pay attention to the time of update, should be different
    Then I wait for 5 sec
    Then I delete quiz that I created
    Then I confirm that

    Examples:
      | email                       | pass           |      text           |
      # valid em/valid pass
      | "qa.sofi@gmail.com"         | "12345Abc"     | "Sug Teacher1"      |