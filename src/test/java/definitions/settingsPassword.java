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
    public void iTypeConfirmNewPassword(String newPassword) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(newPassword);
        Thread.sleep(2000);
    }

    @And("I click Change button")
    public void iClickChangeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[normalize-space()='Change']")).click();
        Thread.sleep(2000);

    }
}
