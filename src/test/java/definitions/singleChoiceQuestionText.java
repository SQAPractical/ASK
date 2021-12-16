package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;


public class singleChoiceQuestionText {

    @And("I click on {string} on left menu")
    public void iClickOnOnLeftMenu(String menuItem) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//h5[contains(text(),'"+menuItem+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I click {string} button")
    public void iClickButton(String buttonName) throws InterruptedException {
        getDriver().findElement(By.xpath("//button/span[contains(text(),'"+buttonName+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I type quiz title {string}")
    public void iTypeQuizTitle(String quizTitle) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(quizTitle);
    }

    @And("I click Add question button")
    public void iClickAddQuestionButton() {
        getDriver().findElement(By.xpath("//span[contains(.,'Add Question')]")).click();
    }

    @And("I select {string} question type for question {int}")
    public void iSelectQuestionTypeForQuestion(String questionType, int questionNumber) throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(),'"+questionType+"')]/..")).click();
        Thread.sleep(1000);
    }

    @And("I type text of question {string} for question {int}")
    public void iTypeTextOfQuestionForQuestion(String textOfQuestion, int questionNumber) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//textarea[@formcontrolname='question']")).sendKeys(textOfQuestion);
    }

    @And("I type text of option {int} {string} for question {int}")
    public void iTypeTextOfOptionForQuestion(int optionNumber, String textOfOption, int questionNumber) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//textarea[@placeholder='Option "+optionNumber+"*']")).sendKeys(textOfOption);

    }

    @And("I select option {int} as correct answer for question {int}")
    public void iSelectOptionAsCorrectAnswerForQuestion(int optionNumber, int questionNumber) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//textarea[@placeholder='Option "+optionNumber+"*']/../../../../..//div[@class='mat-radio-container']")).click();
    }

    @And("I click on quiz {string} in list of quizzes")
    public void iClickOnQuizInListOfQuizzes(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), '"+quizName+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Preview for quiz {string}")
    public void iClickPreviewForQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(), '"+quizName+"')]/../../..//*[contains(text(),'Preview')]")).click();
        Thread.sleep(2000);
    }
}
