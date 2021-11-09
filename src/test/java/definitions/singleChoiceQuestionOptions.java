package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionOptions {
    @When("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I click Sign In button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on {string} on left menu")
    public void iClickOnOnLeftMenu(String menuItem) throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'"+menuItem+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }

    @And("I type quiz title {string}")
    public void iTypeQuizTitle(String quizTitle) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(quizTitle);
    }

    @And("I click Add question button")
    public void iClickAddQuestionButton() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'add_circle')]")).click();
    }

    @And("I select {string} question type for question {int}")
    public void iSelectQuestionTypeForQuestion(String questionType, int questionNumber) throws InterruptedException {
        String xPath = "//*[contains(text(), 'Q"+questionNumber+"')]/../../..//*[contains(text(), '"+questionType+"')]";
        getDriver().findElement(By.xpath(xPath)).click();
        Thread.sleep(2000);
    }

    @And("I type text {string} for question {int}")
    public void iTypeTextForQuestion(String questionText, int questionNumber) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q\"+questionNumber+\"')]/../../..//*[@placeholder='Question *']")).sendKeys(questionText);
    }

    @And("I type text {string} for option {int} for question {int}")
    public void iTypeTextForOptionForQuestion(String optionText, int optionNumber, int questionNumber) {
        String xPath = "//*[contains(text(), 'Q"+questionNumber+"')]/../../..//textarea[@placeholder='Option "+optionNumber+"*']";
        getDriver().findElement(By.xpath(xPath)).sendKeys(optionText);

    }

    @And("I select option {int} as correct answer for question {int}")
    public void iSelectOptionAsCorrectAnswerForQuestion(int optionNumber, int questionNumber) throws InterruptedException {
        String xPath = "//*[contains(text(), 'Q"+questionNumber+"')]/../../..//textarea[@placeholder='Option "+optionNumber+"*']/../../../../..//div[@class='mat-radio-container']";
        getDriver().findElement(By.xpath(xPath)).click();
        Thread.sleep(2000);

    }

    @And("I click Save button")
    public void iClickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[normalize-space()='Save']")).click();
        Thread.sleep(2000);
    }

    @Then("Quiz {string} appears in list of quizzes")
    public void quizAppearsInListOfQuizzes(String quizName) {
        String listOfQuizzes = getDriver().findElement(By.xpath("//*[@class='quizzes']")).getText();
        System.out.println(listOfQuizzes);
        assertThat(listOfQuizzes.contains(quizName)).isTrue();
    }

    @And("I click on Preview button for quiz {string}")
    public void iClickOnPreviewButtonForQuiz(String quizName) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]/../../..//*[contains(text(), 'Preview')]")).click();

    }


    @Then("Options with text {string} and {string} id displayed")
    public void optionsWithTextAndIdDisplayed(String Option1Name, String Option2Name) {
        String xPathForOption1 = "//*[contains(text(),'"+Option1Name+"')]";
        String xPathForOption2 = "//*[contains(text(),'"+Option2Name+"')]";


        assertThat(getDriver().findElement(By.xpath(xPathForOption1)).isDisplayed()).isTrue();
        assertThat(getDriver().findElement(By.xpath(xPathForOption2)).isDisplayed()).isTrue();
    }

    @And("I click Close button")
    public void iClickCloseButton() throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Close')]")).click();
    }

    @And("I delete Quiz{string}")
    public void iDeleteQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizName+"')]/../../..//*[contains(text(),'Delete')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'Confirmation')]/../..//*[contains(text(),'Delete')]")).click();
        Thread.sleep(2000);
    }
}
