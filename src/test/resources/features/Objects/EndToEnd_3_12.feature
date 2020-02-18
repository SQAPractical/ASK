@EndToEnd_3_12 3.12 Teacher creates Quiz, searches students by group and assign Quiz to the group. All students from group get assignments
Feature: Teacher creates Quiz
  @EndToEnd_3_121
  Scenario: Teacher creates a Single-choice Question
    Given I open login page
    And I type teacher_email "teacher@mailinator.com" to the email_element
    And I type password "12345" to the login_passw_element
    And I click Sign in button
    And I wait for 2 sec
    And I click to the quizzes_menu_element
    And I wait for 2 sec
    And I click to the create_quiz_element
    Then titile_quiz_element should be displayed
    When I type text "AAATest A4" to the titile_quiz_element
    And I click to the add_quist_element
    Then single_choice_element should be presented
#    Click on "Single-Choice" radio button, Fill in the fields
    When I click to the single_choice_element
    And I type text "What is quality?" to the titile_quiest_element
    And I type text "Customer satisfaction" to the first_radio_quest_element
    And I type text "Developers' satisfaction" to the second_radio_quest_element
#    Check the box Is "Show-Stopper" question?, Click on the radio button by Option 1 to select correct answer, Click on "Save" button
    When I click to the first_radio_elem
    And I click to the save_quiz_element
    And I wait for 2 sec
#    Select Quiz from list and click "Preview", Question has label "Show-Stopper Question"
    When I click to the choosing_quiz_element with title "AAATest A4"
    And I click to the preview_quiz_element with title "AAATest A4"
    And I wait for 2 sec
    Then title_quiz_preview "AAATest A4" should be displayed


  @EndToEnd_3_122
  Scenario: searches students by group and assign Quiz to the group
    Given I open login page
    And I type teacher_email "teacher@mailinator.com" to the email_element
    And I type password "12345" to the login_passw_element
    And I click Sign in button
    And I wait for 2 sec
    And I click to the assign_menu_element
    Then list_assignments should be displayed

    When I click to the create_new_assign
    And I wait for 2 sec
    Then list_assign_students should be displayed
    When I click to open group
    And I wait for 2 sec
    And I click to choose group "2194"
    Then number_group "2194" should be displayed

    When I click to the select_quiz_assign
    And I click to the choosed_quiz "AAATest A4"
    And I click select_all_students
    And I click give_assignment button
    And I click logout_button
#    And I wait for 2 sec
    And I click confirm_logout_button
    And I wait for 2 sec
    And I type teacher_email "job.olgalomina@GMAIL.COM" to the email_element
    And I type password "12345" to the login_passw_element
    And I click Sign in button
    And I wait for 2 sec
    And I click to the my_assign_element
    Then list_my_assignments should be displayed
    And my_assigned_quiz with title "AAATest A4" should be displayed

