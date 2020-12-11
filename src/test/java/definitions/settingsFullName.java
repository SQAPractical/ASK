package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import java.util.concurrent.TimeUnit;

import static support.TestContext.getDriver;

public class settingsFullName {
    @And("I click Sign In button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
        getDriver().manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        //Thread.sleep(2000);
    }

    @And("I click on {string} menu item")
    public void iClickOnMenuItem(String menuItem) throws InterruptedException {
       getDriver().findElement(By.xpath("//h5[contains(text(),'"+menuItem+"')]")).click();
       Thread.sleep(2000);
    }

    @And("I click {string} button")
    public void iClickButton(String buttonName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+buttonName+"')]")).click();
    }

    @And("I type new name {string}")
    public void iTypeNewName(String newName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='New name']")).clear();
        getDriver().findElement(By.xpath("//*[@placeholder='New name']")).sendKeys(newName);
        Thread.sleep(2000);
    }

    @And("I click Change button")
    public void iClickChangeButton() {
        getDriver().findElement(By.xpath("//button[@type='button'][@aria-label='Close dialog']/span[text() ='Change']")).click();
    }

    @And("I deleted name on settings page")
    public void iDeletedNameOnSettingsPage() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='New name']")).sendKeys(Keys.chord(Keys.CONTROL, "a"));
        getDriver().findElement(By.xpath("//*[@placeholder='New name']")).sendKeys(Keys.DELETE);
        getDriver().findElement(By.xpath("//*[@placeholder='New name']")).sendKeys(Keys.BACK_SPACE);
        Thread.sleep(2000);
    }

    @And("I click on text Changing User's Name")
    public void iClickOnTextChangingUserSName() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Changing User')]")).click();
    }
}
