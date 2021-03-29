package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class usersManagmStGroup {


    @And("I click on {string}")
    public void iClickOn(String expectedText) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+expectedText+"')]")).click();
        Thread.sleep(5000);
    }


    @And("I clear text field {string}")
    public void iClearTextfield(String expectedText) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder=" + "\"" + expectedText + "\"" + "]")).click();
        getDriver().findElement(By.xpath("//input[@placeholder=" + "\"" + expectedText + "\"" + "]")).clear();
        Thread.sleep(2000);
    }


    @And("I type newGroup {string} {string}")
    public void iTypeNewGroup(String expectedText, String newGroup) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder=" + "\"" + expectedText + "\"" + "]")).sendKeys(newGroup);
        Thread.sleep(2000);
    }


//    @Then("{string} appears")
//    public void textAppears(String nameGroup) throws InterruptedException {
//        Thread.sleep(5000);
//
//        String xpath = "//tr[contains(., \"Group\")][contains(., " + nameGroup +")]";
//        WebElement element = getDriver().findElement(By.xpath(xpath));
//
//        assertThat(element.isDisplayed()).isTrue();
//    }


    @And("I click on the {string}")
    public void iClickOnThe(String expectedText) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text()," + "\"" + expectedText + "\""+ ")]")).click();
        Thread.sleep(5000);
    }


    @And("I click on the button {string}")
    public void iClickOnTheButton(String expectedText) throws InterruptedException {
        getDriver().findElement(By.xpath("//button[contains(.," + "\"" + expectedText + "\""+ ")]")).click();
        Thread.sleep(5000);
    }

    @Then("group name {string} appears")
    public void groupNameAppears(String nameGroup) throws InterruptedException {
        Thread.sleep(5000);

        String xpath = "//tr[contains(., \"Group\")][contains(., " + nameGroup +")]";
        WebElement element = getDriver().findElement(By.xpath(xpath));

        assertThat(element.isDisplayed()).isTrue();
    }
}
