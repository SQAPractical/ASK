package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class settingsPassword {


    @And("I click Change Your Password button")
    public void iClickChangeYourPasswordButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(.,'Change Your Password')]")).click();
        Thread.sleep(2000);
    }

    @And("I type new password {string}")
    public void iTypeNewPassword(String newPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='newPassword']")).sendKeys(newPassword);
    }

    @And("I type confirm new password {string}")
    public void iTypeConfirmNewPassword(String newPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(newPassword);
    }

    @And("I click Change button")
    public void iClickChangeButton()  {
        getDriver().findElement(By.xpath("//button[normalize-space()='Change']")).click();

    }

    @And("I click Log Out button")
    public void iClickLogOutButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper']/../..//span[contains(text(),'Log Out')]")).click();
        Thread.sleep(2000);
    }

    @And("I click New Password field")
    public void iClickNewPasswordField() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='newPassword']")).click();

    }

    @And("I click Cancel button")
    public void iClickCancelButton() {
        getDriver().findElement(By.xpath("//button[normalize-space()='Cancel']")).click();
    }
}
