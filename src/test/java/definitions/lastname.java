package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class lastname {
    @Given("I navigate to {string} page")
    public void iNavigateToPage(String page) {
        if (page.equalsIgnoreCase("registration")) {
            getDriver().get("http://ask-stage.portnov.com/#/registration");
        }
        else if(page.equalsIgnoreCase("login")) {
            getDriver().get("http://ask-stage.portnov.com/#/login");
        }
        else {
            System.out.println("Page is not supported");
        }
    }

    @And("I type First Name {string}")
    public void iTypeFirstName(String firstname){
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(firstname);
    }

    @And("I type Last Name {string}")
    public void iTypeLastName(String lastname) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(lastname);
    }

    @And("I type Email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
    }

    @And("I type Group Code {string}")
    public void iTypeGroupCode(String grcode) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(grcode);
    }

    @And("I type Password {string}")
    public void iTypePassword(String pass) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(pass);
    }

    @And("I type Confirm Password {string}")
    public void iTypeConfirmPassword(String confpass) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(confpass);
    }

    @And("I click Register Me button")
    public void iClickRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
        Thread.sleep(2000);
    }

    @Then("text {string} appears")
    public void textAppears(String expectedText) {
//        String actualText = getDriver().findElement(By.xpath("//*[contains(text(), '"+expectedText+"']")).getText();
//        System.out.println(actualText);
//        assertThat(actualText.equalsIgnoreCase(expectedText)).isTrue();
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+expectedText+"')]")).isDisplayed()).isTrue();
    }
}

