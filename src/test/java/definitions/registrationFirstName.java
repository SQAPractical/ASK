package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class registrationFirstName {
    @Given("I navigate to registration page")
    public void iNavigateToRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration"
);
    }

    @When("i type first name {string}")
    public void iTypeFirstName(String fName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(fName);
    }

    @And("i type group code {string}")
    public void iTypeGroupCode(String lName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']").s
        ))
    }
}
