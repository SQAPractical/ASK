package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class regpassconfpass {
    @When("I click on Register Now button")
    public void iClickOnRegisterNowButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Now')]")).click();
        Thread.sleep(2000);
    }

    @Then("element with {string} present")
    public void elementWithPresent(String element) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+element+"')]")).isDisplayed();
    }

//    @When("I type password {string} and confirm password {string}")
//    public void iTypePasswordAndConfirmPassword(String pass, String confpass) {
//        getDriver().findElement(By.xpath("//*[@placeholder='Password']")).sendKeys(pass);
//        getDriver().findElement(By.xpath("//*[@placeholder='Confirm Password']")).sendKeys(confpass);
//    }

    @And("I click on Register Me button")
    public void iClickOnRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
        Thread.sleep(2000);

    }


    @When("I type firstName {string}")
    public void iTypeFirstName(String firstName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(firstName);
    }

    @And("I type LastName {string}")
    public void iTypeLastName(String LastName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(LastName);
    }

    @And("I type  email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }

    @And("I type groupcode {string}")
    public void iTypeGroupcode(String groupCode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(groupCode);
    }

    @And("I type  registration password {string}")
    public void iTypeRegistrationPassword(String pass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password']")).sendKeys(pass);
    }

    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String confpass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Confirm Password']")).sendKeys(confpass);
    }


}
