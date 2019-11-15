Feature: Application

  Scenario: Username - minimal field length
    Given I open url "https://skryabin.com/webdriver/html/sample.html"
    Then I should see page Title as "Sample Page"
    When I type "12" into element with xpath "//*[@id='sampleForm']/fieldset/section/div/div[1]/div[2]/div[1]/input"
    When I type "123456" into element with xpath "//*[@id='name']"
    When I type "12345@gmail.com" into element with xpath "//*[@id='sampleForm']/fieldset/section/div/div[1]/div[2]/div[2]/input"
    When I type "12345" into element with xpath "//*[@id='password']"
    When I type "12345" into element with xpath "//*[@id='confirmPassword']"
    Then I click on element using JavaScript with xpath "//*[@id='sampleForm']/fieldset/section/div/div[2]/div/div[13]/label/input"
    Then I click on element using JavaScript with xpath "//*[@id='formSubmit']"
    #Then I wait for element with xpath "//*[@id='samplePageResult']/fieldset/legend" to be present
    #Then element with xpath "//*[@id='samplePageResult']/fieldset/legend" should contain text "Submitted sample form data"