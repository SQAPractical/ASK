package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class usersManagmStName {
    @And("I click Change Your Name button")
    public void iClickChangeYourNameButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Change Your Name')]")).click();
        Thread.sleep(2000);
    }

    @And("I delete name in New Name field")
    public void iDeleteNameInNewNameField() throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(Keys.CONTROL + "a");
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(Keys.DELETE);
        Thread.sleep(2000);

    }

    @And("I type {string} into New Name field")
    public void iTypeIntoNewNameField(String newName) throws InterruptedException {
        getDriver().findElement(By.xpath("//h1[contains(text(), 'Changing User')]/../../..//input[@placeholder='New name']")).sendKeys(newName);
        Thread.sleep(2000);
    }

    @And("I click Change button")
    public void iClickChangeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//h1[contains(text(), 'Changing User')]/..//span[contains(text(), 'Change')]")).click();
        Thread.sleep(3000);
    }

    @Then("New name {string} is displayed on user's card")
    public void newNameIsDisplayedOnUserSCard(String newName) throws InterruptedException {
        String name = getDriver().findElement(By.xpath("//mat-card//td[contains(text(), '"+newName+"')]")).getText();
        Thread.sleep(2000);
        assertThat(name.contains(newName)).isTrue();
    }

    @And("I select and cut existed name from name field")
    public void iSelectAndCutExistedNameFromNameField() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(Keys.CONTROL + "a");
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(Keys.CONTROL + "x");
    }

    @And("I type Space into New Name field")
    public void iTypeSpaceIntoNewNameField() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(Keys.SPACE);
    }

    @And("I paste name back into New Name field")
    public void iPasteNameBackIntoNewNameField() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(Keys.CONTROL + "v");
    }
}
