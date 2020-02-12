package definitions;

        import cucumber.api.java.en.And;
        import cucumber.api.java.en.Given;
        import cucumber.api.java.en.Then;
        import org.openqa.selenium.By;

        import static org.assertj.core.api.Assertions.assertThat;
        import static support.TestContext.getDriver;

public class userFirstName {
    @Given("I open login page")
    public void iOpenLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @Given("I open registration page")
    public void iOpenRegistrationPage() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @And("I type First Name {string}")
    public void iTypeFirstName(String FName) {
        getDriver().findElement(By.xpath("//*[@placeholder='First Name']")).sendKeys(FName);
    }

    @And("I type Last name {string}")
    public void iTypeLastName(String LName) {
        getDriver().findElement(By.xpath("//*[@placeholder='Last Name']")).sendKeys(LName);
    }

    @And("I type email {string}")
    public void iTypeEmail(String Email) {
        getDriver().findElement(By.xpath("//*[@placeholder='Email']")).sendKeys(Email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String Gcode) {
        getDriver().findElement(By.xpath("//*[@placeholder='Group Code']")).sendKeys(Gcode);
    }

    @And("I type password {string}")
    public void iTypePassword(String Password1) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password']")).sendKeys(Password1);
    }

    @And("I confirm password {string}")
    public void iConfirmPassword(String Password2) {
        getDriver().findElement(By.xpath("//*[@placeholder='Confirm Password']")).sendKeys(Password2);
    }

    @And("I click Register me button")
    public void iClickRegisterMeButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
    }

    @And("I wait for {int} seconds")
    public void iWaitForSeconds(int waitDelay) throws Throwable {
        waitDelay = waitDelay * 1000;
        Thread.sleep(waitDelay);
    }

    @Then("{string} message appears")
    public void messageAppears(String message) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]")).isDisplayed()).isTrue();
    }


}
