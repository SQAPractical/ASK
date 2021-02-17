package definitions;


import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class homePageLinks {



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
        getDriver().findElement(By.xpath("//h4[contains(text(),'My Grades')]")).click();

    }

    @And("I click on {string} link on home page")
    public void iClickOnLinkOnHomePage(String linkName) {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+linkName+"')]")).click();
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
        assertThat(getDriver().findElement(By.xpath("//*[@class='mat-tab-label-content'][contains(., 'Students')]")).isDisplayed()).isTrue();
    }

    @And("I click on sign in button")
    public void iClickOnSignInButton() {getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
    }



}
