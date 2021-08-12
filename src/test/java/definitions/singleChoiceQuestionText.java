package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class singleChoiceQuestionText {
    @When("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I click Sign In button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
        Thread.sleep(2000);
    }

    @And("I click on {string} on left menu")
    public void iClickOnOnLeftMenu(String menuItem) throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'"+menuItem+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Create New Quiz button")
    public void iClickOnCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }

    @And("I type quiz title {string}")
    public void iTypeQuizTitle(String quizTitle) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(quizTitle);
    }

    @And("I click Add question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'add_circle')]")).click();
        Thread.sleep(1000);
    }

    @And("I select {string} type of question for question {int}")
    public void iSelectTypeOfQuestionForQuestion(String questionType, int questionNumber) throws InterruptedException {
        String xPath = "//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(), '"+questionType+"')]/..//*[@class='mat-radio-container']";
        getDriver().findElement(By.xpath(xPath)).click();
    }

    @And("I type text {string} of question {int}")
    public void iTypeTextOfQuestion(String textOfQuestion, int questionNumber) {
        String xPath = "//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@formcontrolname='question']";
        getDriver().findElement(By.xpath(xPath)).sendKeys(textOfQuestion);
    }

    @And("I type text {string} for option {int} for question {int}")
    public void iTypeTextForOptionForQuestion(String textOfQuestion, int optionNumber, int questionNumber) {
        String xPath = "//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Option "+optionNumber+"*']";
        getDriver().findElement(By.xpath(xPath)).sendKeys(textOfQuestion);

    }

    @And("I select Option {int} as correct answer for question {int}")
    public void iSelectOptionAsCorrectAnswerForQuestion(int optionNumber, int questionNumber) {
        String xPath = "//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Option "+optionNumber+"*']/../../../../..//*[@class='mat-radio-container']";
        getDriver().findElement(By.xpath(xPath)).click();
    }

    @And("I click Save button")
    public void iClickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }

    @And("I select quiz {string} from list of quizzes")
    public void iSelectQuizFromListOfQuizzes(String quizName) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizName+"')]")).click();
    }


    @And("I click Preview button for quiz {string}")
    public void iClickPreviewButtonForQuiz(String quizName) {
        String xPath = "//*[contains(text(), '"+quizName+"')]/../../..//*[contains(text(), 'Preview')]";
        getDriver().findElement(By.xpath(xPath)).click();
    }

    @And("I click Close button")
    public void iClickCloseButton() {
        getDriver().findElement(By.xpath("//*[@aria-label='Close dialog']")).click();
    }

    @And("I delete quiz {string}")
    public void iDeleteQuiz(String quizName) throws InterruptedException {
        String xPath = "//*[contains(text(), '"+quizName+"')]/../../..//*[contains(text(), 'Delete')]";
        getDriver().findElement(By.xpath(xPath)).click();
        getDriver().findElement(By.xpath("//*[@aria-label='Close dialog'][2]")).click();
        Thread.sleep(1000);
    }
}
