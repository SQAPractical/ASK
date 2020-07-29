//package definitions;//package definitions;//package definitions;


import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java8.En;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class RegistrationPasswordAndConfirmPassword implements En {
//    public RegistrationPasswordAndConfirmPassword() throws InterruptedException {
//        Then("^Text \"([^\"]*)\" message should appear$", (String arg0) -> {
//        });

    @And("I click Register Me button")
    public void iClickRegisterMeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
        Thread.sleep(4000);}


    @Then("Text {string} should appear")
    public void textShouldAppear(String text) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
    }

//    @Then("Text {string} should appear")
//    public void textShouldAppear(String text) {
//        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
//    }

    @And("Text {string} should appear near field")
    public void textShouldAppearNearField(String text) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]/../..//*[@id='mat-error-11']")).isDisplayed()).isTrue();
    }

//        And("^I type confirm password \"([^\"]*)\" on registration page$", (String arg0) -> {
//        });

//}
    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String confPass) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(confPass);
        Thread.sleep(112321000);
    }
}

