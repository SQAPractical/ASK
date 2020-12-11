Feature: Quiz - Title
  Scenario: Quiz - Title - Alphanumeric and special characters
    When I open "Login" page
    And I type email "1arbnora.rexhaj@walmart-web.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title "abc@#$123"
    And I click Add Question button
    Then text "Q1: new empty question" appears
    When I click "Textual" radio button
    And I type question "New Question"
    And I click "Save" button
    Then text "abc@#$123" appears

  Scenario: Quiz - Title- Field is Required
    When I open "Login" page
    And I type email "1arbnora.rexhaj@walmart-web.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title "3"
    And I delete title
    And I click Add Question button
    Then text "This field is required" appears

  Scenario: Quiz -Title - Min char (1)
    When I open "Login" page
    And I type email "1arbnora.rexhaj@walmart-web.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title "S"
    And I click Add Question button
    Then text "Q1: new empty question" appears
    When I click "Textual" radio button
    And I type question "New Question"
    And I click "Save" button
    Then text "S" appears

  Scenario: Quiz - Title - Max Char (1000)
    When I open "Login" page
    And I type email "1arbnora.rexhaj@walmart-web.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title "yufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhvyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhvyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhvyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhvyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlw"
    And I click Add Question button
    Then text "Q1: new empty question" appears
    When I click "Textual" radio button
    And I type question "New Question"
    And I click "Save" button
    Then text "yufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhvyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhvyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhvyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhvyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlw" appears

  Scenario: Quiz - Title - Max +1 Char (1001)
    When I open "Login" page
    And I type email "1arbnora.rexhaj@walmart-web.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title "yufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhvyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhvyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhvyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwwghhvyufdykfDLKfldFLIYFWDLIFIYLFWDLIfwdlikklwligdlwb"
    And I click Add Question button
    Then text "Q1: new empty question" appears
    And text "Too long. Should be no more than 1000 characters" appears

  ##Scenario: Quiz - Title - Leading and trailing space characters should be eliminated - could not be automated because it is impossible to verify
    ##When I open "Login" page
    ##And I type email "1arbnora.rexhaj@walmart-web.com"
    ##And I type password "12345"
    ##And I click Sign In button
    ##And I click on "Quizzes" menu item
    ##And I click "Create New Quiz" button
    ##And I type title " abcd "
    ##And I click Add Question button
    ##Then text "Q1: new empty question" appears
    ##When I click "Textual" radio button
    ##And I type question "New Question"
    ##And I click "Save" button
    ##Then text without whitespaces "abcd" appears

