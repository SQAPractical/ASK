package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class LogInVI {
    @And("I click on I forgot my password link")
    public void iClickOnIForgotMyPasswordLink() {
        getDriver().findElement(By.xpath("//a[contains(text(),'I forgot my password')]")).click();
    }


    @Then("Password in bullets, copy and cut disabled")
    public void passwordInBulletsCopyAndCutDisabled() {
       String xPathForPasswordField = "//*[@formcontrolname='password']";
       String expectedAttribute = "type";
       String expectedAttributeValue = "password";
        WebElement passwordField = getDriver().findElement(By.xpath(xPathForPasswordField));

       assertThat(passwordField.getAttribute(expectedAttribute)).isEqualTo(expectedAttributeValue);
    }
}
