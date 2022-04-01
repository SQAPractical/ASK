package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static support.TestContext.getDriver;

public class usersManagmTName {
    @When("I navigate to the login page")
    public void iNavigateToTheLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I click on {string} on the left menu")
    public void iClickOnOnTheLeftMenu(String menuItem) throws InterruptedException {
//        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[@href='/#/users-management']")).click();
    }

    @And("I click on {string} under User's Management")
    public void iClickOnUnderUserSManagement(String ItemTeacher) {
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
    }

    @And("I click on any of the teacher in the list")
    public void iClickOnAnyOfTheTeacherInTheList() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[text()[contains(.,'Anna Third')]]")).click();
    }

    //@And("I click on the options button")
    //public void iClickOnTheOptionsButton() throws InterruptedException {
    //    Thread.sleep(1000);
    //    getDriver().findElement(By.xpath("//button[@color='accent']")).click();
    // }

  @And("I click {string} button for teacher")
   public void iClickButtonForTeacher(String Options) throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[contains(., 'Options')]")).click();
    }

    @And("I click {string}")
    public void iClick(String ChangeName) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//button[contains(., 'Name')]")).click();
    }

    @Then("window {string} should appear")
    public void windowShouldAppear(String ChangeWindow) {
        getDriver().findElement(By.xpath("//*[@class='mat-dialog-content']")).click();
    }

    @And("click on New User's Name field and leave it blank")
    public void clickOnNewUserSNameFieldAndLeaveItBlank() {

    }

    @And("click on {string} field")
    public void clickOnField(String NewNameField) {
        getDriver().findElement(By.xpath("//*[@class='mat-dialog-content']")).click();
    }

    @And("I clear {string} field")
    public void iClearField(String PreviousName) throws InterruptedException {
        //getDriver().findElement(By.xpath("//input[contains(@placeholder,\""+PreviousName+"\")]")).clear();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//input[contains(@placeholder,\""+PreviousName+"\")]")).sendKeys(Keys.chord(Keys.COMMAND, "a"));
        getDriver().findElement(By.xpath("//input[contains(@placeholder,\""+PreviousName+"\")]")).sendKeys(Keys.DELETE);
        getDriver().findElement(By.xpath("//input[contains(@placeholder,\""+PreviousName+"\")]")).sendKeys(Keys.BACK_SPACE);
        Thread.sleep(2000);
    }

    @Then("{string} button is disabled")
    public void buttonIsDisabled(String ChangeButton) {
        getDriver().findElement(By.xpath("//button[@aria-label='Close dialog' and @color='primary']")).click();
    }

    @And("I enter name {string} to {string} field")
    public void iEnterNameToField(String NewName, String FieldName) throws InterruptedException {
        //getDriver().findElement(By.xpath("//input[contains(@placeholder,\""+PreviousName+"\")]")).clear();
        //Thread.sleep(1000);
        getDriver().findElement(By.xpath("//input[contains(@placeholder,\""+FieldName+"\")]")).sendKeys(Keys.chord(NewName));
        //getDriver().findElement(By.xpath("//input[contains(@placeholder,\""+PreviousName+"\")]")).sendKeys(Keys.DELETE);
        //getDriver().findElement(By.xpath("//input[contains(@placeholder,\""+PreviousName+"\")]")).sendKeys(Keys.BACK_SPACE);
        Thread.sleep(3000);
    }


    @And("I click on {string} button")
    public void iClickOnButton(String ChangeButton) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change')]")).click();
        Thread.sleep(2000);
    }

    @Then("new Name appears")
    public void newNameAppears() {
    }
}
