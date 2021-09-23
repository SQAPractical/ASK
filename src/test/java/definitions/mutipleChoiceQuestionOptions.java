package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class mutipleChoiceQuestionOptions {
    @When("I navigate to login pag")
    public void iNavigateToLoginPag() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }
    @And("I click Sign In button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
        Thread.sleep(2000);
    }

    @And("I click {string} menu item")
    public void iClickMenuItem(String menuItem) {
        getDriver().findElement(By.xpath("//h5[contains(text(), '"+menuItem+"')]")).click();
      }

    @And("I click Create new quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }

    @And("I type quiz title {string}")
    public void iTypeQuizTitle(String quizTitle) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(quizTitle);
        Thread.sleep(2000);
    }

    @And("I click Add question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'add_circle')]")).click();
        Thread.sleep(2000);
    }

    @And("I select Question type {string} for question {int}")
    public void iSelectQuestionTypeForQuestion(String questionType, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(), '"+questionType+"')]/..//*[@class='mat-radio-container']")).click();
    }

    @And("I type text {string} for question {int}")
    public void iTypeTextForQuestion(String textOfQuestion, int questionNumber) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//textarea[@placeholder='Question *']")).sendKeys(textOfQuestion);
    }


    @And("I type text {string} for Option {int} for question")
    public void iTypeTextForOptionForQuestion(String arg0, int arg1) {
    }
}


