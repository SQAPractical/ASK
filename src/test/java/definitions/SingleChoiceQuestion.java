package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static support.TestContext.getDriver;

public class SingleChoiceQuestion {
    @Given("I navigate to {string}")
    public void iNavigateTo(String arg0) {
        getDriver().get(arg0);
    }

    @When("I type  email {string}")
    public void iTypeEmail(String Email) {
        getDriver().findElement(By.xpath("//*[@formcontrolname=\"email\"]")).sendKeys(Email);
    }

    @And("I type  password {string}")
    public void iTypePassword(String Pass) {
        getDriver().findElement(By.xpath("//*[@formcontrolname=\"password\"]")).sendKeys(Pass);
    }

    @And("I click Login button")
    public void iClickLoginButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(3000);
    }

    @And("I click button Quizzes")
    public void iClickButtonQuizzes() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(3000);
    }

    @And("I click button Create New Quiz")
    public void iClickButtonCreateNewQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='controls']//button[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(3000);
    }

    @And("I type title of the quiz {string}")
    public void iTypeTitleOfTheQuiz(String Quest) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(Quest);
        Thread.sleep(3000);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[@class='mat-icon material-icons']")).click();
        Thread.sleep(3000);
    }

    @And("I click Add Option button")
    public void iClickAddOptionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[@class='mat-content']/../..//span[contains(text(),'Add Option')]")).click();
        Thread.sleep(3000);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted shift']//span[1]")).click();
        Thread.sleep(3000);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@id='mat-input-3']")).click();
        Thread.sleep(3000);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@id='mat-input-8']")).click();
        Thread.sleep(3000);
    }

    @And("I click Add Option button")
    public void iClickAddOptionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q2: new empty question')]/../../..//span[@class='mat-button-wrapper'][contains(text(),'Add Option')]")).click();
        Thread.sleep(3000);
    }

    @And("I click Add Option button")
    public void iClickAddOptionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='options ng-valid ng-star-inserted ng-dirty ng-touched']//span[@class='mat-button-wrapper'][contains(text(),'Add Option')]")).click();
        Thread.sleep(3000);
    }

    @And("I click Add Option button")
    public void iClickAddOptionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-498']/..//span[@class='mat-button-wrapper'][contains(text(),'Add Option')]")).click();
        Thread.sleep(3000);
    }

    @And("I click Add Option button")
    public void iClickAddOptionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-499']/..//span[@class='mat-button-wrapper'][contains(text(),'Add Option')]")).click();
        Thread.sleep(3000);
    }

    @And("I click Add Option button")
    public void iClickAddOptionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-500']/..//span[contains(text(),'Add Option')]")).click();
        Thread.sleep(3000);
    }

    @And("I click Multiple-Choice radio-button")
    public void iClickMultipleChoiceRadioButton() {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1: AAA')]/../../..//mat-radio-button[@id='mat-radio-4']//div[@class='mat-radio-inner-circle']")).click();
    }

    @And("I click Multiple-Choice radio-button")
    public void iClickMultipleChoiceRadioButton() {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q2: AAA2')]/../../..//mat-radio-button[@id='mat-radio-12']//div[@class='mat-radio-inner-circle']")).click();
    }

    @And("I click Multiple-Choice radio-button")
    public void iClickMultipleChoiceRadioButton() {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-498']/..//div[@class='mat-radio-inner-circle']")).click();
    }

    @And("I click Multiple-Choice radio-button")
    public void iClickMultipleChoiceRadioButton() {
        getDriver().findElement(By.xpath("//*[@id='mat-radio-16']//div[@class='mat-radio-outer-circle']")).click();
    }

    @And("I click Multiple-Choice radio-button")
    public void iClickMultipleChoiceRadioButton() {
        getDriver().findElement(By.xpath("//mat-radio-button[@id='mat-radio-20']//div[@class='mat-radio-outer-circle']")).click();
    }

    @And("I click Single choice radio-button")
    public void iClickSingleChoiceRadioButton() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Single-Choice')]")).click();
    }

    @And("I type Question {string}")
    public void iTypeQuestion(String QuestTex) {
        getDriver().findElement(By.xpath("//span[@class='mat-content']/../..//textarea[@id='mat-input-3']")).sendKeys(QuestTex);
    }

    @And("I type Question {string}")
    public void iTypeQuestion(String QuestTex) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q2: AAA2')]/../../..//textarea[@id='mat-input-8']")).sendKeys(QuestTex);
    }

    @And("I type Question {string}")
    public void iTypeQuestion(String QuestTex) {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-498']/..//textarea[@id='mat-input-11']")).sendKeys(QuestTex);
    }

    @And("I type Question {string}")
    public void iTypeQuestion(String QuestTex) {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-499']/..//textarea[@id='mat-input-15']")).sendKeys(QuestTex);
    }

    @And("I type Question {string}")
    public void iTypeQuestion(String QuestTex) {
        getDriver().findElement(By.xpath("//mat-expansion-panel-header[@id='mat-expansion-panel-header-500']/..//textarea[@id='mat-input-19']")).sendKeys(QuestTex);
    }

    @And("I type Option#{int} {string}")
    public void iTypeOption(int arg0, String Opt1) {
        getDriver().findElement(By.xpath("//span[@class='mat-content']/../..//textarea[@id='mat-input-4']")).sendKeys(Opt1);
    }

    @And("I type Second Option {string}")
    public void iTypeSecondOption(String Opt2) {
        getDriver().findElement(By.xpath("//span[@class='mat-content']/../..//textarea[@id='mat-input-5']")).sendKeys(Opt2);
    }

    @And("I type Second Option {string}")
    public void iTypeSecondOption(String Opt2) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q2: new empty question')]/../../..//textarea[@id='mat-input-14']")).sendKeys(Opt2);
    }

    @And("I type Second Option {string}")
    public void iTypeSecondOption(String Opt2) {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-498']/..//textarea[@id='mat-input-13']")).sendKeys(Opt2);
    }

    @And("I type Second Option {string}")
    public void iTypeSecondOption(String Opt2) {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-499']/..//textarea[@id='mat-input-17']")).sendKeys(Opt2);
    }

    @And("I type Second Option {string}")
    public void iTypeSecondOption(String Opt2) {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-500']/..//textarea[@id='mat-input-21']")).sendKeys(Opt2);
    }

    @And("I type Option#{int} {string}")
    public void iTypeOption(int arg0, String Opt3) {
        getDriver().findElement(By.xpath("//span[@class='mat-content']/../..//textarea[@id='mat-input-6']")).sendKeys(Opt3);
    }

    @And("I type Option#{int} {string}")
    public void iTypeOption(int arg0, String Opt1) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q2: new empty question')]/../../..//textarea[@id='mat-input-13']")).sendKeys(Opt1);
    }

    @And("I type Option#{int} {string}")
    public void iTypeOption(int arg0, String Opt1) {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-498']/..//textarea[@id='mat-input-12']")).sendKeys(Opt1);
    }

    @And("I type Option#{int} {string}")
    public void iTypeOption(int arg0, String Opt1) {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-499']/..//textarea[@id='mat-input-16']")).sendKeys(Opt1);
    }

    @And("I type Option#{int} {string}")
    public void iTypeOption(int arg0, String Opt1) {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-500']/..//textarea[@id='mat-input-20']")).sendKeys(Opt1);
    }

    @And("I type Option#{int} {string}")
    public void iTypeOption(int arg0, String Opt3) {
        getDriver().findElement(By.xpath("//span[@class='mat-content']/../..//textarea[@id='mat-input-6']")).sendKeys(Opt3);
    }

    @And("I type Option#{int} {string}")
    public void iTypeOption(int arg0, String Opt3) {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-498']/..//textarea[@id='mat-input-14']")).sendKeys(Opt3);
    }

    @And("I type Option#{int} {string}")
    public void iTypeOption(int arg0, String Opt3) {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-499']/..//textarea[@id='mat-input-18']")).sendKeys(Opt3);
    }

    @And("I type Option#{int} {string}")
    public void iTypeOption(int arg0, String Opt3) {
        getDriver().findElement(By.xpath("//*[@id='mat-expansion-panel-header-500']/..//textarea[@id='mat-input-22']")).sendKeys(Opt3);
    }

    @And("I click Option{int} radio-button")
    public void iClickOptionRadioButton(int arg0) {
        getDriver().findElement(By.xpath("//span[@class='mat-content']/../..//mat-checkbox[@id='mat-checkbox-2']//label[@class='mat-checkbox-layout']")).click();
    }

    @And("I click Option{int} radio-button")
    public void iClickOptionRadioButton(int arg0) {
        getDriver().findElement(By.xpath("//mat-checkbox[@id='mat-checkbox-4']//label[@class='mat-checkbox-layout']")).click();
    }

    @And("I click Option{int} radio-button")
    public void iClickOptionRadioButton(int arg0) {
        getDriver().findElement(By.xpath("//span[@class='mat-content']/../..//mat-checkbox[@id='mat-checkbox-2']//label[@class='mat-checkbox-layout']")).click();
    }

    @And("I click Option{int} radio-button")
    public void iClickOptionRadioButton(int arg0) {
        getDriver().findElement(By.xpath("//mat-checkbox[@id='mat-checkbox-11']//label[@class='mat-checkbox-layout']")).click();
    }

    @And("I click Option{int} radio-button")
    public void iClickOptionRadioButton(int arg0) {
        getDriver().findElement(By.xpath("//mat-checkbox[@id='mat-checkbox-12']//label[@class='mat-checkbox-layout']")).click();
    }

    @And("I click Option{int} radio-button")
    public void iClickOptionRadioButton(int arg0) {
        getDriver().findElement(By.xpath("//mat-checkbox[@id='mat-checkbox-14']//label[@class='mat-checkbox-layout']")).click();
    }

    @And("I click Option{int} radio-button")
    public void iClickOptionRadioButton(int arg0) {
        getDriver().findElement(By.xpath("//mat-checkbox[@id='mat-checkbox-15']//div[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin']")).click();
    }

    @And("I click Option{int} radio-button")
    public void iClickOptionRadioButton(int arg0) {
        getDriver().findElement(By.xpath("//mat-checkbox[@id='mat-checkbox-18']//label[@class='mat-checkbox-layout']")).click();
    }

    @And("I click Option{int} radio-button")
    public void iClickOptionRadioButton(int arg0) {
        getDriver().findElement(By.xpath("//mat-checkbox[@id='mat-checkbox-19']//label[@class='mat-checkbox-layout']")).click();
    }

    @And("I click Save button")
    public void iClickSaveButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }

    @Then("I get error message contains {string}")
    public void iGetErrorMessageContains(String message) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(), 'This field is required')]")).isDisplayed()).isTrue();
    }

    @Then("Quiz is saved with {string} text in question")
    public void quizIsSavedWithTextInQuestion(String text) throws Throwable {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Single Question - Allowable characters: Alphanumeric & Sp. characters')]")).click();
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Single Question - Allowable characters: Alphanumeric & Sp. characters')]/../../..//*[contains(text(), 'Preview')]")).click();
        assertThat(getDriver().findElement(By.xpath("//h3[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
    }

    @And("I click Multiple-Choice radio-button")
    public void iClickMultipleChoiceRadioButton() {
    }
}