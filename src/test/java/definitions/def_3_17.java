package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class def_3_17 {
    @When("I click Log out")
    public void iClickLogOut() throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(),'Log Out')]")).click();
    }
    getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
        Thread.sleep(5000);
}

    @When("I click on My Assignments")

    @And("I confirm Log Out")
    public void iConfirmLogOut() throws Throwable {
    public void iClickOnMyAssignments() throws Throwable {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Assignments')]")).click();
        Thread.sleep(5000);
    }

    @And("I click on Go To Assessment")
    public void iClickOnGoToAssessment() throws Throwable {
        getDriver().findElement(By.xpath("//td[contains(text(),'Astro')]/..//td//a")).click();
        Thread.sleep(3000);
          }

    @And("I type text of answer {string}")
    public void iTypeTextOfAnswer(String text) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(),'Question 1 / 1')]/..//textarea")).sendKeys(text);
        Thread.sleep(3000);
    }

    @And("I click Submit My Answers")
    public void iClickSubmitMyAnswers() throws Throwable {
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper']")).click();
        Thread.sleep(5000);
    }

    @And("I click OK button")
    public void iClickOKButton() throws Throwable {
        getDriver().findElement(By.xpath("//span[contains(text(),'Ok')]")).click();
        Thread.sleep(3000);
    }

    @When("I click on Submissions")
    public void iClickOnSubmissions() throws Throwable {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Submissions')]")).click();
        Thread.sleep(3000);
    }


    @And("I click Grade button")
    public void iClickGradeButton() throws Throwable {
        getDriver().findElement(By.xpath("//h4[contains(text(),'Submissions')]/..//td[contains(text(),'Astro')]/..//button")).click();
        Thread.sleep(3000);
    }

    @When("I type {string} in Teacher Summary field")
    public void iTypeInTeacherSummaryField(String text) throws Throwable {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Teacher Summary']")).sendKeys(text);
        Thread.sleep(3000);
    }

    @And("I click Save button")
    public void iClickSaveButton() throws Throwable {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(3000);
    }

    @When("I click on My Grades button")
    public void iClickOnMyGrades() throws Throwable {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Grades')]")).click();
        Thread.sleep(3000);
    }

    @Then("Page My Grades with Status of Quizzes appears")
    public void pageMyGradesWithStatusOfQuizzesAppears() throws Throwable {
        getDriver().findElement(By.xpath("//h4[contains(text(),'My Grades')]/..//th[contains(text(),'Status')]")).isDisplayed();
        Thread.sleep(3000);
    }
}

