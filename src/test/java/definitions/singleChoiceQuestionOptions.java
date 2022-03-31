package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class singleChoiceQuestionOptions {
    @And("I click on {string} on left menu")
    public void iClickOnOnLeftMenu(String menuItem) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'"+menuItem+"')]")).click();
    }

    @And("I click {string} button")
    public void iClickButton(String buttonName) {
        getDriver().findElement(By.xpath("//button/span[contains(text(),'"+buttonName+"')]")).click();



    }

    @And("I type {string} title of the quiz")
    public void iTypeTitleOfTheQuiz(String quizTitle) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'Title Of The Quiz *']")).sendKeys(quizTitle);
    }

    @And("I click on Add question button")
    public void iClickOnAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
        Thread.sleep(1000);
    }

    @And("I select {string} question type for question {int}")
    public void iSelectQuestionTypeForQuestion(String questionType, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(), '"+questionType+"')]")).click();
    }

    @And("I type text {string} as a question for question {int}")
    public void iTypeTextAsAQuestionForQuestion(String textOfQuestion, int questionNumber) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Question *']")).sendKeys(textOfQuestion);
    }

    @And("I type text {string} of option {int} for question {int}")
    public void iTypeTextOfOptionForQuestion(String textOfOption, int optionNumber, int questionNumber) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Option "+optionNumber+"*']")).sendKeys(textOfOption);
    }


    @And("I select option {int} as correct answer for {string} question {int}")
    public void iSelectOptionAsCorrectAnswerForQuestion(int optionNumber, String questionType, int questionNumber) throws InterruptedException {
        if (questionType.contains("Single")){
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Option "+optionNumber+"*']/../../../../..//*[@class='mat-radio-container']")).click();
            Thread.sleep(2000);
        }
        else {
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[@placeholder='Option "+optionNumber+"*']/../../../../..//*[@class='mat-checkbox-layout']")).click();
            Thread.sleep(2000);
        }

    }

    @Then("Quiz {string} is saved in list of quizzes")
    public void quizIsSavedInListOfQuizzes(String quizTitle) {
        String listOfQuizzes = getDriver().findElement(By.xpath("//div[@class='quizzes']")).getText();
        System.out.println(listOfQuizzes);

        assertThat(listOfQuizzes.contains(quizTitle)).isTrue();
    }

    @And("I delete quiz {string}")
    public void iDeleteQuiz(String quizTitle) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]")).click();
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizTitle+"')]/../../..//*[contains(text(), 'Delete')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), 'Confirmation')]/../..//*[contains(text(), 'Delete')]")).click();
        Thread.sleep(2000);
    }
}
