package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class singleChoiceQuestionText {
//    @And("I click on Quizzes")
//    public void iClickOnQuizzes() {
//        getDriver().findElement(By.xpath("//div[@class='mat-list-text']/h5[contains(text(),'Quizzes')]")).click();
//    }

    @And("I wait for {int} sec")
    public void iWaitForSec(int sec) throws InterruptedException {
        Thread.sleep(sec * 1000);
    }

    @And("I click on Create New Quiz")
    public void iClickOnCreateNewQuiz() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]/..")).click();
    }

    @Then("Back To Quizzes List appears")
    public void backToQuizzesListAppears() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Back To Quizzes List')]/..")).isDisplayed();
    }

    @And("I type Title {string}")
    public void iTypeTitle(String title) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(title);
    }

    @And("I click Add Question")
    public void iClickAddQuestion() {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//button[@class='mat-button mat-primary']")).click();
    }

    @And("I click on Single-Choice option")
    public void iClickOnSingleChoiceOption() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1: new empty question')]/../../..//div[@class='mat-radio-label-content'][contains(text(),'Single-Choice')]")).click();
    }

    @And("I type {string}")
    public void iType(String question) {
        String xPath = "//*[contains(text(),'Q1: new empty question')]/../../..//*[@placeholder='Question *']";
        getDriver().findElement(By.xpath(xPath)).sendKeys(question);
    }
    

    @And("I type {string} for first option")
    public void iTypeForFirstOption(String option1) {
        String xPath = "//*[contains(text(),'Q1:')]/../../..//*[@placeholder='Option 1*']";
        getDriver().findElement(By.xpath(xPath)).sendKeys(option1);
    }

    @And("I type {string} for second option")
    public void iTypeForSecondOption(String option2) {
        String xPath = "//*[contains(text(),'Q1:')]/../../..//*[@placeholder='Option 2*']";
        getDriver().findElement(By.xpath(xPath)).sendKeys(option2);
    }

    @And("I click first option as answer")
    public void iClickFirstOptionAsAnswer() {
        String xPath = "//*[contains(text(),'Q1:')]/../../..//*[@placeholder='Option 1*']/../../../../..//div[@class='mat-radio-container']";
        getDriver().findElement(By.xpath(xPath)).click();
    }

    @And("I click Save")
    public void iClickSave() {
        getDriver().findElement(By.xpath("//div[@class='form-controls-container ng-star-inserted']//button[2]")).click();
    }

    @Then("List of Quizzes appears")
    public void listOfQuizzesAppears() {
        getDriver().findElement(By.xpath("//*[contains(text(),'List of Quizzes')]")).isDisplayed();
    }

    @Then("quiz {string} appears")
    public void quizAppears(String quizName) {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+quizName+"')]")).isDisplayed();
    }
}
