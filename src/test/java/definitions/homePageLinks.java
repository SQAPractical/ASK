package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class homePageLinks {
    @And("I click Go To Submissions")
    public void iClickGoToSubmissions() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Submissions')]")).click();
        Thread.sleep(2000);
    }

    @Then("Submission page loaded")
    public void submissionPageLoaded() {
        WebElement textOnSubmissionPage = getDriver().findElement(By.xpath("//h4[contains(text(), 'Submissions')]"));
        assertThat(textOnSubmissionPage.isDisplayed()).isTrue();
    }

    @And("I click Go To Assignments")
    public void iClickGoToAssignments() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Assignments')]")).click();
        Thread.sleep(2000);
    }

    @Then("Assignments page loaded")
    public void assignmentsPageLoaded() {
        WebElement textOnSubmissionPage = getDriver().findElement(By.xpath("//h4[contains(text(), 'Assignments')]"));
        assertThat(textOnSubmissionPage.isDisplayed()).isTrue();
    }

    @And("I click Go To Users Management")
    public void iClickGoToUsersManagement() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Management')]")).click();
        Thread.sleep(2000);
    }

    @Then("User's Management page loaded")
    public void userSManagementPageLoaded() {
        WebElement textOnSubmissionPage = getDriver().findElement(By.xpath("//h4[contains(text(), 'Management')]"));
        assertThat(textOnSubmissionPage.isDisplayed()).isTrue();
    }

    @And("I click Go To My Assignments")
    public void iClickGoToMyAssignments() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'My Assignments')]")).click();
        Thread.sleep(2000);
    }

    @Then("My Assignments page loaded")
    public void myAssignmentsPageLoaded() {
        WebElement textOnSubmissionPage = getDriver().findElement(By.xpath("//h4[contains(text(), 'My Assignments')]"));
        assertThat(textOnSubmissionPage.isDisplayed()).isTrue();
    }

    @And("I click Go To My Grades")
    public void iClickGoToMyGrades() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'My Grades')]")).click();
        Thread.sleep(2000);
    }

    @Then("My Grades page loaded")
    public void myGradesPageLoaded() {
        WebElement textOnSubmissionPage = getDriver().findElement(By.xpath("//h4[contains(text(), 'My Grades')]"));
        assertThat(textOnSubmissionPage.isDisplayed()).isTrue();
    }
}
