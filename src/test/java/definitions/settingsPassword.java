package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class settingsPassword {
    @Then("I click on Settings")
    public void iClickOnSettings() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Settings')]")).click();
    }

    @Then("I click change password button")
    public void iClickChangePasswordButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change Your Password')]")).click();
    }

    @Then("I type old password {string}")
    public void iTypeOldPassword(String oldpass) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(oldpass);
    }

    @Then("I type new password {string}")
    public void iTypeNewPassword(String newpass) {
        getDriver().findElement(By.xpath("//input[@placeholder='New Password']")).sendKeys(newpass);
    }

    @Then("I confirm new password {string}")
    public void iConfirmNewPassword(String newpass) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm New Password']")).sendKeys(newpass);
    }

    @Then("I click on change button")
    public void iClickOnChangeButton() {
        getDriver().findElement(By.xpath("//button[@aria-label='Close dialog']/span[contains(text(),'Change')]")).click();
    }

    @Then("I click on logout")
    public void iClickOnLogout() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();
    }

    @Then("I click on confirm logout")
    public void iClickOnConfirmLogout() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
    }

    @When("I type email {string} on page")
    public void iTypeEmailOnPage(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
    }

    @And("Element {string} could be displayed")
    public void elementCouldBeDisplayed(String assess) {
        getDriver().findElement(By.xpath("//h3[contains(text(),'Assessment Control')]")).isDisplayed();
    }

    @Then("I should see page title as {string}")
    public void iShouldSeePageTitleAs(String title) {
        assertThat(getDriver().getTitle()).isEqualTo(title);
    }

    @Then("I wait for {int} sec")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Then("message {string} apears")
    public void messageApears(String message) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'This field is required')]")).isDisplayed()).isTrue();
    }

    @Then("message new password {string} apears")
    public void messageNewPasswordApears(String message) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'Whitespaces are not allowed')]")).isDisplayed()).isTrue();
    }
    @Then("message new password short {string} apears")
    public void messageNewPassworShortdApears(String message) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'Too short. Should be at least 5 characters')]")).isDisplayed()).isTrue();
    }


    @Then("message new password match {string} apears")
    public void messageNewPasswordMatchApears(String message) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'Entered passwords should match')]")).isDisplayed()).isTrue();
    }

    @Then("element with {string} should be disabled")
    public void elementWithShouldBeDisabled(String change) {
        assertThat(getDriver().findElement(By.xpath("//button[@aria-label='Close dialog']/span[contains(text(),'Change')]")).isEnabled()).isFalse();
    }
}
