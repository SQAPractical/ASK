package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class settingsPassword {

    @And("I type new password {string}")
    public void iTypeNewPassword(String newPassword) {
        getDriver().findElement(By.xpath("//input[@placeholder='New Password']")).sendKeys(newPassword);
    }

    @And("I type confirm new password {string}")
    public void iTypeConfirmNewPassword(String confirmNewPassword) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm New Password']")).sendKeys(confirmNewPassword);
    }

    @And("I redirect to settings page")
    public void iRedirectToSettingsPage() {
        getDriver().get("http://ask-stage.portnov.com/#/settings");
    }

    @And("I click outside the Confirm password field")
    public void iClickOutsideTheConfirmPasswordField() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='mat-dialog-content']")).click();
        Thread.sleep(2000);
    }
    @And("I click on Change button")
    public void iClickOnChangeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button/span[text()='Change']")).click();
        Thread.sleep(2000);
    }

    @And("I click on Log Out")
    public void iClickOnLogOut() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();
    }

    @And("I redirect to login page")
    public void iRedirectToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I confirm Log Out")
    public void iConfirmLogOut() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Confirmation')]/../..//button/span[contains(text(),'Log Out')]")).click();
        Thread.sleep(1000);
    }
}
