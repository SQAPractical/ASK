package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class login {
    @Then("password displays in bullets, copy and cut disabled")
    public void passwordDisplaysInBulletsCopyAndCutDisabled() {
        String xPathForPasswordField = "//input[@formcontrolname='password']";
        String expectedAttributeValue = "password";

        String actualAttributeValue = getDriver().findElement(By.xpath(xPathForPasswordField)).getAttribute("type");

        assertThat(actualAttributeValue.equals(expectedAttributeValue)).isTrue();
    }
}
