@predefined10
Scenario: Hello how are you
Given I open url "http://boardreader.com"
Then I should see page title as "Boardreader - Forum Search Engine"
Then element with xpath "//input[@id='title-query']" should be displayed
Then I click on element with xpath "//input[@id='title-query']"
When I type "Behavior Driven Development" into element with xpath "//input[@id='title-query']"
Then I wait for element with xpath "//div[@class='mdl-cell mdl-cell--12-col searchResultsBlock']" to be present
Then element with xpath "//div[@class='mdl-cell mdl-cell--12-col searchResultsBlock']" should contain text "Cucumber"

@predefined11
Scenario: Predefined steps for Ecosia
Given I open url "https://www.ecosia.org/"
Then I should see page title as "Ecosia - the search engine that plants trees"
Then element with xpath "//input[@name='q']" should be present
When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
Then I click on element with xpath "//button[@type='submit']"
Then I wait for element with xpath "//div[@class='offset-lg-1 col-lg-7 col-sm-12 mainline ']" to be present
Then element with xpath "//div[@class='offset-lg-1 col-lg-7 col-sm-12 mainline ']" should contain text "Cucumber"