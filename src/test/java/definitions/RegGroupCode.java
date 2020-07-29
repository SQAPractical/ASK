package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class RegGroupCode {
    @When("I type name {string}")
    public void iTypeName(String name) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(name);
    }

    @And("I type Last Name {string}")
    public void iTypeLastName(String lastName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(lastName);
    }
}
