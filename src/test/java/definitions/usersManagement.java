package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static java.lang.Thread.sleep;
import static org.assertj.core.api.Assertions.assertThat;
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
    public void iChoose(String StudName) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(), '"+StudName+"')]/..")).click();


    }


    @And("I click on Options button")
    public void iClickOnOptionsButton() {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-accent']")).click();

    }

    @And("I select Change User's Name")
    public void iSelectChangeUserSName() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@role='menuitem'][1]")).click();
        Thread.sleep(2000);

    }

    @And("I type New User Name {string}")
    public void iTypeNewUserName(String NName) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(NName);
    }


    @And("I click on Change button")
    public void iClickOnChangeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(3000);
    }


    @And("I delete previous name")
    public void iDeletePreviousName() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(Keys.chord(Keys.COMMAND, "a"));
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(Keys.chord(Keys.DELETE));

        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(Keys.chord(Keys.CONTROL, "a"));
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(Keys.chord(Keys.DELETE));




        Thread.sleep(3000);
    }

    @Then("New student name is {string}")
    public void newStudentNameIs(String NewStudName) {
        String actualStudentName = getDriver().findElement(By.xpath("//*[@class='horizontal-group']")).getText();
        System.out.println(actualStudentName);
        assertThat(actualStudentName).contains(NewStudName);

    }
}



