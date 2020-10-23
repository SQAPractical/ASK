package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionShowstopper {
//    @Given("I open {string} page")
//    public void iOpenPage(String url) {
//        if(url.equalsIgnoreCase("login")) {
//            getDriver().get("http://ask-stage.portnov.com/#/login");
//        } else if (url.equalsIgnoreCase("registration")){
//            getDriver().get("http://ask-stage.portnov.com/#/registration");
//        }
//    }

//    @And("I type email {string} on login page")
//    public void iTypeEmailOnLoginPage(String email) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
//    }



//    @And("I type password {string} on login page")
//    public void iTypepasswordOnLoginPage(String password) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
//    }


    @Then("I click on Sign in button")
    public void iClickOnSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
        Thread.sleep(2000);
    }

    @Then("I should see {string} header")
    public void iShouldSeeHeader(String text) {
        WebElement actualText = getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]"));
        assertThat(actualText.isDisplayed()).isTrue();
    }

    @And("I click on Quizzes button")
    public void iClickOnQuizzesButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Create New Quiz button")
    public void iCkickOnCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]/..")).click();
        Thread.sleep(2000);
    }

    @And("I type {string} in Title Of The Quiz input field")
    public void iTypeInTitleOfTheQuizInputField(String quizz) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(quizz);
    }


    @And("I wait for {int} seconds")
    public void iWaitForSeconds(int seconds) throws InterruptedException {
        Thread.sleep(seconds * 1000);
    }

    @Then("I click on Add Question")
    public void iClickOnAddQuestion() {
        getDriver().findElement(By.xpath("//button[@type='button']/..//mat-icon[contains(text(),'add_circle')]")).click();
    }

    @Then("I click on Single-Choice radio button")
    public void iClickOnSingleChoiceRadioButton() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q1')]/../../..//*[contains(text(),'Single-Choice')]")).click();

    }

    @And("I Fill out the question form")
    public void iFillOutTheQuestionForm() throws InterruptedException {
        Thread.sleep(1000);
    }


    @And("I type {string} in Question name")
    public void iTypeInQuestionName(String question) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(question);
    }

//    @And("I type {string} in Option {int}")
//    public void iTypeInOption(String Option, int arg1) {
//        getDriver().findElement(By.xpath("//textarea[@placeholder='Option "+arg1+"*']")).sendKeys(Option);
//    }


    @And("I choose right answer {int}")
    public void iChooseRightAnswer(int rightAnswer) {
        getDriver().findElement(By.xpath("//*[@placeholder='Option "+rightAnswer+"*']/../../../../..//mat-radio-button")).click();
    }


    @And("I click on Show-Stopper question checkbox")
    public void iClickOnShowStopperQuestionCheckbox() {
        getDriver().findElement(By.xpath("//span[contains(text(),'\"Show-Stopper\"')]")).click();
    }

    @And("I click on Preview button")
    public void iClickOnPreviewButton() {
        getDriver().findElement(By.xpath("//button[@type='button']/*[contains(text(),'Preview')]")).click();
    }

    @Then("I should see Show-Stopper message Displayed")
    public void iShouldSeeShowStopperMessageDisplayed() {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'Show-Stopper Question')]")).isDisplayed()).isTrue();


    }

    @And("I click on Close button")
    public void iClickOnCloseButton() {
        getDriver().findElement(By.xpath("//div/*[@aria-label='Close dialog']")).click();

    }

//    @And("I click on Save button")
//    public void iClickOnSaveButton() {
//        getDriver().findElement(By.xpath("//button/*[contains(text(), 'Save')]")).click();
//    }

    @And("I click on recently created Quiz in the List of Quizzes")
    public void iClickOnRecentlyCreatedQuizInTheListOfQuizzes() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);

    }
}