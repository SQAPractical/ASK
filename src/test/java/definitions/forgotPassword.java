//Created by Almir 10/23/20
package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class forgotPassword {
    private static String email;
    @And("I click I forgot my password")
    public void iClickIForgotMyPassword() {
        getDriver().findElement(By.xpath("//a[contains(text(),'I forgot my password')]")).click();
    }

    @And("I type email {string} on Reset Password Request page")
    public void iTypeEmailOnResetPasswordRequestPage(String email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
        forgotPassword.email = email;
    }

    @And("I click Request Password Reset")
    public void iClickRequestPasswordReset() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Request Password Reset')]")).click();
    }

    @And("I navigate to my email generator page")
    public void iNavigateToMyEmailGeneratorPage() throws InterruptedException {
        getDriver().get("https://generator.email/"+email+"");
        Thread.sleep(3000);
    }

    @And("I click on last incoming message")
    public void iClickOnLastIncomingMessage() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Reset Your Password')]")).click();
    }

    @And("I click Reset Password")
    public void iClickResetPassword() throws InterruptedException {
        getDriver().findElement(By.xpath("//a[contains(text(),'Reset Password')]")).click();
        Thread.sleep(3000);
    }

    @And("I type new password {string}")
    public void iTypeNewPassword(String password) {
        for(String winHandle : getDriver().getWindowHandles()){
            getDriver().switchTo().window(winHandle);
        }
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
    }

    @And("I confirm password {string}")
    public void iConfirmPassword(String password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(password);
    }

    @And("I click on Reset button")
    public void iClickOnResetButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Reset')]/..")).click();
        Thread.sleep(2000);
    }

    @And("I click Back To Login Page")
    public void iClickBackToLoginPage() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Back To Login Page')]/..")).click();
    }

    @Then("Pop-up window appears with message: Authentication failed. User not found or password does not match")
    public void popUpWindowAppearsWithMessageAuthenticationFailedUserNotFoundOrPasswordDoesNotMatch() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//simple-snack-bar")).isDisplayed();
    }
}
