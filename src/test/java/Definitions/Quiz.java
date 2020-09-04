package Definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class Quiz {
    @Then("I click {string} button")
    public void iClickButton(String arg0) {
        getDriver().findElement(By.xpath("//a[4]//div[1]//div[2]")).click();
    }
}
