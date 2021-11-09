package definitions;

import cucumber.api.java.en.And;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class usersManagmTRole {
    @When("i navigate to login page")
    public void iNavigateToLoginPage() throws InterruptedException {
        getDriver().get("http://ask-stage.portnov.com/#/login");
        Thread.sleep(2000);
    }


    @And("i type my email {string}")
    public void iTypeMyEmail(String email) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@formcontrolname=\"email\"]")).sendKeys(email);
        Thread.sleep(2000);
    }

    @And("i type my password {string}")
    public void iTypeMyPassword(String password) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
        Thread.sleep(2000);
    }


    @And("i click Sign in button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
        Thread.sleep(2000);
    }

    @And("i click on User's Management")
    public void iClickOnUserSManagement() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),\"User's Management\")]")).click();
        Thread.sleep(2000);
    }

    @And("i click on Teachers tab")
    public void iClickOnTeachersTab() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
        Thread.sleep(2000);
    }


    @And("i click Options")
    public void iClickOptions() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper']")).click();
        Thread.sleep(2000);
    }

    @And("i click Change User's role")
    public void iClickChangeUserSRole() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[2]")).click();
        Thread.sleep(2000);
    }


    @And("i click Change Role")
    public void iClickChangeRole() throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[normalize-space()='Change Role']")).click();
    }



    @Then("Sign out sign appears")
    public void signOutSignAppears() {
        WebElement element = getDriver().findElement(By.xpath("//*[normalize-space()='Log Out']"));
        assertThat(element.isDisplayed()).isTrue();
    }

    @Then("user role is {string}")
    public void userRoleIs(String userRole) {
        String xpath="//td[normalize-space()='"+userRole+"']";
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }


    @And("i click {string}")
    public void iClick(String userName) {
        getDriver().findElement(By.xpath("//h4[normalize-space()='"+userName+"']/..")).click();
    }
}
