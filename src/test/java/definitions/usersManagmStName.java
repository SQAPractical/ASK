package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class usersManagmStName {
    @And("I click Change Your Name button")
    public void iClickChangeYourNameButton() {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Change Your Name')]")).click();
    }

    @And("I type {string} into New Name field")
    public void iTypeIntoNewNameField(String newName) throws InterruptedException {
        getDriver().findElement(By.xpath("//h1[contains(text(), 'Changing User')]/../../..//input[@placeholder='New name']")).clear();
        getDriver().findElement(By.xpath("//h1[contains(text(), 'Changing User')]/../../..//input[@placeholder='New name']")).sendKeys(newName);
        Thread.sleep(2000);
    }

    @And("I click Change button")
    public void iClickChangeButton() {
        getDriver().findElement(By.xpath("//h1[contains(text(), 'Changing User')]/..//span[contains(text(), 'Change')]")).click();
    }

    @Then("New name {string} is displayed on user's card")
    public void newNameIsDisplayedOnUserSCard(String newName) throws InterruptedException {
        String name = getDriver().findElement(By.xpath("//mat-card//td[contains(text(), '"+newName+"')]")).getText();
        Thread.sleep(2000);
        assertThat(name.contains(newName)).isTrue();
    }
}
