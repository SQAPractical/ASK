package definitions;

import cucumber.api.java.en.Given;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class AssignmentsGradedbyAuto {
    @Given("I log-in into my account as a Teacher")
    public void iLogInIntoMyAccountAsATeacher() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys("casio7@meta.ua");
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys("12345");
    }
}
