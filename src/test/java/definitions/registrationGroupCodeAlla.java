package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationGroupCodeAlla {
    @When("I navigate to registration option")
    public void iNavigateToRegistrationOption() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }


    @And("I type first n {string}")
    public void iTypeFirstN(String FName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(FName);
    }

    @And("I type last na {string}")
    public void iTypeLastNa(String LName) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(LName);
    }

    @And("I type emai {string}")
    public void iTypeEmai(String Email) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(Email);
    }

    @And("I type group c {string}")
    public void iTypeGroupC(String Group) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(Group);
    }

    @And("I type pass {string}")
    public void iTypePass(String Pass) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(Pass);
    }

    @And("I type confirm pass {string}")
    public void iTypeConfirmPass(String ConfirmPass) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='confirmPassword']")).sendKeys(ConfirmPass);
    }

    @And("I click Register Me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
    }

    @Then("Message {string} displays")
    public void messageDisplays(String ExpectedMessage) throws InterruptedException {
        Thread.sleep(2000);
        String xPath = "//*[contains(text(),'"+ExpectedMessage+"')]";
        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPath));
        assertThat(elementWithMessage.isDisplayed()).isTrue();
    }
}


