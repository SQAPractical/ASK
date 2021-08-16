package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class quizTitle {
    @When("I navigate to the login page")
    public void iNavigateToTheLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I type Email {string}")
    public void iTypeEmail(String Email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(Email);
    }

    @And("I type Password {string}")
    public void iTypePassword(String Password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(Password);
    }

    @And("I click the Sign In button")
    public void iClickTheSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
        Thread.sleep(2000);
    }


    @And("I click on {string} on left")
    public void iClickOnOnLeft(String menuItem) throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'"+menuItem+"')]")).click();
        Thread.sleep(3000);
    }

    @And("I click on the Create New Quiz button")
    public void iClickOnTheCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);

    }

    @And("I type title of the quiz {string}")
    public void iTypeTitleOfTheQuiz(String quizTitle) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(quizTitle);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'add_circle')]")).click();
        Thread.sleep(3000);
    }

    @And("I select {string} type of question for question {string}")
    public void iSelectTypeOfQuestionForQuestion(String questionType, String questionNumber) throws InterruptedException {
        String xPath="//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(),'"+questionType+"')]/..//*[@class='mat-radio-outer-circle']";
        getDriver().findElement(By.xpath(xPath)).click();
        Thread.sleep(3000);
    }

    @And("I type text {string} of question {string}")
    public void iTypeTextOfQuestion(String textOfQuestion, String questionNumber) {
        String xPath = "//*[contains(text(),\"Q"+questionNumber+"\")]/../../..//*[@formcontrolname='question']";
        getDriver().findElement(By.xpath(xPath)).sendKeys(textOfQuestion);
    }

    @And("I click the Save button")
    public void iClickTheSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]")).click();
        Thread.sleep(3000);
    }

    @And("I select quiz {string} from the list of quizzes")
    public void iSelectQuizFromTheListOfQuizzes(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),\""+quizName+"\")]")).click();
        Thread.sleep(3000);
    }

    @And("I click the Preview button for quiz {string}")
    public void iClickThePreviewButtonForQuiz(String quizName) {
        String xPath = "//*[contains(text(),\""+quizName+"\")]/../../..//*[contains(text(),'Preview')]";
        getDriver().findElement(By.xpath(xPath)).click();
    }

    @And("I click the Close button")
    public void iClickTheCloseButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Close')]")).click();
        Thread.sleep(5000);
    }


    @And("I delete the quiz {string}")
    public void iDeleteTheQuiz(String quizName) throws InterruptedException {
        String xPath = "//*[contains(text(),\""+quizName+"\")]/../../..//*[contains(text(),'Delete')]";
        getDriver().findElement(By.xpath(xPath)).click();
        getDriver().findElement(By.xpath("//*[@aria-label='Close dialog'][2]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Title Of The Quiz")
    public void iClickOnTitleOfTheQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).click();
        Thread.sleep(1000);
    }

    @And("I click outside of Quiz Title field")
    public void iClickOutsideOfQuizTitleField() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='ng-star-inserted']")).click();
        Thread.sleep(2000);
    }
}
