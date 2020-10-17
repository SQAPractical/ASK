package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static support.TestContext.getDriver;

public class multipleChoiceOther {
    @When("I click on {string} option button")
    public void iClickOnOptionButton(String text) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).click();
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @When("I click on the button Add Question")
    public void iClickOnTheButtonAddQuestion() {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();

    }

    @When("I type {string} into Question input field")
    public void iTypeIntoQuestionInputField(String text) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(text);

    }

    @And("I type {string} into Question {string} input field")
    public void iTypeIntoQuestionInputField(String text, String qNumber) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option "+qNumber+"*']")).sendKeys(text);
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
