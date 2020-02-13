package definifions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class SingleChoiceQuiestionShowStopper {

    @Given("I open login page")
    public void iOpenLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I click Sign in button")
    public void iClickSignInButton() {
        getDriver().findElement(By.xpath("//*[@type='submit']")).click();
    }

    @And("I wait {int} sec")
    public void iWaitSec(int second) throws Throwable {
        Thread.sleep(second);
    }

    @And("I type email {string} to the element with xpath {string}")
    public void iTypeEmailToTheElementWithXpath(String e_mail, String x_path) {
        getDriver().findElement(By.xpath(x_path)).sendKeys(e_mail);
    }

    @And("I type password {string} to the element with xpath {string}")
    public void iTypePasswordToTheElementWithXpath(String passw, String x_path) {
        getDriver().findElement(By.xpath(x_path)).sendKeys(passw);
    }

    @And("I click to the element with xpath {string}")
    public void iClickToTheElementWithXpath(String x_path) throws Throwable {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(x_path)).click();
    }

    @Then("element with xpath {string} should be displayed")
    public void elementWithXpathShouldBeDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }

    @Then("^I wait for (\\d+) sec$")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @When("I type text {string} to the element with xpath {string}")
    public void iTypeTextToTheElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("^I click on element using JavaScript with xpath \"([^\"]*)\"$")
    public void iClickOnElementUsingJavaScriptWithXpath(String xpath) {
        WebElement element = getDriver().findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].click();", element);
    }

    @Then("element with xpath {string} should be presented")
    public void elementWithXpathShouldBePresented(String xpath) {
        assertThat(getDriver().findElements(By.xpath(xpath))).hasSize(1);
    }
}
