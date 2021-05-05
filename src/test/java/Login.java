import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class Login {
    @When("I navigate to login page")
    public void iNavigateToLoginPage() {
            getDriver().get("http://ask-stage.portnov.com/#/login");
        }

    @And("I click on Sign In button")
    public void iClickOnSignInButton() {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();

    }
}


