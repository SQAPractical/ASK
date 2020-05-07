package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class Quiz {
//    @Given("I open login page")
//    public void iOpenLoginPage() {
//        getDriver().get("http://ask-stage.portnov.com/#/login");
//    }
//
//    @When("I type email {string}")
//    public void iTypeEmail(String email) {
//        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
//    }
//
//    @And("I type password {string}")
//    public void iTypePassword(String pass) {
//        getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(pass);
//    }
//
//    @And("I click Sign in button")
//    public void iClickSignInButton() {
//        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
//    }

    @And("I click on Quizzes menu item")
    public void iClickOnQuizzesMenuItem() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
    }

    @And("I click Create new quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
    }

    @Then("I type quiz name  {string}")
    public void iTypeQuizName(String title) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-input-2']")).sendKeys(title);
    }

//    @And("I click on Add Question button")
//    public void iClickOnAddQuestionButton() {
//        getDriver().findElement(By.xpath("//*[@class='controls ng-star-inserted']")).click();
//    }

    @Then("I wait {int} sec")
    public void iWaitSec(int sec) throws InterruptedException {
        Thread.sleep(1000);
    }

    @And("I click radio button Single choice")
    public void iClickRadioButtonSingleChoice() {
//        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//div[contains(text(),'Single-Choice')]/..//*[@class='mat-radio-outer-circle']")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'Single-Choice')]")).click();
    }

    @And("type {string} in question field")
    public void typeInQuestionField(String question) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(question);
    }


    @And("I click radio button Option {int}")
    public void iClickRadioButtonOption(int arg0) throws InterruptedException {
        Thread.sleep(200);
//        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']/../../../../..//*[@class='mat-radio-outer-circle']")).click();
        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']/../../../../..//*[@class='mat-radio-container']")).click();
    }

    @And("I click Save button")
    public void iClickSaveButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }

    @And("I type option one {string}")
    public void iTypeOptionOne(String text) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']")).sendKeys(text);
    }

    @And("I type option two {string}")
    public void iTypeOptionTwo(String text) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 2*']")).sendKeys(text);
    }
}





   




   



