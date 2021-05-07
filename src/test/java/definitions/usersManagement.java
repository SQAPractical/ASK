package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static java.lang.Thread.sleep;
import static support.TestContext.getDriver;

public class usersManagement {
    @When("I navigate to sign-in page")
    public void iNavigateToSignInPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("And I type Password {string}")
    public void andITypePassword(String Password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(Password);
    }

    @And("I click on User's Management")
    public void iClickOnUserSManagement() throws InterruptedException {

        sleep(3000);
        getDriver().findElement(By.xpath("//h5[contains(text(),'Management')]")).click();

    }


    @And("I click on Students")
    public void iClickOnStudents() {

        getDriver().findElement(By.xpath("//div[contains(text(),'Students')]"));
    }

    @And("I choose {string}")
    public void iChoose(String AlexTeacher)  {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Alex Teacher')]/.. ")).click();


    }


    @And("I click on Options button")
    public void iClickOnOptionsButton() {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-accent']")).click();

    }

    @And("I select Change User's Name")
    public void iSelectChangeUserSName()  {
        getDriver().findElement(By.xpath("//button[@role='menuitem'][1]")).click();

    }

    @And("I type New User Name {string}")
    public void iTypeNewUserName(String NName) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(NName);
    }


    @And("I click on Change button")
    public void iClickOnChangeButton() {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).click();
    }


}



