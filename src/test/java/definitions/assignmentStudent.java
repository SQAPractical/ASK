package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;


import static support.TestContext.getDriver;
import static support.TestContext.teardown;

public class assignmentStudent {
   

    @When("I click Assignments button")
    public void iClickAssignmentsButton()  {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]")).click();

    }

    @And("I click Create New Assignment button")
    public void iClickCreateNewAssignmentButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();
    }

    @When("I click Quizzes button")
    public void iClickQuizzesButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
    }

    @And("I type the title of the quiz {string}")
    public void iTypeTheTitleOfTheQuiz(String QuizTitle) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(QuizTitle);
        Thread.sleep(2000);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
    }

    @And("I click Textual radio button")
    public void iClickTextualRadioButton() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Textual')]")).click();
    }

    @And("I type the question {string}")
    public void iTypeTheQuestion(String Question) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(Question);
        Thread.sleep(2000);
    }

    @And("I click Save button")
    public void iClickSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Select Quiz To Assign from drop down menu")
    public void iClickSelectQuizToAssignFromDropDownMenu() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]")).click();
    }

    @And("I click on Swapna Quiz")
    public void iClickOnSwapnaQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Swapna Quiz')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on the name {string}")
    public void iClickOnTheName(String studName) {
        getDriver().findElement(By.xpath("//mat-list-option[contains(.,'Sheldon Cooper')]")).click();
    }

    @And("I click Give Assignment button")
    public void iClickGiveAssignmentButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]")).click();
        Thread.sleep(2000);
    }


    @And("I click on Group Filter")
    public void iClickOnGroupFilter() throws InterruptedException {
        getDriver().findElement(By.xpath("//body/ac-root/mat-sidenav-container/mat-sidenav-content/main/ac-create-assignment-page/mat-card/form/div/mat-form-field[1]/div[1]/div[1]/div[1]")).click();
        Thread.sleep(2000);

    }


    @And("I click {int} from drop Group Filter down menu")
    public void iClickFromDropGroupFilterDownMenu(int groupNum) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-option[@id='mat-option-42']//span[contains(text(),'001')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Select All")
    public void iClickOnSelectAll() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Select All')]")).click();
    }



    @And("I click on Quiz: Swapna Quiz")
    public void iClickOnQuizSwapnaQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quiz: Swapna Quiz')]/..//*[contains(text(),'more_vert')]")).click();
        Thread.sleep(3000);
    }

    @And("I click on Delete Assignment")
    public void iClickOnDeleteAssignment() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Delete Assignment')]")).click();
        Thread.sleep(3000);
    }

    @And("I click on Delete")
    public void iClickOnDelete() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Delete')]")).click();
    }
}

