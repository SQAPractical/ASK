Feature: testing login
  Scenario: To verify that user is able to login with valid credentials
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I should see page title as "Assessment Control @ Portnov"
    When I type email qa.sofi@gmail.com into element with xpath "//input[@id='mat-input-0']"
    And I type password 12345 into element with xpath "//input[@id='mat-input-1']"
    Then I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-primary']"
    Then I wait for element with xpath "//mat-sidenav-container[@class='example-container mat-drawer-container mat-sidenav-container mat-drawer-transition']" to be present
    And I wait for 3 sec