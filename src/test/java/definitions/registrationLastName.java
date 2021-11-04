package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;


public class registrationLastName {
    @And("I click on Last Name field")
    public void iClickOnLastNameField() {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).click();
    }
}
