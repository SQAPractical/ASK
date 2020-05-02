package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class title {
    @And("I click on the Quizzes menu item")
    public void iClickOnTheQuizzesMenuItem() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
    }

    @And("I click Create new Quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();

    }

    @And("I Click on the Title of the Quiz field  and leave it empty")
    public void iClickOnTheTitleOfTheQuizFieldAndLeaveItEmpty() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']"));
    }

    @And("I click out of the Title of the Quiz field")
    public void iClickOutOfTheTitleOfTheQuizField() {

        getDriver().findElement(By.xpath("//main[@class='ng-tns-c0-0']"));
    }

    @Then("text {string} is displayed")
    public void textIsDisplayed(String text) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text('This field is required'),'This field is required')]"));
    }
}