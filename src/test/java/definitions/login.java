package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class login {
    @Given("I open {string} page")
    public void iOpenPage(String pageName) {
        if (pageName.equalsIgnoreCase("login")) {
            getDriver().get("http://ask-stage.portnov.com/#/login");
        } else if (pageName.equalsIgnoreCase("registration")) {
            getDriver().get("http://ask-stage.portnov.com/#/registration");
        }
    }

    @Then("I type email {string}")
    public void iTypeInInEmail(String email) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
    }

    @Then("I type password {string}")
    public void iTypeInInPassword(String password) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(password);
    }

    @And("I click Sign in button")
    public void iClickSignInButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
        Thread.sleep(2000);
    }

    @Then("Text {string} appears")
    public void textAppears(String text) {
        WebElement expectedText = getDriver().findElement(By.xpath("//*[contains(text(),'" + text + "')]"));
        assertThat(expectedText.isDisplayed()).isTrue();
    }

    @Then("Copy and cut options disable, password display in bullets")
    public void copyAndCutOptionsDisablePasswordDisplayInBullets() {
        WebElement passwordField = getDriver().findElement(By.xpath("//input[@placeholder='Password *']"));
        String attributeValue = "password";
        String attribute = "type";
        assertThat(passwordField.getAttribute(attribute)).isEqualTo(attributeValue);
    }


    @And("I type {string} in email")
    public void iTypeInEmail(String space) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(space);
    }

    @Then("I type {string} with a white space in password")
    public void iTypeWithAWhiteSpaceInPassword(String space) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(space);
    }

    @Then("I click on {string}")
    public void iClickOn(String arg0) {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
    }
}
/*
    //password

    @Then("I Click {string} and I type in {string} in password and {string} in new password and {string} in confirm password")
    public void iClickAndITypeInInPasswordAndInNewPasswordAndInConfirmPassword(String arg0, String op, String np, String npc) {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change Your Password')]")).click();
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(op);
        getDriver().findElement(By.xpath("//input[@placeholder='New Password']")).sendKeys(np);
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm New Password']")).sendKeys(npc);
        getDriver().findElement(By.xpath("//div[@class='mat-dialog-actions']//button[@class='mat-raised-button mat-primary']")).click();

    }

// <<<<<<< Anna
//     @Then("message {string} appears")
//     public void messageAppears(String ts) {
//         WebElement expectedText = getDriver().findElement(By.xpath("//mat-error[@id='mat-error-3',' '"+ ts + "']"));
//         assertThat(expectedText.isDisplayed()).isTrue();
//     }

//     @When("I type email {string}")
//     public void iTypeEmail(String email) {
//         getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
//     }
//     @And("I type password {string}")
//     public void iTypePassword(String pass) {
//         getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(pass);
//     }
//     @And("I click Sign in button")
//     public void iClickSignInButton() throws InterruptedException {
//         getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
//         Thread.sleep(2000);
//     }
//     @Then("Text {string} appears")
//     public void textAppears(String text) {
//         assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
//     }

//     @Then("error message should appear")
//     public void errorMessageShouldAppear() {
//         assertThat(getDriver().findElement(By.xpath("//*[contains(text(), 'valid email')]")).isDisplayed()).isTrue();

//     }

//     @Then("password error message should appear")
//     public void passwordErrorMessageShouldAppear() {
//         assertThat(getDriver().findElement(By.xpath("//*[contains(text(), 'Whitespaces')]")).isDisplayed()).isTrue();
//     }
// }

    @And("I wait {int} seconds")
    public void iWaitSeconds(int num) throws InterruptedException {
        Thread.sleep(num*1000);
    }
}
