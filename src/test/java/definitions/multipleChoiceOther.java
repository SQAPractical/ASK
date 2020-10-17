package definitions;

import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static support.TestContext.getDriver;

public class multipleChoiceOther {
    @When("I click on {string} option button")
    public void iClickOnOptionButton(String text) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).click();
    }
}
