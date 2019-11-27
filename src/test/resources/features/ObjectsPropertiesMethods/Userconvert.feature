Feature: Userconvert

  Scenario: User - Convert - Teacher can change user's role student to teacher
    Given I navigate to "login" page
    And I type email "xjnrdnpathake@b4top.tk" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
    And I click "Users management"
    And I select student on users management page "Vladimir Vladimirov"
    And I click "Options" button
    Then I select option "Change User's Role"
    And I click "Change role" sign
    Then User role "TEACHER" appears on user-details page

  Scenario: User - Convert - Teacher can change user's role Teacher to Student
    Given I navigate to "login" page
    And I type email "xjnrdnpathake@b4top.tk" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
    And I click "Users management"
    And I click "Teachers" tab
    And I select Teacher on users management page "Vladimir Vladimirov"
    And I click "Options" button
    Then I select option "Change User's Role"
    And I click "Change role" sign
    Then User role "STUDENT" appears on user-details page