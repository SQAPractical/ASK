package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;


public class singeChoiceQuestinption {
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
    public void iClickOnAddQuestionButton() {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
    }

    @And("I select {string} question type for question {int}")
    public void iSelectQuestionTypeForQuestion(String questionType, int questionNumber) {
      getDriver().findElement(By.xpath("*contains(text(), 'Single-Choice'"))
    }

    @And("I type text {string} as a question for question {int}")
    public void iTypeTextAsAQuestionForQuestion(String textOfQuestion, int questionNumber) {
        getDriver().findElement(By.xpath())
    }

    @And("I type text \"ABC{int}!@ of option {int} for question {int}")
    public void iTypeTextABCOfOptionForQuestion(int arg0, int arg1, int arg2) throws Throwable {    // Write code here that turns the phrase above into concrete actions    throw new cucumber.api.PendingException();}
}









