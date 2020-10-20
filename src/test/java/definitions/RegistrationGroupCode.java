package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class RegistrationGroupCode {


    @And("I click Register Me button")
    public void iClickRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
        Thread.sleep(2000);
    }

    @Then("text {string} appears")
    public void textAppears(String text) {
        WebElement actualText = getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]"));
        assertThat(actualText.isDisplayed()).isTrue();
    }

    @When("^I click on element with xpath \"([^\"]*)\"$")
    public void clickOnElementWithXpath(String xpath) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("element with xpath {string} should be present")
    public void elementWithXpathShouldBePresent(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
    }

}
