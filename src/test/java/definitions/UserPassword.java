package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.*;
import static support.TestContext.getDriver;

public class UserPassword {
    @Then("^element with xpath \"([^\"]*)\" should be displayed$")
    public void elementWithXpathShouldBeDisplayed(String xpath) throws InterruptedException {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
        Thread.sleep(2000);

    }

}
