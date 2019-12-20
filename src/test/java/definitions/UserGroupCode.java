package definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class UserGroupCode {
    @When("^I type first name \"([^\"]*)\"$")
    public void iTypeFirstName(String Fname) throws Throwable {
        getDriver().findElement(By.xpath("//*[@placeholder='First Name']")).sendKeys(Fname);
    }

    @And("^I type last name \"([^\"]*)\"$")
    public void iTypeLastName(String Lname) throws Throwable {
        getDriver().findElement(By.xpath("//*[@placeholder='Last Name']")).sendKeys(Lname);
    }
}
