package definitions;

import cucumber.api.java.en.When;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationPassConfirmPass {
    @When("I open to login page")
    public void iOpenToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }
//    @And("I type First Name {string}")
//    public void iTypeFirstName(String FName) {
//        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(FName);
//    }
//    @And("I type Last Name {string}")
//    public void iTypeLastName(String LName) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='lastName']")).sendKeys(LName);
//    }
//    @And("I type Email {string}")
//    public void iTypeEmail(String Email) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(Email);
//    }
//    @And("I type Group Code {string}")
//    public void iTypeGroupCode(String Group) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='group']")).sendKeys(Group);
//    }
//    @And("I type Password {string}")
//    public void iTypePassword(String Pass) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(Pass);
//    }
//    @And("I confirm Password {string}")
//    public void iConfirmPassword(String ConfirmPass) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='confirmPassword']")).sendKeys(ConfirmPass);
//    }
//    @And("I click on Register Me button")
//    public void iClickOnRegisterMeButton() {
//        getDriver().findElement(By.xpath("//*[contains(text(), 'Register Me')]")).click();
//    }
//    @Then("Text {string} appears")
//    public void popAppears(String text)  throws InterruptedException{
//        Thread.sleep(3000);
//        String xPath = "//*[contains(text(),'"+text+"')]";
//        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
//    }
}