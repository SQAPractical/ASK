package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class settingsPassword {
        @Then("I Click {string} and I type in {string} in password and {string} in new password and {string} in confirm password")
    public void iClickAndITypeInInPasswordAndInNewPasswordAndInConfirmPassword(String arg0, String op, String np, String npc) {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change Your Password')]")).click();
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(op);
        getDriver().findElement(By.xpath("//input[@placeholder='New Password']")).sendKeys(np);
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm New Password']")).sendKeys(npc);
        getDriver().findElement(By.xpath("//div[@class='mat-dialog-actions']//button[@class='mat-raised-button mat-primary']")).click();

    }
}
