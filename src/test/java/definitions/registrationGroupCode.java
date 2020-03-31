//package definitions;
//
//import cucumber.api.java.en.And;
//import cucumber.api.java.en.Given;
//import cucumber.api.java.en.Then;
//import cucumber.api.java.en.When;
//import org.openqa.selenium.By;
//
//import static org.assertj.core.api.Assertions.assertThat;
//import static support.TestContext.getDriver;
//
//public class registrationGroupCode {
//    @Given("I navigate to registration page")
//    public void iNavigateToRegistrationPage() {
//        getDriver().get("http://ask-stage.portnov.com/#/registration");
//    }
//
//    @When("I type first name {string}")
//    public void iTypeFirstName(String Fname) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='firstName']")).sendKeys(Fname);
//    }
//
//    @And("I type last name {string}")
//    public void iTypeLastName(String Lname) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='lastName']")).sendKeys(Lname);
//    }
//
//    @And("I type email {string}")
//    public void iTypeEmail(String email) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(email);
//    }
//
//    @And("I type group code {string}")
//    public void iTypeGroupCode(String Group) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='group']")).sendKeys(Group);
//    }
//
//    @And("I type password {string}")
//    public void iTypePassword(String password) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(password);
//    }
//
//    @And("I confirm password {string}")
//    public void iConfirmPassword(String confirmPass) {
//        getDriver().findElement(By.xpath("//*[@formcontrolname='confirmPassword']")).sendKeys(confirmPass);
//    }
//
//    @And("I click {string} button")
//    public void iClickButton(String buttonName) {
//        getDriver().findElement(By.xpath("//span[contains(text(),'"+buttonName+"')]")).click();
//    }
//
//    @Then("message {string} appears")
//    public void messageAppears(String message) throws InterruptedException {
//        Thread.sleep(2000);
//        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]")).isDisplayed()).isTrue();
//    }
//}
