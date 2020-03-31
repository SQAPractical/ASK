package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class AssignmentsGradedby {
    @Given("I open ask-stage.portnov login page")
    public void iOpenAskStagePortnovLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");

    }

    @And("I type an email {string}")
    public void iTypeAnEmail(String email) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(email);
    }

    @And("I type the password {string}")
    public void iTypeThePassword(String password) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(password);


    }

//    @Then("I should see page title as {string}")
//    public void iShouldSeePageTitleAs(String title) {
//        assertThat(getDriver().getTitle()).isEqualTo(title);
//
//    }

    @And("I click on the {string} button")
    public void iClickOnTheButton(String button) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(button)).click();
    }

    @And("I wait for {int} seconds")
    public void iWaitForSeconds(int seconds) throws InterruptedException {
        Thread.sleep(seconds * 1000);
    }

    @And("I type text {string} into xPath {string}")
    public void iTypeTextIntoXPath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @Then("the element {string} has text {string}")
    public void theElementHasText(String xpath, String text) {
        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
        assertThat(actualText).contains(text);
    }
}


