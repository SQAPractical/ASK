// Created by Elena

package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.testng.IExpectedExceptionsHolder;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class homePageLinks {
    @Given("I open {string} the page")
    public void iOpenPage(String url) {
        if (url.equalsIgnoreCase("login")) {
            getDriver().get("http://ask-stage.portnov.com/#/login");
        } else if (url.equalsIgnoreCase("registration")) {
            getDriver().get("http://ask-stage.portnov.com/#/registration");
        }
    }

    @Then("I click Go to My Grades button")
    public void iClickToMyGradesButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Go To My Grades')]")).click();
        Thread.sleep(4000);
    }

    @Then("I click Go To Submissions button")
    public void iClickGoToSubmissionsButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Go To Submissions')]")).click();
        Thread.sleep(3000);
    }

    @Then("I click Go To Assignments button")
    public void iClickGoToAssignments() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Go To Assignments')]")).click();
        Thread.sleep(3000);
    }

    @Then("I click Go to Users Management button")
    public void iClickGoToUserSManagementButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Go To Users Management')]")).click();
        Thread.sleep(3000);
    }

}