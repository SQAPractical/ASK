package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static support.TestContext.getDriver;

public class SettingsFullName {
    @And("I click on {string} button")
    public void iClickOnButton(String buttonName) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+buttonName+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I type new name {string}")
    public void iTypeNewName(String NewName) {
        getDriver().findElement(By.xpath(" //input[@formcontrolname='name']")).sendKeys(NewName);
    }

    @And("I click on Change button")
    public void iClickOnChangeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//h1[contains(text(),'Changing')]/../../..//span[contains(text(),'Change')]")).click();
        Thread.sleep(2000);

    }

    @And("deleted name on Settings page")
    public void deletedNameOnSettingsPage() {
        getDriver().findElement(By.xpath(" //input[@formcontrolname='name']")).clear();
    }
}

    