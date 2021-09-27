package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
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
    public void iClickMenuItem(String menuItem) throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(), '"+menuItem+"')]")).click();
        Thread.sleep(2000);
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
    public void iSelectQuestionTypeForQuestion(String questionType, int questionNumber) throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(), '"+questionType+"')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(), '"+questionType+"')]/..//*[@class='mat-radio-container']")).click();
        Thread.sleep(2000);
    }

    @And("I type text {string} for question {int}")
    public void iTypeTextForQuestion(String textOfQuestion, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//textarea[@placeholder='Question *']")).sendKeys(textOfQuestion);
        Thread.sleep(2000);
    }

    @And("I type text {string} for Option {int} for question {int}")
    public void iTypeTextForOptionForQuestion(String textOfOption, int optionNumber, int questionNumber) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//textarea[@placeholder='Option "+optionNumber+"*']")).sendKeys(textOfOption);
    }


    @And("I select option {int} as correct answer for question {int}")
    public void iSelectOptionAsCorrectAnswerForQuestion(int optionNumber, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//textarea[@placeholder='Option "+optionNumber+"*']/../../../../..//*[@class='mat-checkbox-layout']")).click();
        Thread.sleep(2000);
    }

    @And("I click Save button")
    public void iClickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }

    @Then("Quiz {string} is present in list")
    public void quizIsPresentInList(String quizName) {
        String listOfQuizzes = getDriver().findElement(By.xpath("//div[@class='quizzes']")).getText();
        System.out.println(listOfQuizzes);

        assertThat(listOfQuizzes.contains(quizName)).isTrue();
    }

    @And("I delete quiz {string}")
    public void iDeleteQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizName+"')]/../../..//*[contains(text(),'Delete')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'Confirmation')]/../..//*[contains(text(),'Delete')]")).click();
        Thread.sleep(2000);
    }
}
