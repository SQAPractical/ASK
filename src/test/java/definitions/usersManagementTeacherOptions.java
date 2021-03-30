package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class usersManagementTeacherOptions {
//    @And("I click on User's Management button")
//    public void iClickOnUserSManagementButton() throws InterruptedException {
//        Thread.sleep(2000);
//        getDriver().findElement(By.xpath("//*[contains(@href,'users-management')]")).click();
//    }

//    @And("I click on Teachers button")
//    public void iClickOnTeachersButton() throws InterruptedException {
//        Thread.sleep(2000);
//        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
//    }

    @And("I click on {string} name")
    public void iClickOnName(String personName) throws InterruptedException {
        Thread.sleep(2000);
        String xpath = "//*[contains(text(),'"+personName+"')]";
        getDriver().findElement(By.xpath(xpath)).click();
    }

//    @And("I click on Options button")
//    public void iClickOnOptionsButton() throws InterruptedException {
//        Thread.sleep(1000);
//        getDriver().findElement(By.xpath("//*[@class='mat-raised-button mat-accent']")).click();
//    }

    @And("I click on Change User's Name button")
    public void iClickOnChangeUserSNameButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[contains(.,'Name')]")).click();
        Thread.sleep(1000);
    }

    @And("I change name to {string}")
    public void iChangeNameTo(String newName) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).clear();
        getDriver().findElement(By.xpath("//*[contains(@placeholder,'Name')]")).sendKeys(newName);
    }

    @And("I click on Change button")
    public void iClickOnChangeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[contains(.,'Change')]")).click();
        Thread.sleep(2000);
    }

    @And("I delete User's Name")
    public void iDeleteUserSName() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(Keys.chord(Keys.CONTROL,"a"));
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(Keys.DELETE);
        Thread.sleep(1000);
    }

    @And("I press Enter on the keyboard")
    public void iPressEnterOnTheKeyboard() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(Keys.ENTER);
        Thread.sleep(1000);
    }

    @Then("Error message about required field appears")
    public void errorMessageAboutRequiredFieldAppears() throws InterruptedException {
        Thread.sleep(2000);
        assertThat(getDriver().findElement(By.xpath("//*[@class='mat-input-subscript-wrapper mat-form-field-subscript-wrapper']")).isDisplayed()).isTrue();
        Thread.sleep(1000);
    }

    @Then("Change button is disabled")
    public void changeButtonIsDisabled() throws InterruptedException {
        Thread.sleep(1000);
        assertThat(getDriver().findElement(By.xpath("//span[contains(text(),'Change')]/..")).isEnabled()).isFalse();
    }

    @And("I close mat-card")
    public void iCloseMatCard() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'close')]/../..")).click();
    }

//    @And("I click on Change User's Role button")
//    public void iClickOnChangeUserSRoleButton() throws InterruptedException {
//        Thread.sleep(1000);
//        getDriver().findElement(By.xpath("//button[contains(.,'Role')]")).click();
//    }

//    @And("I click on {string} button")
//    public void iClickOnButton(String actionsWithRole) throws InterruptedException {
//        Thread.sleep(1000);
//        getDriver().findElement(By.xpath("//span[contains(text(),'"+actionsWithRole+"')]")).click();
//    }
}
