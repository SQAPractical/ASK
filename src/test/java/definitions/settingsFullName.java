package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class settingsFullName {
    @And("I click on Change Your Name button")
    public void iClickOnChangeYourNameButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change Your Name')]")).click();
        Thread.sleep(2000);
    }

    @And("I type text {string}")
    public void iTypeText(String AlfanumericSpecialChar) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='New name']")).sendKeys(AlfanumericSpecialChar);
        Thread.sleep(2000);
    }

    @And("I clear text")
    public void iClearText() throws InterruptedException {
//        getDriver().findElement(By.xpath("//input[@placeholder='New name']")).clear();
//        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//input[@placeholder='New name']")).sendKeys(Keys.chord(Keys.CONTROL, "a"));
        getDriver().findElement(By.xpath("//input[@placeholder='New name']")).sendKeys(Keys.chord(Keys.COMMAND, "a"));
        getDriver().findElement(By.xpath("//input[@placeholder='New name']")).sendKeys(Keys.DELETE);
        getDriver().findElement(By.xpath("//input[@placeholder='New name']")).sendKeys(Keys.BACK_SPACE);
    }

    @And("I click on Change button")
    public void iClickOnChangeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[normalize-space()='Change']")).click();
        Thread.sleep(2000);
    }

    @Then("Text {string} appears")
    public void textAppears(String NewName) throws InterruptedException {
        Thread.sleep(2000);
        WebElement element = getDriver().findElement(By.xpath("//td[contains(text(),'"+NewName+"')]"));
        assertThat(element.isDisplayed()).isTrue();
    }

    @Then("Error Message appears")
    public void errorMessageAppears() throws InterruptedException {
        Thread.sleep(2000);
        WebElement element = getDriver().findElement(By.xpath("//mat-error[contains(text(),'This field is required')]"));
        assertThat(element.isDisplayed()).isTrue();
    }

}
