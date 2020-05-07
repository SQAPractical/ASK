package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.WebDriverWait;

import static support.TestContext.getDriver;

public class Regfirstname {
    @Given("I open Registration Page")
    public void iOpenRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @When("I type firstname {string}")
    public void iTypeFirstname(String fname) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(fname);
    }

    @And("I type lastname {string}")
    public void iTypeLastname(String lname) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(lname);
    }

    @And("I type Regemail {string}")
    public void iTypeRegemail(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }

    @And("I type groupcode {string}")
    public void iTypeGroupcode(String Gcode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(Gcode);
    }

    @And("I type Regpwd {string}")
    public void iTypeRegpwd(String pwd) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(pwd);
    }

    @And("I type Confirmpwd {string}")
    public void iTypeConfirmpwd(String Cpwd) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(Cpwd);
    }

    @And("I click Register me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
    }
}
