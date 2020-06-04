
@predefined11
Scenario: Predefined steps for Ecosia
Given I open url "https://www.ecosia.org/"
Then I should see page title as "Ecosia - the search engine that plants trees"
Then element with xpath "//input[@name='q']" should be present
When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
Then I click on element with xpath "//button[@type='submit']"
Then I wait for element with xpath "//div[@class='offset-lg-1 col-lg-7 col-sm-12 mainline ']" to be present
Then element with xpath "//div[@class='offset-lg-1 col-lg-7 col-sm-12 mainline ']" should contain text "Cucumber"