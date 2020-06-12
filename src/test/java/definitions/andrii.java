package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class andrii {
    @Given("I navigate to {string} page")
    public void iNavigateToPage(String page) {
        if (page.equalsIgnoreCase("login")) {
            getDriver().get("http://ask-stage.portnov.com/#/login");
        } else if (page.equalsIgnoreCase("registration")) {
            getDriver().get("http://ask-stage.portnov.com/#/registration");
        } else {
            System.out.println("Page is not supported");
        }
    }

    @And("I typed email {string}")
    public void iTypedEmail(String email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
    }

    @And("I typed password {string}")
    public void iTypedPassword(String pass) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(pass);
    }

    @Then("Text {string} appears")
    public void textAppears(String expectedText) throws InterruptedException {
        Thread.sleep(2000);
        String xpath = "//*[contains(text(),'"+expectedText+"')]";
        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
        assertThat(actualText.equalsIgnoreCase(expectedText)).isTrue();
    }

    @Then("I wait until present and click on {string} object")
    public void iClickOnObject(String xpath_to_click) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath_to_click)));
        getDriver().findElement(By.xpath(xpath_to_click)).click();
    }

    @Then("I wait while appeared and typed {string} into {string} object")
    public void iWaitWhileApperedAndTypedIntoObject(String what_to_type, String xpath_to_type) throws InterruptedException {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath_to_type)));
        getDriver().findElement(By.xpath(xpath_to_type)).sendKeys(what_to_type);
    }

    @Then("Sleep to human read")
    public void sleep() throws InterruptedException {
        Thread.sleep(5000);
    }


    @Then("Object {string} with placeholder {string} appears")
    public void objectWithPlaceholderAppears(String xpath_of_element, String expectedText) {
        assertThat(getDriver().findElement(By.xpath(xpath_of_element)).getAttribute("placeholder").equalsIgnoreCase(expectedText)).isTrue();
    }
}
