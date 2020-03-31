//package definitions;
//
//import cucumber.api.java.en.And;
//import cucumber.api.java.en.Given;
//import cucumber.api.java.en.Then;
//import org.openqa.selenium.By;
//
//import static org.assertj.core.api.Assertions.assertThat;
//import static support.TestContext.getDriver;
//
//public class registrationFirstName {
//    @Given("I open url")
//    public void iOpenUrl() {
//        getDriver().get("http://ask-stage.portnov.com/#/registration");
//
//    }
//
//    @Then("I type First Name {string} in registration form")
//    public void iTypeFirstNameInRegistrationForm(String FirstName) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='firstName']")).sendKeys(FirstName);
//    }
//
//    @And("I type Last Name {string} in registration form")
//    public void iTypeLastNameInRegistrationForm(String LastName) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='lastName']")).sendKeys(LastName);
//    }
//
//    @And("I type Email {string} in registration form")
//    public void iTypeEmailInRegistrationForm(String Email) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(Email);
//    }
//
//    @And("I type Group Code {string} in registration form")
//    public void iTypeGroupCodeInRegistrationForm(String Group) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='group']")).sendKeys(Group);
//    }
//
//    @And("I type Password {string} in registration form")
//    public void iTypePasswordInRegistrationForm(String Password) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(Password);
//    }
//
//    @And("I type Confirm password {string} in registration form")
//    public void iTypeConfirmPasswordInRegistrationForm(String ConfirmPassword) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='confirmPassword']")).sendKeys(ConfirmPassword);
//    }
//
//
//    @Then("I click on button {string} in registration form")
//    public void iClickOnButtonInRegistrationForm(String arg0) {
//        getDriver().findElement(By.xpath("//*[contains(text(),'Register Me')]")).click();
//    }
//
//    @Then("I should see message {string}")
//    public void iShouldSeeMessage(String message) throws InterruptedException {
//        Thread.sleep(3000);
//        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]")).isDisplayed()).isTrue();
//    }
//
//}
//
