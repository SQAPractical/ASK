package definitions;


import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;


public class ForgotPassword {
    @When("I click Forgot Password link")
    public void iClickForgotPasswordLink() throws InterruptedException {
        getDriver().findElement(By.xpath("//a[contains(text(),'I forgot my password')]")).click();
        Thread.sleep(2000);


    }

    @And("I type email address {string}")
    public void iTypeEmailAddress(String Email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(Email);
    }

    @And("I click Request Password Reset button")
    public void iClickRequestPasswordResetButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Request Password Reset')]")).click();
        Thread.sleep(2000);
    }

    @Then("message {string} appears")
    public void messageAppears(String message) {
       String Result = getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]")).getText();
       assertThat(Result.equalsIgnoreCase(message));


    }


    }

