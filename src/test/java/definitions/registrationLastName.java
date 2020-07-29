package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationLastName {
    @Then("Text {string} should appear")
    public void textShouldAppear(String text) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
    }


    @Then("Data too long error message should appear")
    public void dataTooLongErrorMessageShouldAppear() {
        assertThat(getDriver().findElement(By.xpath("//div[@class='cdk-visually-hidden']")).isDisplayed()).isTrue();
    }
}
