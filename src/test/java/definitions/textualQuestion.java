package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class textualQuestion {
    @And("I click on Quizzes button")
    public void iClickOnQuizzesButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Create New  Quiz button")
    public void iClickOnCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(2000);
    }

    @And("I type Title {string}")
    public void iTypeTitle(String title) {
        getDriver().findElement(By.xpath("//input[@id='mat-input-2']")).sendKeys(title);
    }

    @And("I click on Textual radio button")
    public void iClickOnTextualRadioButton() {
        getDriver().findElement(By.xpath("//ac-question-body-form/div[1]/div[1]/div[1]/mat-radio-group[1]/mat-radio-button[1]/label[1]/div[1]/div[1]")).click();
    }

    @And("I type Question {string}")
    public void iTypeQuestion(String Question0) {
        getDriver().findElement(By.xpath("//textarea[@id='mat-input-3']")).sendKeys(Question0);
    }

    @And("I click on title of crated Quiz {string}")
    public void iClickOnTitleOfCratedQuiz(String quizName) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'A-Textual 123 !@#$%')]")).click();
    }

    @And("I click on Preview button")
    public void iClickOnPreviewButton() {
        getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quizzes-list[1]/mat-card[1]/div[1]/mat-accordion[1]/mat-expansion-panel[1]/div[1]/div[1]/div[1]/div[1]/button[1]/span[1]")).click();
    }

    @And("I verify if text with alphanumeric and special characters is visible on the quiz")
    public void iVerifyIfTextWithAlphanumericAndSpecialCharactersIsVisibleOnTheQuiz() {
        String actualTitle = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'A-Textual 123 !@#$%')]")).getText();
        String expectedTitle = "A-Textual 123 !@#$%";
        Assert.assertArrayEquals(expectedTitle, actualTitle);
    }

    @Then("I delete the Quiz")
    public void iDeleteTheQuiz() {
        getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quizzes-list[1]/mat-card[1]/div[1]/mat-accordion[1]/mat-expansion-panel[1]/div[1]/div[1]/div[1]/div[1]/button[2]/span[1]")).click();
    }
}
