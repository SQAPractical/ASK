package definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import static org.assertj.core.api.Assertions.assertThat;

import static support.TestContext.getDriver;

public class userFirstName {
    @When("^I type First Name \"([^\"]*)\"$")
    public void iTypeFirstName(String Fname) throws Throwable {
        getDriver().findElement(By.xpath("//*[@placeholder='First Name']")).sendKeys(Fname);
    }

    @And("^I type Last Name \"([^\"]*)\"$")
    public void iTypeLastName(String Lname) throws Throwable {
        getDriver().findElement(By.xpath("//*[@placeholder='Last Name']")).sendKeys(Lname);

    }

    @And("^I type Group Code \"([^\"]*)\"$")
    public void iTypeGroupCode(String Group) throws Throwable {
        getDriver().findElement(By.xpath("//*[@placeholder='Group Code']")).sendKeys(Group);

    }

    @And("^I type Confirm password \"([^\"]*)\"$")
    public void iTypeConfirmPassword(String ConfirmPass) throws Throwable {
        getDriver().findElement(By.xpath("//*[@placeholder='Confirm Password']")).sendKeys(ConfirmPass);

    }

    @And("^I click Register me button$")
    public void iClickRegisterMeButton() throws Throwable {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
        Thread.sleep(2000);
    }

    @Then("^message \"([^\"]*)\"$")
    public void message(String text) throws Throwable {
        String result = getDriver().findElement(By.xpath("//*[contains(text(), '"+text+"')]")).getText();
        assertThat(result.contains(text)).isTrue();


//        assertThat(getDriver().findElement(By.xpath("//*[contains(text(), '"+text+"')]")).isDisplayed()).isTrue();
    }
}
