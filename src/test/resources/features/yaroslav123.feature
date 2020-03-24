Feature: Yaroslav

  @letsgo
  Scenario Outline: Go to google.com
    Given I open "google.com"
    And I type "github"
    And I push my branch on github git push --set-upstream origin name_of_your_branch
    And we add more
    And moregit