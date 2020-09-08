package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationLastName {

    @And("I click on element last name")
    public void iClickOnElementLastName() {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).click();
    }

    @Then("I click on email text field")
    public void iClickOnEmailTextField() {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).click();
    }


    @Then("Text {string} is displayed")
    public void textIsDisplayed(String whiteSpace) {
        assertThat(getDriver().findElement(By.xpath("//*[text() = '"+whiteSpace+"']/../../../../..//*[text() = '"+whiteSpace+"']")).isDisplayed()).isTrue();
    }
}