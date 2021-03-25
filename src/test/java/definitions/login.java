package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class login {
    @When("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I click on Sign In button")
    public void iClickOnSignInButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
    }

    @Then("Password displays in bullets and copy cut disabled")
    public void passwordDisplaysInBulletsAndCopyCutDisabled() {
        String attribute = "type";
        String attributeValue = "password";

        WebElement element = getDriver().findElement(By.xpath("//*[@formcontrolname='password']"));
        String expectedAttribute = element.getAttribute(attribute);
        assertThat(expectedAttribute).isEqualTo(attributeValue);

    }
}
