package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class singleChoiceQuestionText {
    @And("I click on Quizzes")
    public void iClickOnQuizzes() {
        getDriver().findElement(By.xpath("//div[@class='mat-list-text']/h5[contains(text(),'Quizzes')]")).click();

    }

    @And("I wait for {int} sec")
    public void iWaitForSec(int sec) throws InterruptedException {
        Thread.sleep(sec*1000);
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
}
