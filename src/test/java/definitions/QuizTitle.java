package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class QuizTitle {

    @And("I click on Quizzes")
    public void iClickOnQuizzes() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[text()='Quizzes']")).click();
        Thread.sleep(2000);
    }

    @And("I click on create new quiz button")
    public void iClickOnCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }

    @And("I type title {string} in the input field")
    public void iTypeTitleInTheInputField(String title) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(title);
    }

    @And("I click on Add Question button")
    public void iClickOnAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]/../..")).click();
        Thread.sleep(2000);
    }

    @And("I select Question Type Textual")
    public void iSelectQuestionTypeTextual() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Textual')]/..")).click();
        Thread.sleep(2000);
    }

    @And("I type {string} in the question title field")
    public void iTypeInTheQuestionTitleField(String question) {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).sendKeys(question);
    }

    @And("I click SAVE")
    public void iClickSAVE() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]/..")).click();
        Thread.sleep(2000);
    }

    @Then("quiz should display")
    public void quizShouldDisplay() throws InterruptedException {
        WebElement expectedText= getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'qtydWRT13$%')]"));
        assertThat(expectedText.isDisplayed()).isTrue();
        Thread.sleep(2000);
    }

    @And("I click on title of the quiz field")
    public void iClickOnTitleOfTheQuizField() throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).click();
        Thread.sleep(2000);
    }

    @And("I click outside the title field")
    public void iClickOutsideTheTitleField() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='ng-star-inserted']")).click();
        Thread.sleep(2000);
    }
}
