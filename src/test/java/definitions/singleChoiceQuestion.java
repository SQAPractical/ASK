package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestion {
    @And("I click Quizzes in the left menu")
    public void iClickInQuizzesButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @And("I type {string} in Title Of The Quiz *")
    public void iTypeInTitleOfTheQuiz(String Title) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(Title);

    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[@class='mat-icon material-icons']")).click();
    }

    @And("I click Single-Choice radio button")
    public void iClickSingleChoiceRadioButton() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Single-Choice')]")).click();
    }

    @And("I type {string} in Question *")
    public void iTypeInQuestion(String Question) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(Question);
    }

    @Then("I type {string} in Option one")
    public void iTypeInOption(String Option1) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']")).sendKeys(Option1);
    }

    @Then("I click Option one radio button")
    public void iClickOptionRadioButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']/../../../../..//div[@class='mat-radio-outer-circle']")).click();
        Thread.sleep(2000);
    }

    @And("I click preview button")
    public void iClickPreviewButton(){
        getDriver().findElement(By.xpath("//span[contains(text(),'Preview')]")).click();
    }

    @Then("Text field Other appears")
    public void textFieldOtherAppears() {
        assertThat(getDriver().findElement(By.xpath("//textarea[@placeholder='Other']")).isDisplayed()).isTrue();
    }

    @And("I type {string} in Option two")
    public void iTypeInOptionTwo(String Option2) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 2*']")).sendKeys(Option2);
    }


    @And("I click Include Other text area option for this question")
    public void iClickIncludeOtherTextAreaOptionForThisQuestion() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Include \"Other\" text area option for this question')]")).click();
    }

    @And("I click close button")
    public void iClickCloseButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Close')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Save button")
    public void iClickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }
}
