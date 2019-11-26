package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class def_3_18 {
    @When("I click Log out")
    public void iClickLogOut() throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(),'Log Out')]")).click();
        Thread.sleep(1000);
    }

    @And("I confirm Log Out")
    public void iConfirmLogOut() throws Throwable {
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
        Thread.sleep(5000);
    }

    @When("I click on My Assignments")
    public void iClickOnMyAssignments() throws Throwable {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Assignments')]")).click();
        Thread.sleep(3000);
    }

    @When("I click on Go to Assessment button in Assignments")
    public void iClickOnGoToAssessmentButtonInAssignments() throws Throwable {
        getDriver().findElement(By.xpath("//td[contains(text(), '23 Quiz')]/..//button")).click();
        Thread.sleep(1000);
    }

    @And("type in answer {string} for question")
    public void typeInAnswerForQuestion(String text) throws Throwable {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Question 1 / 1')]/..//textarea")).sendKeys(text);
        Thread.sleep(1000);
    }

    @And("I click on Submit My Answers button")
    public void iClickOnSubmitMyAnswersButton() throws Throwable {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(2000);
    }

    @Then("I click Ok in the dialog box")
    public void iClickOkInTheDialogBox() throws Throwable {
        getDriver().findElement(By.xpath("//span[contains(text(),'Ok')]")).click();
        Thread.sleep(1000);
    }

    @And("I click on Submissions button")
    public void iClickOnSubmissionsButton() throws Throwable {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Submissions')]")).click();
        Thread.sleep(1000);
    }

    @And("I click on Grade button")
    public void iClickOnGradeButton() throws Throwable {
        getDriver().findElement(By.xpath("//h4[contains(text(),'Submissions')]/..//td[contains(text(), 'Prrk')]/..//button")).click();
        Thread.sleep(2000);
    }

    @And("I type text {string} in Teacher Summary field")
    public void iTypeTextInTeacherSummaryField(String text) throws Throwable {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Teacher Summary']")).sendKeys(text);
        Thread.sleep(2000);
    }

    @Then("I click Save button")
    public void iClickSaveButton() throws Throwable {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on My Grades button")
    public void iClickOnMyGradesButton() throws Throwable{
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Grades')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Details button with status {string}")
    public void iClickOnDetailsButton(String arg0) throws Throwable {
        getDriver().findElement(By.xpath("//h4[contains(text(),'My Grades')]/..//*[contains(text(),'"+arg0+"')]/../..//button")).click();
        Thread.sleep(2000);
    }
}



