package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class settingsPassword {
    @And("I type old password {string}")
    public void iTypeOldPassword(String oldPswrd) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password']")).sendKeys(oldPswrd);

    }

    @And("I type new password {string}")
    public void iTypeNewPassword(String newPswrd) {
        getDriver().findElement(By.xpath("//*[@placeholder='New Password']")).sendKeys(newPswrd);
    }

    @And("I type {string} to confirm new password")
    public void iTypeToConfirmNewPassword(String cnfrmPswrd) {
        getDriver().findElement(By.xpath("//*[@placeholder='Confirm New Password']")).sendKeys(cnfrmPswrd);
    }

    @And("I click on Change button")
    public void iClickOnChangeButton() {
        getDriver().findElement(By.xpath("//button[@type='button'][@aria-label='Close dialog']/span[text() ='Change']")).click();
    }

    @And("I click Log Out button")
    public void iClickLogOutButton() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();
    }

    @And("I click the same button on pop-up window")
    public void iClickTheSameButtonOnPopUpWindow() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on New Password field")
    public void iClickOnNewPasswordField() {
        getDriver().findElement(By.xpath("//*[@placeholder='New Password']")).click();
    }

    @And("I click on Confirm New Password field")
    public void iClickOnConfirmNewPasswordField() {
        getDriver().findElement(By.xpath("//*[@placeholder='Confirm New Password']")).click();
    }

    @And("I wait for {int} sec")
    public void iWaitForSec(int numOfSecond) throws InterruptedException {
        Thread.sleep(numOfSecond*1000);
    }
}
