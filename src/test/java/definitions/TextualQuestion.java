package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static support.TestContext.getDriver;

public class TextualQuestion {

    @When("I click on Create New Quiz button")
    public void iClickOnCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[text()='Create New Quiz']")).click();
        Thread.sleep(3000);

    }

    @Then("I type Title {string} in the text field")
    public void iTypeTitleInTheTextField(String title) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(title);
        Thread.sleep(3000);
    }

    @Then("I click on {string} menu item")
    public void iClickOnMenuItem(String menuItem) throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[text()='" + menuItem + "']/../..")).click();
        Thread.sleep(2000);
    }

    @And("I click on Add Question button")
    public void iClickOnAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[@class='mat-icon material-icons']")).click();
        Thread.sleep(4000);
    }

    @And("I select Textual option for the question")
    public void iSelectTextualOptionForTheQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//div[contains(text(),'Textual')]")).click();
        Thread.sleep(4000);
    }

    @And("I type Question in the question field")
    public void iTypeQuestionInTheQuestionField() {
        getDriver().findElement(By.xpath("//mat-expansion-panel[1]//div[1]//div[1]//ac-question-body-form[1]//div[1]//div[2]//mat-form-field[1]//div[1]//div[1]//div[1]//textarea[1]")).sendKeys("Patria O Muerte");
    }

//    @And("I click Save button")
//    public void iClickSaveButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//div[@class='form-controls-container ng-star-inserted']//button[2]")).click();
//        Thread.sleep(3000);
//    }


    @When("I click on Assignments menu")
    public void iClickOnAssignmentsMenu() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]")).click();
        Thread.sleep(2000);
    }

    @Then("I click on Create New Assignments button")
    public void iClickOnCreateNewAssignmentsButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();
        Thread.sleep(3000);
    }

    @And("I find a quiz with title Textual quizz 10 from the list of quizes and click on it")
    public void iFindAQuizWithTitleFromTheListOfQuizesAndClickOnIt() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Textual quizz 10')]")).click();
        Thread.sleep(3000);

    }

    @And("I click on Select Quiz to Assign")
    public void iClickOnSelectQuizToAssign() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='mat-select-value']//span[contains(text(),'Select Quiz To Assign')]")).click();
        Thread.sleep(3000);
    }

    @And("I choose the student {string}")
    public void iChooseTheStudent(String text) {
        getDriver().findElement(By.xpath("//mat-list-option[contains(.,'"+ text +"')]//mat-pseudo-checkbox")).click();
    }

    @And("I click on Give Assignment button")
    public void iClickOnGiveAssignmentButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]")).click();
    }

    @When("I click on My Assignments menu")
    public void iClickOnMyAssignmentsMenu() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Assignments')]")).click();
        Thread.sleep(3000);
    }

    @Then("I click GO TO ASSESSMENT button on quiz {string}")
    public void iClickGOTOASSESSMENTButtonOnQuiz(String text) throws InterruptedException {
        getDriver().findElement(By.xpath("//tr[@class='ng-star-inserted']/../../..//*[contains(text(),'"+ text +"')]/../../..//*[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(3000);
    }

    @And("I type the text of the answer {string} to question number {int}")
    public void iTypeHastaSiempreComandanteInTextField(String text, int a) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-card["+ a +"]//*[contains(@class, 'answer mat-input')][1]//*[contains(@id, 'mat-input')]")).sendKeys(text);
        Thread.sleep(3000);
    }

    @And("I click on Submit my answers button")
    public void iClickOnSubmitMyAnswersButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper']")).click();
        Thread.sleep(3000);
    }

    @And("I click OK button")
    public void iClickOKButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Ok')]")).click();
        Thread.sleep(3000);
    }

    @Then("I click on Submissions menu")
    public void iClickOnSubmissionsMenu() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Submissions')]")).click();
        Thread.sleep(3000);
    }

    @And("I click on Grade button")
    public void iClickOnGradeButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Emma Emma')]/..//*[@class='mat-button-wrapper']")).click();

    }

    @And("I click two times on plus button")
    public void iClickTimesOnPlusButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'+')]")).click();
        getDriver().findElement(By.xpath("//span[contains(text(),'+')]")).click();
        Thread.sleep(3000);
    }

    @And("I click one time on minus button")
    public void iClickOneTimeOnMinusButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'-')]")).click();
    }
}
