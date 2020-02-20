package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class Login {
    @Then("{string} text appears")
    public void textAppears(String text) throws InterruptedException {
        Thread.sleep(2000);
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
    }

    @Then("password displayed in bullets")
    public void passwordDisplayedInBullets() {
        WebElement element = getDriver().findElement(By.xpath("//*[@placeholder='Password *']"));
        String attribute = "type";
        String attributeValue = "password";
        assertThat(element.getAttribute(attribute)).isEqualTo(attributeValue);
    }
}
