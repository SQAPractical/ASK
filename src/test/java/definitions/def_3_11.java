package definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;

import static org.assertj.core.api.Assertions.assertThat;

import static support.TestContext.getDriver;


public class def_3_11 {
    @Then("^I select quiz exactly \"([^\"]*)\"$")
    public void iSelectQuizExactly(String Quiz) throws Throwable {
        Thread.sleep(5000);
        getDriver().findElement(By.xpath("//mat-select[@aria-label='Select Quiz To Assign']")).click();
        getDriver().findElement(By.xpath("//*[normalize-space()='" + Quiz + "']")).click();
        Thread.sleep(5000);
    }
}