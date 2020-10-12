@predefined1
Scenario: Bing engine
Given I open url "https://www.bing.com/"
Then I should see page title as "Bing"
Then element with xpath "//input[@id='sb_form_q']" should be present
When I type "Selenium" into element with xpath "//input[@id='sb_form_q']"
Then I click on element using JavaScript with xpath "//input[@name='search']"
Then I wait for element with xpath "//ol[@id='b_results']" to be present
Then element with xpath "//ol[@id='b_results']" should contain text "Selenium"