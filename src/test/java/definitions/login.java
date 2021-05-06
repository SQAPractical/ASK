package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static java.lang.Thread.sleep;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class login {
    @When("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I click on Sign In button")
    public void iClickOnSignInButton() {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }

    @Then("Password displays in bullets, copy and cut disabled")
    public void passwordDisplaysInBulletsCopyAndCutDisabled() {
        String attribute = "type";
        String attributeValue = "password";

        WebElement passwordField = getDriver().findElement(By.xpath("//input[@formcontrolname='password']"));
        String actualAttributeValue = passwordField.getAttribute(attribute);

        assertThat(actualAttributeValue).isEqualTo(attributeValue);
    }

    @And("I click on User's Management button")
    public void iClickOnUserSManagementButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[normalize-space()=\"User's Management\"]")).click();
        sleep(7000);
    }

    @And("click on Options button")
    public void clickOnOptionsButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-accent']")).click();
        sleep(7000);
    }

    @And("click on Change User's Roll")
    public void clickOnChangeUserSRoll() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[2]")).click();
        sleep(7000);
    }

    @And("click on Change Role button")
    public void clickOnChangeRoleButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[normalize-space()='Change Role']")).click();
        sleep(7000);
    }

    @And("click on Delete User button")
    public void clickOnDeleteUserButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[3]")).click();
        sleep(7000);
    }

    @Then("account Elis Fox can't be found in the Teachers list")
    public void accountElisFoxCanTBeFoundInTheTeachersList() throws InterruptedException {
            Thread.sleep(2000);
            String Msg = "Elis Fox";
            String xPath = "//*[contains(text(),'"+Msg+"')]";
            assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isFalse();
    }

    @And("click on Teachers button")
    public void clickOnTeachersButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
        sleep(7000);
    }

    @And("I click on Elis Fox")
    public void iClickOnElisFox() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[normalize-space()='Elis Fox']")).click();
        sleep(7000);
    }

    @And("click on Delete button")
    public void clickOnDeleteButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-warn']")).click();
        sleep(7000);
    }

    @Then("I'm NOT navigated to the {string}")
    public void iMNOTNavigatedToThe(String arg0) throws InterruptedException {
        Thread.sleep(2000);
        String Msg = "Elis Fox";
        String xPath = "//*[contains(text(),'"+Msg+"')]";
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isFalse();
    }
}

