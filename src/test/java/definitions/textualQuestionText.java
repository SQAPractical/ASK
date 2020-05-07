package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class textualQuestionText {

    @Then("I click on {string} button")
    public void iClickOnInMainMenu(String button) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'"+button+"')]")).click();
    }

    @Then("I type {string} in the Title of the Quiz field")
    public void iTypeInTheField(String title) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-input-2']")).sendKeys(title);
    }

    @Then("I click on Add Question button")
    public void iClickOnAddQuestionButton() {
        getDriver().findElement(By.xpath("//*[@type='button']/span/mat-icon")).click();
    }

    @Then("I type {string} field")
    public void iTypeField(String question) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(question);
        Thread.sleep(2000);
    }

}
