package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class settingsFullName {

    @And("I click on {string} button on Settings page")
    public void iClickOnButtonOnSettingsPage(String buttonNameOnSettingsPage) throws InterruptedException {
        getDriver().findElement(By.xpath("//button/span[text()='"+buttonNameOnSettingsPage+"']")).click();
        Thread.sleep(1000);
    }

    @And("I type name {string} into New name field")
    public void iTypeNameIntoNewNameField(String newNameOnSettingPage) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-dialog-container//input[@formcontrolname='name']")).sendKeys(Keys.chord(Keys.CONTROL, "a"), Keys.DELETE);
        getDriver().findElement(By.xpath("//mat-dialog-container//input[@formcontrolname='name']")).sendKeys(Keys.chord(Keys.COMMAND, "a"), Keys.DELETE);
        getDriver().findElement(By.xpath("//mat-dialog-container//input[@formcontrolname='name']")).sendKeys(newNameOnSettingPage);
        Thread.sleep(1000);
    }

    @And("I verify that name {string} changed successfully")
    public void iVerifyThatNameChangedBackToSuccessfully(String updatedName) throws InterruptedException {
        String newName = getDriver().findElement(By.xpath("//mat-card//*[contains(text(), '"+updatedName+"')]")).getText();
        assertThat(newName.contains(updatedName)).isTrue();
        Thread.sleep(1000);
    }

    @And("I change name back to default {string}")
    public void iChangeNameBackToDefault(String NameOnSettingPage) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-dialog-container//input[@formcontrolname='name']")).sendKeys(Keys.chord(Keys.CONTROL, "a"), Keys.DELETE);
        getDriver().findElement(By.xpath("//mat-dialog-container//input[@formcontrolname='name']")).sendKeys(Keys.chord(Keys.COMMAND, "a"), Keys.DELETE);
        getDriver().findElement(By.xpath("//mat-dialog-container//input[@formcontrolname='name']")).sendKeys(NameOnSettingPage);
        Thread.sleep(1000);
    }

    @And("I remove name from New name field")
    public void iRemoveNameFromNewNameField() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-dialog-container//input[@formcontrolname='name']")).sendKeys(Keys.chord(Keys.CONTROL, "a"), Keys.DELETE);
        getDriver().findElement(By.xpath("//mat-dialog-container//input[@formcontrolname='name']")).sendKeys(Keys.chord(Keys.COMMAND, "a"), Keys.DELETE);
        Thread.sleep(2000);
    }

    @And("I verify that button {string} is disabled")
    public void iVerifyThatButtonIsDisabled(String buttonChange) {
        assertThat(buttonChange.contains(getDriver().findElement(By.xpath("//button[@disabled='']")).getText())).isTrue();
    }

    @And("I see error message {string} displayed")
    public void iSeeErrorMessageDisplayed(String errMsg) throws InterruptedException {
        getDriver().findElement(By.xpath("//button/span[text()='Change']")).click();
        Thread.sleep(2000);
        assertThat(errMsg.contains(getDriver().findElement(By.xpath("//mat-error[contains(text(),'"+errMsg+"')]")).getText())).isTrue();
    }

    @And("I verify that name {string} saved without leading spaces")
    public void iVerifyThatNameSavedWithoutLeadingSpaces(String updatedName) {
        String newName = getDriver().findElement(By.xpath("//mat-card//*[contains(text(), '"+updatedName+"')]")).getText();
        assertThat(newName.equals(updatedName)).isTrue();
    }

    @And("I verify that name {string} saved without trailing spaces")
    public void iVerifyThatNameSavedWithoutTrailingSpaces(String updatedName) {
        String newName = getDriver().findElement(By.xpath("//mat-card//*[contains(text(), '"+updatedName+"')]")).getText();
        assertThat(newName.equals(updatedName)).isTrue();
    }

}

    

