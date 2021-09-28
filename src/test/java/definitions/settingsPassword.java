package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class settingsPassword {
    @And("I delete old Password")
    public void iDeleteOldPassword() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(Keys.chord(Keys.CONTROL, "a"));
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(Keys.chord(Keys.COMMAND, "a"));
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(Keys.DELETE);
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(Keys.BACK_SPACE);
    }

//    @And("I type new Password")
//    public void iTypeNewPassword(String NewPassword) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(NewPassword);
//    }

    @And("I type new Password {string}")
    public void iTypeNewPassword(String NewPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='newPassword']")).sendKeys(NewPassword);
    }

    @And("I confirm new Password {string}")
    public void iConfirmNewPassword(String NewPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(NewPassword);
    }

    @And("I confirm Log Out")
    public void iConfirmLogOut() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
    }

    @Then("Home page appears")
    public void homePageAppears() {
        WebElement Element = getDriver().findElement(By.xpath("//h5[contains(text(),'Home')]"));
        assertThat(Element.isDisplayed()).isTrue();
    }

    @And("I type Password in the Changing Password window {string}")
    public void iTypePasswordInTheChangingPasswordWindow(String PassInChangingPassword) {
        getDriver().findElement(By.xpath("//body[1]/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-change-password[1]/form[1]/div[1]/mat-form-field[1]/div[1]/div[1]/div[1]/input[1]")).sendKeys(PassInChangingPassword);
    }

    @And("I click on New Password field")
    public void iClickOnNewPasswordField() throws InterruptedException {
        getDriver().findElement(By.xpath("//body[1]/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-change-password[1]/form[1]/div[1]/mat-form-field[2]/div[1]/div[1]/div[1]/input[1]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Confirm Password field")
    public void iClickOnConfirmPasswordField() {
        getDriver().findElement(By.xpath("//body[1]/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-change-password[1]/form[1]/div[1]/mat-form-field[3]/div[1]/div[1]/div[1]/input[1]")).click();
    }
}
