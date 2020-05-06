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
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
    }

    @And("I click Create new Quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
    }

    @And("I Click on the Title of the Quiz field  and leave it empty")
    public void iClickOnTheTitleOfTheQuizFieldAndLeaveItEmpty() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).click();
    }

    @And("I click out of the Title of the Quiz field")
    public void iClickOutOfTheTitleOfTheQuizField() throws InterruptedException {
        getDriver().findElement(By.xpath("//img[@class='icon ng-star-inserted']")).click();
        Thread.sleep(2000);
    }

    @Then("I type character on the Title of the Quiz field {string}")
    public void iTypeCharacterOnTheTitleOfTheQuizField(String text) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(text);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
    }

    @Then("I should see error massage")
    public void iShouldSeeErrorMassage() {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'This field is required')]")).isDisplayed()).isTrue();
    }

    @Then("error message {string} should appear")
    public void errorMessageShouldAppear(String text) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
    }

}


