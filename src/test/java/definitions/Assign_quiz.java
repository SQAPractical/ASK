package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class Assign_quiz {
    @And("I type quiz name {string}")
    public void iTypeQuizName(String quiz) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(quiz);
    }


    @Then("I click  button Single choice")
    public void iClickButtonSingleChoice() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//div[contains(text(),'Single-Choice')]/..//*[@class='mat-radio-outer-circle']")).click();
    }


    @Then("I type in question field {string}")
    public void iTypeInQuestionField(String quiz) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@placeholder='Question *']")).sendKeys(quiz);

    }


    @And("I type in first field {string}")
    public void iTypeInFirstField(String text) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@placeholder='Option 1*']")).sendKeys(text);
    }

    @And("I type in second field {string}")
    public void iTypeInSecondField(String second) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[@placeholder='Option 2*']")).sendKeys(second);
    }

    @Then("I select first Option is correct answer")
    public void iSelectFirstOptionIsCorrectAnswer() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']/../../../../..//*[@class='mat-radio-outer-circle']")).click();
    }

    @Then("I click on Save button")
    public void iClickOnSaveButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//div[@class='form-controls-container ng-star-inserted']//button[2]")).click();

    }
}




