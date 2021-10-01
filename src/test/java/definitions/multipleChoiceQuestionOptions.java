package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class multipleChoiceQuestionOptions {
    @When("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I click Sign In button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
        Thread.sleep(2000);
    }

    @And("I click {string} menu item")
    public void iClickMenuItem(String menuItem){
   getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
}

    @And("I click Create new quiz button")
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

    @And("I select Question type {string} for question {int}")
    public void iSelectQuestionTypeForQuestion(String questionType, int questionNumber) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(), 'Multiple-Choice')]/..//*[@class='mat-radio-container']")).click();
    }
    @And("I type text {string} for question {int}")
    public void iTypeTextForQuestion(String arg0, int arg1) {
    }

    @And("I type text {string} for Option {int}")
    public void iTypeTextForOption(String arg0, int arg1) {
    }


}