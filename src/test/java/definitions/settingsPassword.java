package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class settingsPassword {
//    @When("I navigate to login page")
//    public void iNavigateToLoginPage() {
//        getDriver().get("http://ask-stage.portnov.com/#/login");
//
//    }

//    @And("I type Email {string}")
//    public void iTypeEmail(String Email) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(Email);
//    }

//    @And("I type Password {string}")
//    public void iTypePassword(String Password) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(Password);
//    }

//    @And("I click Sign In button")
//    public void iClickSignInButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
//        Thread.sleep(3000);
//    }

    @And("I click Settings")
    public void iClickSettings() {
        getDriver().findElement(By.xpath("//h5[normalize-space()='Settings']")).click();
    }

    @And("I click Change Your Password button")
    public void iClickChangeYourPasswordButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change Your Password')]")).click();
    }

    @And("I type New Password {string}")
    public void iTypeNewPassword(String NewPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='newPassword']")).sendKeys(NewPassword);
    }

    @And("I type Confirm New Password {string}")
    public void iTypeConfirmNewPassword(String ConfirmPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(ConfirmPassword);
    }

    @And("I click Change button")
    public void iClickChangeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[normalize-space()='Change']")).click();

        Thread.sleep(3000);
    }


//    @Then("text {string} appears")
//    public void textAppears(String text) {
//        String xPath = "//mat-form-field[1]//div[1]//div[3]";
//        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
//    }


    @Then("Error {string} appears")
    public void errorAppears(String Error) {
        String xPath = "//*[contains(text(), '"+Error+"')]";
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();


    }

    @Then("Change button disabled")
    public void ChangeButtonDisabled() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='cdk-overlay-container']//button[2][@disabled]")).click();

    }

    @And("I click on Log Out on left menu")
    public void iClickOnLogOutOnLeftMenu() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
        Thread.sleep(2000);
    }
}