package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class homePageLinks {
    @And("I click Go To Submissions")
    public void iClickGoToSubmissions() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Submissions')]")).click();
        Thread.sleep(2000);
    }

    @Then("Submission page loaded")
    public void submissionPageLoaded() {
        getDriver().get("http://ask-stage.portnov.com/#/submissions/0");
    }

    @And("I click Go To Assignments")
    public void iClickGoToAssignments() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Assignments')]")).click();
        Thread.sleep(2000);
    }

    @Then("Assignments page loaded")
    public void assignmentsPageLoaded() {
        getDriver().get("http://ask-stage.portnov.com/#/assignments");
    }

    @And("I click Go To Users Management")
    public void iClickGoToUsersManagement() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Management')]")).click();
        Thread.sleep(2000);
    }

    @Then("User's Management page loaded")
    public void userSManagementPageLoaded() {
        getDriver().get("http://ask-stage.portnov.com/#/users-management");
    }

    @And("I click Go To My Assignments")
    public void iClickGoToMyAssignments() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'My Assignments')]")).click();
        Thread.sleep(2000);
    }

    @Then("My Assignments page loaded")
    public void myAssignmentsPageLoaded() {
        getDriver().get("http://ask-stage.portnov.com/#/my-assignments");
    }

    @And("I click Go To My Grades")
    public void iClickGoToMyGrades() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'My Grades')]")).click();
        Thread.sleep(2000);
    }

    @Then("My Grades page loaded")
    public void myGradesPageLoaded() {
        getDriver().get("http://ask-stage.portnov.com/#/my-grades");
    }
}
