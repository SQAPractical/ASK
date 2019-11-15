package definitions;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class GroupCode {
    @Then("I verify that \"([^\"]*)\" message appears")
    public void iVerifyThatMessageAppears(String message) {
        assertThat(getDriver().findElement(By.xpath("//h4[contains(text(),'"+message+"')]")).isDisplayed()).isTrue();
    }

    @Then("I verify that \"([^\"]*)\" page shown")
    public void iVerifyThatPageShown(String message) {
        assertThat(getDriver().findElement(By.xpath("//h4[contains(text(),'"+message+"')]")).isDisplayed()).isTrue();
    }

    @When("I wait for {int} sec")
    public void iWaitForSec(int arg0) throws Exception {
        Thread.sleep(((long)arg0)*1000);
    }
}
