package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class assignmentGradedBy {
    @Then("I click on {string}")
    public void iClickOn(String menuItem) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'" + menuItem + "')]")).click();

    }

    @And("I click on Create New Assignment")
    public void iClickOnCreateNewAssignment() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();
        Thread.sleep(3000);

    }


    @Then("I click on Group Filter Drop Down")
    public void iClickOnGroupFilterDropDown() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname='groupFilter']/../../..//*[@class='mat-select-arrow-wrapper']")).click();
        Thread.sleep(4000);
    }

    @And("I click {string} from list")
    public void iClickFromList(String groupName) {
        String xPhath = "//*[@class='mat-option-text'][contains(text(), '" + groupName + "')]";
        getDriver().findElement(By.xpath(xPhath)).click();


    }

    @Then("I click on Select Quiz to Assign Drop Down")
    public void iClickOnSelectQuizToAssignDropDown() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname='quizId']/../..//*[@class='mat-select-arrow-wrapper']")).click();
        Thread.sleep(2000);
    }

    @And("I choose {string} from list")
    public void iChooseFromList(String qTitle) {

        String xPath = "//*[@class='mat-option-text'][contains(text(), '" + qTitle + "')]";

        getDriver().findElement(By.xpath(xPath)).click();

    }

    @And("I click on Give Assignment")
    public void iClickOnGiveAssignment() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(6000);


    }

    @Then("I click on {string} button")
    public void iClickOnButton(String logOutbtn) throws InterruptedException {
        String xPath = "//*[@class='mat-line'][contains(text(), '" + logOutbtn + "')]";
        getDriver().findElement(By.xpath(xPath)).click();
        Thread.sleep(2000);
    }

    @Then("I choose {string} from group {string}")
    public void iChooseFromGroup(String studentName, String gName) {
        String xPath = "//span[text()='" + gName + "']/../..//*[contains(., '" + studentName + "')]/..//*[@class='mat-pseudo-checkbox']";
        getDriver().findElement(By.xpath(xPath)).click();
    }

    @And("I click on Conformation Log Out button")
    public void iClickOnConformationLogOutButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='mat-button-wrapper'][contains(text(), 'Log Out')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Go To My Assignments")
    public void iClickOnGoToMyAssignments() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='mat-button-wrapper'][contains(text(), 'Go To My Assignments')]")).click();
        Thread.sleep(1000);


    }


    @And("I click on Go To Assessment with quiz {string}")
    public void iClickOnGoToAssessmentWithQuiz(String qTitle) throws InterruptedException {
        String xPath = "//*[contains (text(), '" + qTitle + "')]/../..//button[@class='mat-raised-button mat-primary']";

        getDriver().findElement(By.xpath(xPath)).click();

        Thread.sleep(4000);

    }

    @And("I type answer {string} into Question {int}")
    public void iTypeAnswerIntoQuestion(String qAnswer, int qNumber) throws InterruptedException {
        String xPath = "//h5[contains(text(),'Question "+qNumber+"')]/..//textarea[@formcontrolname='textAnswer']";

        getDriver().findElement(By.xpath(xPath)).sendKeys(qAnswer);
        Thread.sleep(2000);
    }

    @And("I select answer {string} for Question {int}")
    public void iSelectAnswerForQuestion(String qAnswer, int qNumber) throws InterruptedException {

        String xPath = "//h5[contains(text(),'Question "+qNumber+"')]/..//label[@class='mat-radio-label'][contains (. ,'"+qAnswer+"')]";

        getDriver().findElement(By.xpath(xPath)).click();
        Thread.sleep(1000);
    }

    @And("I choose answer {string} for Question {int}")
    public void iChooseAnswerForQuestion(String qAnswer, int qNumber) throws InterruptedException {

        String xPath = "//h5[contains(text(),'Question "+qNumber+"')]/..//label[@class='mat-checkbox-layout'][contains (. ,'"+qAnswer+"')]";

        getDriver().findElement(By.xpath(xPath)).click();
        Thread.sleep(1000);
    }

    @And("I click on Submit My Answers")
    public void iClickOnSubmitMyAnswers() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']/..//*[contains (text(), 'Submit My Answers')]")).click();
        Thread.sleep(1000);
    }


    @Then("Then Message {string} appears")
    public void thenMessageAppears(String expMessage) throws InterruptedException {
        String xPhath = "//h1[@class='mat-dialog-title ng-star-inserted'][contains(text(), '"+expMessage+"')]";
        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPhath));
        assertThat(elementWithMessage.isDisplayed()).isTrue();
        Thread.sleep(1000);
    }

    @And("I click on Ok button")
    public void iClickOnOkButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@aria-label='Close dialog']")).click();
        Thread.sleep(1000);
    }

    @Then("quiz {string} appears in status {string}")
    public void quizAppearsInStatus(String qTitle, String qStatus) throws InterruptedException {
        String xPath = "//*[contains(text(), '"+qStatus+"')]/../..//*[contains(text(), '"+qTitle+"')]";
        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPath));
        assertThat(elementWithMessage.isDisplayed()).isTrue();
        Thread.sleep(1000);
    }

/*
    @And("I click on Grade with student name {string}")
    public void iClickOnGradeWithStudentName(String sName) throws InterruptedException {
        String xPath ="//*[contains(text(), 'sName')]/..//button[@class='mat-raised-button mat-primary']";
        getDriver().findElement(By.xpath(xPath)).click();
        Thread.sleep(2000);
    }*/

    @And("I click on plus sign for Question {int} to add points")
    public void iClickOnPlusSignForQuestionToAddPoints(int questNum) throws InterruptedException {
        String xPath = "//*[contains(text(), 'Question "+questNum+"')]/../..//button[@class='mat-mini-fab mat-accent']/..//*[contains(text(), '+')]";
        int variable = 0;
        for (int i=0; i<questNum; i++) {
            variable = i+1;
            getDriver().findElement(By.xpath(xPath)).click();
            Thread.sleep(1000);
            getDriver().findElement(By.xpath(xPath)).click();
            Thread.sleep(1000);
            getDriver().findElement(By.xpath(xPath)).click();
            Thread.sleep(1000);
            getDriver().findElement(By.xpath(xPath)).click();
            Thread.sleep(1000);
        }
    }

    @And("I click on Grade with quiz title {string}")
    public void iClickOnGradeWithQuizTitle(String qTitle) throws InterruptedException {
        String xPath = "//*[contains(text(), '"+qTitle+"')]/..//button[@class='mat-raised-button mat-primary']";
        getDriver().findElement(By.xpath(xPath)).click();
        Thread.sleep(2000);
    }

    @And("I click on quiz title {string}")
    public void iClickOnQuizTitle(String qTitle) throws InterruptedException {
        Thread.sleep(2000);
        String xPath = "//span[@class='quiz-name'][contains(text(), '"+qTitle+"')]";
        getDriver().findElement(By.xpath(xPath)).click();
        Thread.sleep(2000);
    }

    @Then("I see under Graded By {string} with quiz title {string}")
    public void iSeeUnderGradedByWithQuizTitle(String role, String qTitle) throws InterruptedException {
        String xPath = "//*[@class='graded-by'][contains(text(), '"+role+"')]/../../../../../..//*[contains (text(), '"+qTitle+"')]";

        WebElement elementWithMessage = getDriver().findElement(By.xpath(xPath));
        assertThat(elementWithMessage.isDisplayed()).isTrue();
        Thread.sleep(2000);

    }
}
