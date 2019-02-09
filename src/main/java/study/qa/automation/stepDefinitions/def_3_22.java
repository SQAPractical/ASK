package study.qa.automation.stepDefinitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static study.qa.automation.utils.TestContext.getDriver;

public class def_3_22 {
    @When("^Push Go To Assessment button$")
    public void pushGoToAssessmentButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//tbody//tr[1]//button[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(3000);
    }

    @And("^Select second option as correct answer$")
    public void selectSecondOptionAsCorrectAnswer() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'it is value')]")).click();
        Thread.sleep(1000);
    }

    @When("^Push Ok button$")
    public void pushOkButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Ok')]")).click();
        Thread.sleep(1000);
    }

    @And("^Click My Grades on left navigational panel$")
    public void clickMyGradesOnLeftNavigationalPanel() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Grades')]")).click();
        Thread.sleep(1000);
    }

    @Then("^Verify that quiz \"([^\"]*)\" Status is \"([^\"]*)\"$")
    public void verifyThatQuizStatusIs(String arg0, String arg1) throws Throwable {
        WebElement quiz = getDriver().findElement(By.xpath("//*[contains(text(),'Yulia')]"));
        String textFromQuiz = quiz.getText();
        String name = getDriver().findElement(By.xpath("//*[contains(text(),'Yulia')]/../..//*[contains(text(), 'FAILED')]")).getText();
        System.out.println(" Verified that Quiz Status is " + name);
    }

    @And("^Click quiz \"([^\"]*)\" on List of Assignments window$")
    public void clickQuizOnListOfAssignmentsWindow(String arg0) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(),'Yulia')]")).click();
        Thread.sleep(2000);
    }

    @And("^Push Review button$")
    public void pushReviewButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Yulia')]/../../..//*[contains(text(),'Review')]")).click();
        Thread.sleep(2000);
    }

    @When("^Push Total points \"([^\"]*)\" button (\\d+) times$")
    public void pushTotalPointsButtonTimes(String arg0, int arg1) throws Throwable {
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper'][contains(text(),'+')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper'][contains(text(),'+')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper'][contains(text(),'+')]")).click();
        Thread.sleep(1000);
    }

    @When("^Push Save button Q$")
    public void pushSaveButtonQ() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]")).click();
        Thread.sleep(10000);
    }

    @Then("^Verify that Quiz \"([^\"]*)\" Status changed to \"([^\"]*)\"$")
    public void verifyThatQuizStatusChangedTo(String arg0, String arg1) throws Throwable {
        WebElement quiz = getDriver().findElement(By.xpath("//*[contains(text(),'Yulia')]"));
        String textFromQuiz = quiz.getText();
        String name = getDriver().findElement(By.xpath("//*[contains(text(),'Yulia')]/../../..//*[contains(text(),'PASSED')]")).getText();
        System.out.println(" Verified that Quiz Status is " + name);
    }
}
