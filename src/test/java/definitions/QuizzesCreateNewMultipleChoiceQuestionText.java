package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class QuizzesCreateNewMultipleChoiceQuestionText {

//    @And("I click quizzes on left menu")
//    public void iClickQuizzesOnLeftMenu() throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[text()='Quizzes']/..")).click();
//        Thread.sleep(2000);
//    }

//    @And("I click on Create New Quiz")
//    public void iClickOnCreateNewQuiz() throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[text()='Create New Quiz']/..")).click();
//        Thread.sleep(2000);
//    }

//    @And("I type {string} in Title Of The Quiz field")
//    public void iTypeInTitleOfTheQuizField(String quizName) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(quizName);
//    }

    @And("I click on Add Question underneath the Title")
    public void iClickOnAddQuestionUnderneathTheTitle() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]/../..")).click();
        Thread.sleep(2000);
    }

    @And("I select Question type: Multiple Choice Question")
    public void iSelectQuestionTypeMultipleChoiceQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Multiple-Choice')]/..")).click();
        java.lang.Thread.sleep(2000);
    }

//    @And("I type the question {string} in to Question field")
//    public void iTypeTheQuestionInToQuestionField(String question) {
//        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).sendKeys(question);
//    }

    @And("I type text {string} for Option {int}")
    public void iTypeTextForOption(String textAnswer, int optionNumber) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option "+optionNumber+"*']")).sendKeys(textAnswer);
    }

    @When("I click on Add Option")
    public void iClickOnAddOption() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Add Option')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Question field")
    public void iClickOnQuestionField() throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).click();
        Thread.sleep(1000);
    }

    @And("I click on Option {int} field")
    public void iClickOnOptionField(int optionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("*[@placeholder='Option "+optionNumber+"*']")).click();
        Thread.sleep(1000);
    }

    @And("I click on checkbox for Option {int}")
    public void iClickOnCheckboxForOption(int optionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option "+optionNumber+"*']/../../../../..//mat-checkbox")).click();
        Thread.sleep(1000);
    }

    @And("I click SAVE button")
    public void iClickSAVEButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]/..")).click();
        Thread.sleep(2000);
    }

}
