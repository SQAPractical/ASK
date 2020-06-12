package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class login {

    @And("I type email {string}")
    public void iTypeEmail(String email) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(email);
    }

    @And("I type password {string}")
    public void iTypePassword(String pass) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(pass);
    }

    @And("I click Sign In button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@type='submit']")).click();
        Thread.sleep(2000);
    }

    @Then("text {string} appears")
    public void textAppears(String expectedText) throws InterruptedException {
//        String actualtext = getDriver().findElement(By.xpath("//*[contains(text(),'"+expectedText+"')]")).getText();
//        System.out.println(actualtext);
//        assertThat(actualtext.equalsIgnoreCase(expectedText)).isTrue();
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'" + expectedText + "')]")).isDisplayed()).isTrue();

        Thread.sleep(2000);
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+expectedText+"')]")).isDisplayed()).isTrue();
    }

    @And("I leave {string} blank")
    public void iLeaveBlank(String field) {
        if (field.equalsIgnoreCase("email")) {
            getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).click();
        } else if (field.equalsIgnoreCase("password")) {
            getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).click();
        } else
            System.out.println("field name is not supported");

    }

    @Then("password displays in bullets")
    public void passwordDisplaysInBullets() {
        WebElement pass = getDriver().findElement(By.xpath("//*[@formcontrolname='password']"));
//        to verify that password should have TYPE attribute as PASSWORD
        assertThat(pass.getAttribute("type")).isEqualTo("password");
    }

    @Then("cut menu item on password field is disabled")
    public void cutMenuItemOnPasswordFieldIsDisabled() {
        WebElement pass = getDriver().findElement(By.xpath("//*[@formcontrolname='password']"));
        assertThat(pass.getAttribute("type")).isEqualTo("password");

    }

    @Then("I logout with confirm message")
    public void iLogoutWithConfirmMessage() throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Log Out')]")).click();
        getDriver().findElement(By.xpath("//span[text()='Log Out']")).click();
        Thread.sleep(3000);
    }

    @And("I wait for {int} sec")
    public void iWaitForSec(int milliSec) throws InterruptedException {
        Thread.sleep(milliSec * 1000);
    }
    @Then("I click on {string} in navigation menu")
    public void iClickOnInNavigationMenuQuizz(String quizzMenu) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
    }

    @And("I click on Create New Quizz button")
    public void iClickOnButton() {
        WebElement newQuizz = getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]"));
        newQuizz.click();
    }

    @Then("I type Title in the text field")
    public void iTypeTitleInTheTextField() {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys("Textual quizz 10");
    }
    @Then("Error message {string} appears under email field")
    public void errorMessageAppearsUnderEmailField(String text) {
        String emailError = "//input[@placeholder='Email *']/../../..//*[contains(text(),'" + text + "')]";
        assertThat(getDriver().findElement(By.xpath(emailError)).isDisplayed()).isTrue();
    }

    @Then("Error message {string} appears under password field")
    public void errorMessageAppearsUnderPasswordField(String text) {
        String passError = "//input[@placeholder='Password *']/../../..//*[contains(text(),'" + text + "')]";
        assertThat(getDriver().findElement(By.xpath(passError)).isDisplayed()).isTrue();
    }

    @When("I type {string} into element with xpath {string}")
    public void iTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @And("I click on element with xpath {string}")
    public void iClickOnElementWithXpath(String xpath) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("element with xpath {string} should be displayed")
    public void elementWithXpathShouldBeDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }

    @Then("element with xpath {string} should contain text {string}")
    public void elementWithXpathShouldContainText(String xpath, String text) {
        String actualText = getDriver().findElement(By.xpath(xpath)).getText();
        assertThat(actualText).contains(text);
    }
}
