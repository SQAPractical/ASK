package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationGroupCode {
    @When("I navigate to registration page")
    public void iNavigateToRegistrationPage() {

        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @And("I type first name {string}")
    public void iTypeFirstName(String firstName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(firstName);

    }

    @And("I type last name {string}")
    public void iTypeLastName(String lastName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(lastName);

    }

    @And("I type email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String groupCode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(groupCode);

    }

    @And("I type password {string}")
    public void iTypePassword(String password) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(password);
        Thread.sleep(2000);
    }

    @And("I click Register Me button")
    public void iClickRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
        Thread.sleep(2000);

    }

    @And("I type confirmPassword {string}")
    public void iTypeConfirmPassword(String confirmPassword) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(confirmPassword);
        Thread.sleep(2000);


    }

    @Then("message {string} appears")
    public void messageAppears(String textOfMessage) {
        String xPath = "//*[contains(text(),'"+textOfMessage+"')]";
        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPath));
        assertThat(elementWithMessage.isDisplayed()).isTrue();
        //        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+textOfMessage+"')]")).isDisplayed()).isTrue()
    }
}

