package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.setMaxLengthForSingleLineDescription;
import static support.TestContext.getDriver;

public class login {
    @Given("I navigate to {string} page")
    public void iNavigateToPage(String page) {
        if(page.equalsIgnoreCase("login")) {
        getDriver().get("http://ask-stage.portnov.com/#/login");

    }
        else if (page.equalsIgnoreCase("registration"))
        {
            getDriver().get("http://ask-stage.portnov.com/#/registration");
        }
        else {
            System.out.println("Page is not supported");

        }}

    @And("I type email {string}")
    public void iTypeEmail(String email) {
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
    public void textAppears(String expectedText) {
//        String actualtext = getDriver().findElement(By.xpath("//*[contains(text(),'"+expectedText+"')]")).getText();
//        System.out.println(actualtext);
//        assertThat(actualtext.equalsIgnoreCase(expectedText)).isTrue();
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+expectedText+"')]")).isDisplayed()).isTrue();

    }
}
