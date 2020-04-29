@sample2
Scenario: Email accepts invalid email format
Given I open url "http://skryabin.com/webdriver/html/sample.html"
Then I should see page title as "Sample Page"
When I type "qw" into element with xpath "//*[@name='email']"
And I click on element with xpath "//*[@id='password']"
Then element with xpath "//*[@id='email-error']" should contain text "email address"
When I clear element with xpath "//*[@name='email']"
And I type "abc@abc.com" into element with xpath "//*[@name='email']"
And I click on element with xpath "//*[@id='password']"
Then element with xpath "//label[@id='email-error']" should not be displayed
