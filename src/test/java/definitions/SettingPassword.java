package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class SettingPassword {
    @And("I type login {string}")
    public void iTypeLogin(String Login) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(Login);
    }

    @And("I click Setting")
    public void iClickSetting() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Settings')]")).click();
    }

    @And("I click Change Your Password button")
    public void iClickChangeYourPasswordButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change Your Password')]")).click();
    }


    @And("I type New Password {string}")
    public void iTypeNewPassword(String NewPass) {
        getDriver().findElement(By.xpath("//input[@placeholder='New Password']")).sendKeys(NewPass);
    }

    @And("I click Change button")
    public void iClickChangeButton() {
        getDriver().findElement(By.xpath("//body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-change-password[1]/form[1]/div[2]/button[2]")).click();
    }


    @And("I click Log Out")
    public void iClickLogOut() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();
    }

    @And("I confirm Log Out")
    public void iConfirmLogOut() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
    Thread.sleep(2000);
    }


}
