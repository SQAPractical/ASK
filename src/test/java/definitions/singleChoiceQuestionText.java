package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionText {
    @And("I see role as {string}")
    public void iSeeRole(String role) throws InterruptedException {
        getDriver().findElement(By.xpath("//p[contains(text(), '"+role+"')]"));
    }

//    @And("I click on {string} on left menu")
//    public void iClickOnOnLeftMenu(String menuItem) throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[contains(text(), '"+menuItem+"')]/../..")).click();
//    }

//    @And("I click {string} button")
//    public void iClickButton(String buttonName) throws InterruptedException {
//        getDriver().findElement(By.xpath("//span[contains(text(), '"+buttonName+"')]")).click();
//    }


    @And("I type {string} title of quiz")
    public void iTypeTitleOfQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(quizName);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button/span/mat-icon/../..")).click();
    }

//    @And("I select {string} question type for question {int}")
//    public void iSelectQuestionTypeForQuestion(String questionType, int questionNumber) throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+questionNumber+"')]/../../..//*[contains(text(), '"+questionType+"')]")).click();
//    }

    @And("I type {string} as a question for question {int}")
    public void iTypeAsAQuestionForQuestion(String questionText, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+questionNumber+"')]/../../..//*[@placeholder='Question *']")).sendKeys(questionText);

    }

    @And("I type {string} as option {int} for question {int}")
    public void iTypeAsOptionForQuestion(String questionText, int optionNumber, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+questionNumber+"')]/../../..//*[@placeholder='Option "+optionNumber+"*']")).sendKeys(questionText);
    }

    @And("I select Option {int} as correct answer for question {int}")
    public void iSelectAsCorrectAnswerForQuestion(int optionNumber, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+questionNumber+"')]/../../..//*[@placeholder='Option "+optionNumber+"*']/../../../../..//mat-radio-button")).click();
    }

    @Then("Quiz {string} present in list of quizzes")
    public void quizPresentInListOfQuizzes(String quizName) {
        String allQuizzes = getDriver().findElement(By.xpath("//div[contains(@class, 'quizzes')]")).getText();
        System.out.println(allQuizzes);
        assertThat(allQuizzes.contains(quizName));

    }

//    @And("I delete quiz {string}")
//    public void iDeleteQuiz(String quizName) throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[contains(text(), '"+quizName+"')]/../..")).click();
//        getDriver().findElement(By.xpath("//*[contains(text(), '"+quizName+"')]/../../..//button/span[contains(text(), 'Delete')]/..")).click();
//        getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../..//*[contains(text(), 'Delete')]/..")).click();
//        Thread.sleep(2000);
//    }

    @Then("Error message {string} present for question {int}")
    public void errorMessagePresent(String errorMessage, int questionNumber) throws InterruptedException {
        String actualError = getDriver().findElement(By.xpath("//*[contains(text(), 'Q"+questionNumber+"')]/../../..//*[contains(text(), '"+errorMessage+"')]")).getText();
        assertThat(actualError.equals(errorMessage)).isTrue();
        Thread.sleep(2000);
    }
}
