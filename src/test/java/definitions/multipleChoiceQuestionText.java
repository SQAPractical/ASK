package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class multipleChoiceQuestionText {
    @And("I click on Quizzes menu button N")
    public void iClickOnQuizzesMenuButtonN() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Add Question button N")
    public void iClickOnAddQuestionButtonN() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'add_circle')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Multiple-Choice radio button")
    public void iClickOnMultipleChoiceRadioButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Multiple-Choice')]/../..")).click();
        Thread.sleep(1000);
    }

    @And("I click on Add Option button")
    public void iClickOnAddOptionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Add Option')]")).click();
        Thread.sleep(500);
    }


    @Then("Button Add Option is disabled")
    public void buttonAddOptionIsDisabled() {
        getDriver().findElement(By.xpath("//button[@type='button'][@disabled]")).click();
    }
}