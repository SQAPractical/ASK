package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class MultipleChoiceQuestion {
    @Given("I open url page")
    public void iOpenUrlPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }


    @Then("I type email on login page {string}")
    public void iTypeEmailOnLoginPage(String Email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(Email);
    }

    @Then("I type password on login page {string}")
    public void iTypePasswordOnLoginPage(String passw) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(passw);
    }


    @When("I click on button")
    public void iClickOnButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
    }


    @Then("I wait for element with xpath {string} to be Present")
    public void iWaitForElementWithXpathToBePresent(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
    }


    @Then("I click on element {string}")
    public void iClickOnElement(String xpath) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(xpath)).click();

    }


    @Then("I type {string} into element {string}")
    public void iTypeIntoElement(String textToPut, String xpath)  {
        getDriver().findElement(By.xpath(xpath)).sendKeys(textToPut);
    }

    @And("element with xpath {string} should be select")
    public void elementWithXpathShouldBeSelect(String xpath) {
        getDriver().findElement(By.xpath(xpath)).isSelected();
    }

    @Then("element with xpath {string} should have attribute {string} as {string}")
    public void elementWithXpathShouldHaveAttributeAs(String xpath, String attribute, String attributeValue) {
        assertThat(getDriver().findElement(By.xpath(xpath)).getAttribute(attribute)).isEqualTo(attributeValue);
    }

    @Then("element with xpath {string} should contain text {string}")
    public void elementWithXpathShouldContainText(String xpath, String text) {
        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
        assertThat(actualText).contains(text);
    }


    @And("element with xpath \\{string} should be selected")
    public void elementWithXpathStringShouldBeSelected() {
    }

    @Then("element with xpath {string} should contain attribute {string} as {string}")
    public void elementWithXpathShouldContainAttributeAs(String xpath, String attribute, String attributeValue) {
        assertThat(getDriver().findElement(By.xpath(xpath)).getAttribute(attribute)).isEqualTo(attributeValue);
    }

}
