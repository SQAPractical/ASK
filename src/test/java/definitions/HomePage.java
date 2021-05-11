package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class HomePage {
    @And("I click on Assignments button")
    public void iClickOnAssignmentsButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Assignments')]")).click();
        Thread.sleep(2000);
    }
}
