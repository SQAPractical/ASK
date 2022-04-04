package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class TextualQuestionShowStopper {


//    @When("I navigate to the login page")
//    public void iNavigateToTheLoginPage() {
//        getDriver().get("http://ask-stage.portnov.com/#/login");
//    }

    @And("I type the email {string}")
    public void iTypeTheEmail(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
    }

    @And("I type the password {string}")
    public void iTypeThePassword(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(password);
    }

    @And("I click on {string} on the left menu")
    public void iClickOnOnTheLeftMenu(String menuItem) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'"+menuItem+"')]")).click();
    }

    @And("I click on the Sign in button")
    public void iClickOnTheSignInButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
    }

    @And("I click on {string} button")
    public void iClickOnButton(String nameOfButton) throws InterruptedException {
//        String xPathOfElement = "(//*[contains(text(), 'Assignment Date')])[1]";
//
//        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
//        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xPathOfElement)));
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[contains(text(),'"+nameOfButton+"')]")).click();

    }

    @And("I type {string} as title of the quiz")
    public void iTypeAsTitleOfTheQuiz(String quizTitle) {
        getDriver().findElement(By.xpath("//input[@placeholder = 'Title Of The Quiz *']")).sendKeys(quizTitle);
    }

    @And("I click on the Add question button")
    public void iClickOnTheAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'add_circle')]")).click();
        Thread.sleep(1000);
    }


    @And("I select {string} as question type for question {int}")
    public void iSelectAsQuestionTypeForQuestion(String questionType, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(),'"+questionType+"')]")).click();
        Thread.sleep(1000);
    }

    @And("I type {string} in question field")
    public void iTypeInQuestionField(String question) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(question);
    }

    @And("I click on Show-Stopper checkbox")
    public void iClickOnShowStopperCheckbox() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Show-Stopper')]")).click();
        Thread.sleep(1000);
    }


    @And("I click on the {string} button")
    public void iClickOnTheButton(String buttonName) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+buttonName+"')]")).click();
    }

    @And("I click on {string} from Quiz list")
    public void iClickOnFromQuizList(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
        Thread.sleep(1000);
    }


    @Then("text {string} is present in question {string}")
    public void textIsPresentInQuestion(String showStopper, String questionName) {
        String showStopperText = getDriver().findElement(By.xpath("//h3[contains(text(),'"+questionName+"')]/..//*[contains(text(),'"+showStopper+"')]")).getText();
        assertThat(questionName.contains(showStopperText)).isTrue();
    }

    @And("I click  {string} button")
    public void iClickButton(String buttonName) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Textual Show-Stopper')]/../../..//*[contains(text(),'"+buttonName+"')]")).click();
    }

    @Then("text {string} is present in question {int}")
    public void textIsPresentInQuestion(String showStoppertext, int questionNumber) {
        String showStopper = getDriver().findElement(By.xpath("//h5[contains(text(),'Question "+questionNumber+"')]/..//p[contains(text(),'"+showStoppertext+"')]")).getText();
        assertThat(showStopper).isEqualTo(showStoppertext);
    }

    @And("I delete the quiz {string}")
    public void iDeleteTheQuiz(String quizName) throws InterruptedException {
    getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
    getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]/../../..//*[contains(text(),'Delete')]")).click();
    getDriver().findElement(By.xpath("//*[contains(text(),'Confirmation')]/../..//*[contains(text(),'Delete')]")).click();
    Thread.sleep(2000);
    }

    /*@And("I click on {string} and select {string} from quiz list")
    public void iClickOnAndSelectFromQuizList(String quizList, String quizName) {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+quizList+"')]")).click();
        getDriver().findElement(By.xpath("//span[@class ='mat-option-text'][contains( text(),'"+quizName+"')]")).click();
    }*/

    @And("I click on {string}")
    public void iClickOn(String text) {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+text+"')]")).click();
    }

    @And("I select in dropdown menu option {string}")
    public void iSelectInDropdownMenuOption(String quizTitle) {
        getDriver().findElement(By.xpath("//span[@class ='mat-option-text'][contains( text(),'"+quizTitle+"')]")).click();
    }

    @And("I select {string} from the list of students")
    public void iSelectFromTheListOfStudents(String studName) {
        getDriver().findElement(By.xpath("//*[text()[contains(.,'"+studName+"')]]/..//*[@class = 'mat-pseudo-checkbox']")).click();
    }

    @And("I logout of teacher account")
    public void iLogoutOfTeacherAccount() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
    }

    @And("I click on {string} for {string} quiz")
    public void iClickOnForQuiz(String goToAssessment, String quizName) {
        getDriver().findElement(By.xpath("//td[contains(text(),'"+quizName+"')]/..//span[contains(text(),'"+goToAssessment+"')]")).click();
    }

    @And("I confirm {string} question")
    public void iConfirmQuestion(String buttonName) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Confirmation')]/../..//span[contains(text(),'"+buttonName+"')]")).click();
    }
}
