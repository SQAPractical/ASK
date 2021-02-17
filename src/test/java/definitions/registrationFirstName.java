package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class registrationFirstName {
    private String myGrades;

    @Given("I navigate to registration page")
    public void iNavigateToRegistrationPage() {

        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @When("I type first name {string}")
    public void iTypeFirstName(String fName) {
        getDriver().findElement(By.xpath("//input[@placeholder='First Name']")).sendKeys(fName);
    }

    @And("I type last name {string}")
    public void iTypeLastName(String lName) {
        getDriver().findElement(By.xpath("//input[@placeholder='Last Name']")).sendKeys(lName);
    }

    @And("I type email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String groupCode) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(groupCode);
    }

    @And("I type password {string}")
    public void iTypePassword(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(password);
    }

    @And("I confirm password {string}")
    public void iConfirmPassword(String confirmPassword) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']")).sendKeys(confirmPassword);
    }

    @And("I click Register Me")
    public void iClickRegisterMe() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
        Thread.sleep(2000);
    }

    @Then("Message {string} Appears")
    public void messageAppears(String message) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'" + message + "')]")).isDisplayed()).isTrue();
    }


    @Then("My Assignments page will display")
    public void pageDisplay(){
        getDriver().findElement(By.xpath("//ac-student-assignments-page"));

    }
    @Then("I should see {string}")
    public void iShouldSee(String GoToAssessment) {
        
    }

    @And("I click on Go To Assessment ")
    public void iClickOnLinkOnPage(String GoToAssessment) {
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper'][@xpath=1]")).click();
    }

    @And("I click on My Grades ")
    public void iClickOnMyGrades(String MyGrades) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Grades')]")).click();
    }



    @Then("I should see page My Grades")
    public void iShouldSeePage(String MyGrades) {
        myGrades = MyGrades;
        getDriver().findElement(By.xpath("//h4[contains(text(),'My Grades')]")).click();

    }

    @And("I click on ")
    public void iClickOn(String arg0) {
    }


    @And("I click on home button")
    public void iClickOnHomeButton() {
        getDriver().findElement(By.xpath("//div[@class='mat-list-text']")).click();
    }

    @And("I click on Assignments")
    public void iClickOnAssignments() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Assignments')]")).click();

    }
    @Then("Home page will display")
    public void homePageDisplay() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Home')]"));
    }
    @Then("List of Assignments should display")
     public void listOfAssignments(){
        getDriver().findElement(By.xpath("//h4[contains(text(),'List of Assignments')]/../.."));
    }
     @Then("Submissions page will display")
    public void submissionsPageDisplay() {
         getDriver().findElement(By.xpath("//h4[contains(text(),'Submissions')]/.."));
     }
     @Then("Users Management page displays")
         public void usersManagementPageDisplays(){

         assertThat(getDriver().findElement(By.xpath("//mat-card[@class='page mat-card']")).isDisplayed()).isTrue();


     }


}



