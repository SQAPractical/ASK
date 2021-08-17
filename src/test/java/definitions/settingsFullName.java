package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class settingsFullName {



    @And("I click Settings")
    public void iClickSettings() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Settings')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Change Your Name button")
    public void iClickOnChangeYourNameButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change Your Name')]")).click();
    }


    @And("I type new name {string}")
    public void iTypeNewName(String NewName) {
        getDriver().findElement(By.xpath("//input[@placeholder = \"New name\"]")).sendKeys(NewName);
    }

    @And("I click on Change button")
    public void iClickOnChangeButton() {
        getDriver().findElement(By.xpath("//body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-adjust-user[1]/form[1]/div[2]/button[2]/span[1]")).click();
    }


    @Then("user's name changed to {string}")
    public void elementWithUserName(String NewUserName) throws InterruptedException {
        Thread.sleep(1000);
        String xPath = "//td[contains(text(),'"+NewUserName+"')]";
        WebElement elementWithUserName = getDriver().findElement(By.xpath(xPath));
        assertThat(elementWithUserName.isDisplayed()).isTrue();
    }


    @And("I delete name")
    public void iDeleteName() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='New name']")).sendKeys(Keys.chord(Keys.CONTROL, "a"));
        getDriver().findElement(By.xpath("//*[@placeholder='New name']")).sendKeys(Keys.chord(Keys.COMMAND, "a"));
        getDriver().findElement(By.xpath("//*[@placeholder='New name']")).sendKeys(Keys.DELETE);
        getDriver().findElement(By.xpath("//*[@placeholder='New name']")).sendKeys(Keys.BACK_SPACE);
        Thread.sleep(2000);
    }

    @Then("user's name is changed to {string}")
    public void userSNameIsChangedTo(String NewUserName) throws InterruptedException {
        Thread.sleep(2000);
        String xPath = "//tr[1]/td[2]";
        WebElement elementWithUserName = getDriver().findElement(By.xpath(xPath));
        assertThat(elementWithUserName.isDisplayed()).isTrue();
    }
}
