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
        getDriver().findElement(By.xpath("//*[@placeholder='Email *']")).sendKeys(Email);
    }

    @And("I type  password {string}")
    public void iTypePassword(String Pass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password *']")).sendKeys(Pass);
    }

    @And("I click Login button")
    public void iClickLoginButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
        Thread.sleep(3000);
    }

    @And("I click button Quizzes")
    public void iClickButtonQuizzes() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(3000);
    }

    @And("I click button Create New Quiz")
    public void iClickButtonCreateNewQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(3000);
    }

    @And("I type title of the quiz {string}")
    public void iTypeTitleOfTheQuiz(String Quest) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(Quest);
        Thread.sleep(3000);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
        Thread.sleep(3000);
    }

    @And("I click Single choice radio-button")
    public void iClickSingleChoiceRadioButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(),'Single-Choice')]")).click();
        Thread.sleep(3000);
    }

    @And("I type Question {string}")
    public void iTypeQuestion(String QuestTex) {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(QuestTex);
    }

    @And("I type Option#{int} {string}")
    public void iTypeOption(int arg0, String Opt1) {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']")).sendKeys(Opt1);
    }

    @And("I type Second Option {string}")
    public void iTypeSecondOption(String Opt2) {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 2*']")).sendKeys(Opt2);
    }

    @And("I click Option{int} radio-button")
    public void iClickOptionRadioButton(int arg0) {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']/../../../../..//*[@class=\"mat-radio-outer-circle\"]")).click();
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
        Thread.sleep(4000);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Single Question - Allowable characters: Alphanumeric & Sp. characters')]")).click();
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Single Question - Allowable characters: Alphanumeric & Sp. characters')]/../../..//*[contains(text(), 'Preview')]")).click();
        assertThat(getDriver().findElement(By.xpath("//h3[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
    }
}