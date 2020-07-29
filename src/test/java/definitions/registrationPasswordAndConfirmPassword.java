package definitions;


import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationPasswordAndConfirmPassword {

    @And("Text {string} should appear near field")
    public void textShouldAppearNearField(String text) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]/../..//*[@id='mat-error-11']")).isDisplayed()).isTrue();
    }

}

