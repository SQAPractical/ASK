package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;


import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class textualQuestionText {
    @Given("I navigate to login website page")
    public void iNavigateToLoginWebsitePage() throws InterruptedException {
        getDriver().get("http://ask-stage.portnov.com/#/login");
        Thread.sleep(2000);
    }

    @When("I type teacher email {string} on login page")
    public void iTypeTeacherEmailOnLoginPage(String email) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Email *']")).sendKeys(email);
        Thread.sleep(2000);

    }
    @And("I type password {string}on login page")
    public void typePasswordOnLoginPage(String password) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Password *']")).sendKeys(password);
        Thread.sleep(2000);

    }
    @And("I click on Sign in button")
    public void iClickOnSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
        Thread.sleep(2000);
    }

    @And("I navigate to Quizzes page")
    public void iNavigateToQuizzesPage() throws InterruptedException {
        getDriver().get("http://ask-stage.portnov.com/#/quizzes");
        Thread.sleep(2000);
    }

    @And("I navigate to Create New Quiz page")
    public void iNavigateToCreateNewQuizPage() throws InterruptedException {
        getDriver().get("http://ask-stage.portnov.com/#/quiz-builder");
        Thread.sleep(2000);
    }
    @And("I type Title Of The Quiz {string} on quiz-builder page")
    public void iTypeTitleOfTheQuizOnQuizBuilderPage(String text) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(text);
        Thread.sleep(2000);
    }

//    @And("I click on Add Question button")
//    public void iClickOnAddQuestionButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/div[1]")).click();
//        Thread.sleep(2000);
//    }

    @And("I click on Textual radio button")
    public void iClickOnTextualRadioButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Textual')]/../*[1]")).click();
        Thread.sleep(2000);
    }

    @And("I type Question {string}")
    public void iTypeQuestion(String question) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(question);
        Thread.sleep(2000);
    }

    @And("I click on checkbox Is Show-Stopper question?")
    public void iClickOnCheckboxIsShowStopperQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='mat-checkbox-inner-container']")).click();
        Thread.sleep(2000);
    }
    @And("I click on Save button")
    public void iClickOnSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }

//    @Then("Message {string} appears")
//    public void messageAppears(String quizName) throws InterruptedException {
//        assertThat(getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).isDisplayed()).isTrue();
//        Thread.sleep(4000);
//    }

}
