package definitions;

import cucumber.api.java.en.And;
import org.assertj.core.api.Assertions;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static support.TestContext.getDriver;

public class assignGradedBy {
    @And("I click on Quizzes in the main menu")
    public void iClickOnQuizzesInTheMainMenu() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

//    @And("I click on Create New Quiz button")
//    public void iClickOnCreateNewQuizButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//span[text()='Create New Quiz']")).click();
//        Thread.sleep(3000);
//    }

    @And("I type {string} in the title of the quiz")
    public void iTypeInTheTitleOfTheQuiz(String quiz) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(quiz);
    }

    @And("I click on Add Question button")
    public void iClickOnAddQuestionButton() {
        getDriver().findElement(By.xpath("//mat-icon[text()='add_circle']")).click();
    }

    @And("I choose Question type Single-Choice")
    public void iChooseQuestionTypeSingleChoice() {
        getDriver().findElement(By.xpath("//label[@for='mat-radio-3-input']")).click();
    }

    @And("I fill out {string} in the Question field")
    public void iFillOutInTheQuestionField(String Question) {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).sendKeys(Question);
    }

    @And("I choose Option first")
    public void iChooseOptionFirst() {
        getDriver().findElement(By.xpath("//label[@for='mat-radio-6-input']")).click();
    }

    @And("I fill out {string} in the Option first field")
    public void iFillOutInTheOptionFirstField(String Correct) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']")).sendKeys(Correct);
    }

    @And("I fill out {string} in the Option second field")
    public void iFillOutInTheOptionSecondField(String NCor) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 2*']")).sendKeys(NCor);
    }

    @And("I click on button Save")
    public void iClickOnButtonSave() throws InterruptedException{
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(5000);
    }

    @And("I click on Assignments in the main menu")
    public void iClickOnAssignmentsInTheMainMenu() throws InterruptedException{
        getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Create New Assignment on button")
    public void iClickCreateNewAssignmentOnButton() throws InterruptedException{
        getDriver().findElement(By.xpath("//span[contains(text(),'Assignment')]")).click();
        Thread.sleep(2000);
    }

    @And("I Select created {string} quiz to assign")
    public void iSelectCreatedQuizToAssign(String Nquiz) throws InterruptedException{
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]/..")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[contains(text(),'"+Nquiz+"')]")).click();
        Thread.sleep(1000);
//        sendKeys(Keys.ENTER);
    }

    //choose group wwww in the filter and click Enter
    @And("I click on group filter")
    public void iClickOnGroupFilter() throws InterruptedException{
        getDriver().findElement(By.xpath("//mat-select[@placeholder='Group Filter']")).sendKeys("wwww");
        Thread.sleep(1000);
    // getDriver().findElement(By.xpath("//*[text()='wwww'][@xpath='8']")).click();
    // press enter with sendKeys method
        sendKeys(Keys.ENTER);
        Thread.sleep(5000);
    }


    @And("I click on group filter {string}")
    public void iClickOnGroupFilter(String group) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-select[@placeholder='Group Filter']")).click();
        getDriver().findElement(By.xpath("//mat-select[@placeholder='Group Filter']")).click();

        Thread.sleep(1000);
        // getDriver().findElement(By.xpath("//*[text()='wwww'][@xpath='8']")).click();
        // press enter with sendKeys method
        sendKeys(Keys.ENTER);
        Thread.sleep(5000);
    }

    private void sendKeys(Keys enter) {
    }

    @And("I choose student from the list")
    public void iChooseStudentFromTheList() {
        getDriver().findElement(By.xpath("//div[@class='mat-list-text'][@xpath='8']")).click();
    //    getDriver().findElement(By.xpath("//mat-selection-list[@formcontrolname='selectedUsers']/mat-list-option[@xpath='1']")).click();
    //    getDriver().findElement(By.xpath("//mat-list-option[@aria-disabled='false'][@xpath='1']")).click();
    //    getDriver().findElement(By.xpath("//mat-pseudo-checkbox[@class='mat-pseudo-checkbox mat-pseudo-checkbox-checked']")).click();
    }


    @And("I choose student {string} from the list")
    public void iChooseStudentFromTheList(String studName) throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='mat-list-text'][contains(.,'"+studName+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on give Assignment button")
    public void iClickOnGiveAssignmentButton() {
        getDriver().findElement(By.xpath("//span[text()='Give Assignment']")).click();
    }



    @And("I click on Dropdown icon for quiz {string} in the List of Assignments")
    public void iClickOnDropdownIconForQuizInTheListOfAssignments(String QuizName) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Quiz: "+QuizName+"')]")).click();

    }
//    @And("I verify if a quiz can be graded by nobody {string} when assignment is not submitted")
//    public void iVerifyIfAQuizCanBeGradedByNobodyWhenAssignmentIsNotSubmitted(String NB) {
//        String result = getDriver().findElement(By.xpath("//td[@class='graded-by'][@xpath='1']")).getText();
//        Assertions.assertThat(result).contains(NB);
//    }

    @And("I verify if a quiz {string} graded by {string}")
    public void iVerifyIfAQuizGradedBy(String QuizName, String GradedBy) throws InterruptedException {
        Thread.sleep(2000);
        String result = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Quiz: "+QuizName+"')]/../../..//td[@class='graded-by']")).getText();
        System.out.println("Text from element: " + result);
        Assertions.assertThat(result).contains(GradedBy);

    }
}
