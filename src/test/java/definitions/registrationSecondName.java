package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class registrationSecondName {
    @And("I click on email filed")
    public void iClickOnEmailFiled() {

        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).click();
    }
}
