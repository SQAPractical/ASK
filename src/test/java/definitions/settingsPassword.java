package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class settingsPassword {
    @And("I click on Settings button")
    public void iClickOnSettingsButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Settings')]/../..")).click();

    }

    @And("I click on Change Your Password button")
    public void iClickOnChangeYourPasswordButton()  {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change Your Password')]")).click();
        }


    @And("I type new password {string}")
    public void iTypeNewPassword(String Npass) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='newPassword']")).sendKeys(Npass);
    }


    @And("I click on Change button")
    public void iClickOnChangeButton() {
        getDriver().findElement(By.xpath("//span[text()='Change']")).click();
    }

    @And("I click on Log Out button")
    public void iClickOnLogOutButton()  {
        getDriver().findElement(By.xpath("//*[@class='mat-line'][contains(text(),'Log Out')]")).click();

    }

    @And("I confirm Log Out")
    public void iConfirmLogOut()  {
        getDriver().findElement(By.xpath("//span[text()='Log Out']")).click();

    }

    @Then("Element with text {string} is displayed on Sign In page")
    public void elementWithTextIsDisplayedOnSignInPage(String element) {
        String elementOnSignInPage = "//*[contains(text(),'I forgot my password')]";
        String xPath = "//*[contains(text(),'"+element+"')]";

        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnSignInPage)));
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
    }


    @And("I click on empty space")
    public void iClickOnEmptySpace() throws InterruptedException {
        wait(1000);
        getDriver().findElement(By.xpath("//div[@class='mat-dialog-actions']")).click();
        wait(1000);
    }

    @And("I move cursor to {string} input field")
    public void iMoveCursorToInputField(String arg0) throws InterruptedException {
        wait(1000);
        getDriver().findElement(By.xpath("//*[@formcontrolname=\"newPassword\"]")).click();
        wait(5000);
    }


}


