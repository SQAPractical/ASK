package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class homePageLink {
//    @When("I navigate to login page")
//    public void iNavigateToLoginPage() {
//        getDriver().get("http://ask-stage.portnov.com/#/login");
//
//    }


/*    @Then("{string} appears")
//    public void appears(String myAssignments) {
//        getDriver().findElement(By.xpath("//h4[contains(text(), '"+myAssignments+"')]")).click();
//    }
 */

    @And("I click {string}  item")
    public void iClickItem(String userSmanagment)
            { getDriver().findElement(By.xpath("//h4[contains(text(), '"+userSmanagment+"')]")).click();

    }

    @And("I click {string} on home page")
    public void iClickOnHomePage(String buttonName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+buttonName+"')]")).click();
        Thread.sleep(2000);
    }

    @Then("url contains {string}")
    public void urlContains(String urlText) {
        String currentUrl= getDriver().getCurrentUrl();

        assertThat(currentUrl.contains(urlText)).isTrue();

    }
}

