package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class MyStepdefsYaro {
    @Given("I navigate to the site")
    public void iNavigateToTheSite() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }



    @And("Enter email {string}")
    public void enterEmail(String email) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(email);

    }

    @And("I Enter password {string}")
    public void iEnterPassword(String password) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(password);
    }

    @And("I click on the {string} button")
    public void iClickOnTheButton(String button) {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).click();
    }

    @And("I should see element with xPath {string}")
    public void iShouldSeeElementWithXPath(String student) {
        getDriver().findElement(By.xpath("//p[contains(text(),'STUDENT')]")).sendKeys(student);
    }
}
