package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java8.Th;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class singleChoiceQuestionShowStorper {
    @And("I click on {string} button")
    public void iClickOnButton(String buttonName) {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+buttonName+"')]")).click();
    }

    @And("I type email {string} on Login page")
    public void iTypeEmailOnLoginPage(String email) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
    }

    @And("I type password {string} on Login page")
    public void iTypePasswordOnLoginPage(String password) {
        getDriver().findElement(By.xpath("//input[@placeholder= 'Password *']")).sendKeys(password);
    }

    @And("I click {string} button for question {int}")
    public void iClickButtonForQuestion(String questionType, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(), 'Single-Choice')]")).click();
        Thread.sleep(3000);
    }

    @And("I type text {string} for option {int}")
    public void iTypeTextForOption(String textOption, int optionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option "+optionNumber+"*']")).sendKeys(textOption);
        Thread.sleep(3000);
    }


    @And("I select {string} as type for question {int}")
    public void iSelectAsTypeForQuestion(String showStopper, int questionNumber) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Show-Stopper')]")).click();
        Thread.sleep(300);
    }


    @And("I click on {string} in List of Quizzes")
    public void iClickOnInListOfQuizzes(String nameOfQuiz) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+nameOfQuiz+"')]")).click();
        Thread.sleep(200);
    }


    @Then("{string} is present in Question {int}")
    public void isPresentInQuestion(String nameOption, int questionNumber) throws InterruptedException {
        assertThat(getDriver().findElement(By.xpath("//p[contains(text(), 'Show-Stopper')]")).isDisplayed()).isTrue();
        Thread.sleep(200);


    }


    @And("I click on {string} button in {string}")
    public void iClickOnButtonIn(String buttonName, String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(), '"+quizName+"')]//..//../../../div/div/div/../..//../*[contains(text(), 'Preview')]")).click();
        Thread.sleep(2000);
    }


    @And("I click on {string} button on {string} assignment in List of Assignments")
    public void iClickOnButtonOnAssignmentInListOfAssignments(String assignmentButton, String assignmentName) throws InterruptedException {
        getDriver().findElement(By.xpath("//table/tbody/tr/td[contains(text(), '"+assignmentName+"')]")).click();
        Thread.sleep(2000);
    }


    @And("I select  {string} button in {string}")
    public void iSelectButtonIn(String button, String menuName) {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Create New Assignment')]")).click();
    }

    @And("I select {string} field in {string}")
    public void iSelectFieldIn(String nameField, String menuName) throws InterruptedException {
        getDriver().findElement(By.xpath("//form/div/mat-form-field/div/div/div/mat-select[@placeholder='Select Quiz To Assign']")).click();
        Thread.sleep(2000);
    }


    @And("I select {string}  in {string} menu")
    public void iSelectInMenu(String quizName, String menuName) throws InterruptedException {
        getDriver().findElement(By.xpath("//div/mat-option/span[contains(text(), '"+quizName+"')]")).isSelected();
        Thread.sleep(2000);
    }




    @And("I click on {string} button in Give Assignment menu")
    public void iClickOnButtonInGiveAssignmentMenu(String nameOfButton) {
        getDriver().findElement(By.xpath("//button/*[contains(text(), '"+nameOfButton+"')]")).click();
    }

    @And("I select {string} quiz")
    public void iSelectQuiz(String quizName) {
        getDriver().findElement(By.xpath("//div[@class='quizzes']/mat-accordion/mat-expansion-panel/mat-expansion-panel-header/span/*[contains(text(),'"+quizName+"')]")).click();
    }


    @And("I select {string} button in {string} quiz")
    public void iSelectButtonInQuiz(String buttonName, String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-expansion-panel-header/span/*[contains(text(), '"+quizName+"')]/../../../div/div/div/div/button/*[contains(text(), '"+buttonName+"')]")).click();
        Thread.sleep(4000);

    }

    @Then("{string} is not present in {string}")
    public void isNotPresentIn(String quizName, String menuName) {
        assertThat(getDriver().findElement(By.xpath("//mat-expansion-panel-header/span/*[contains(text(), '"+quizName+"')]")).isEnabled()).isTrue();
    }

    @And("I select {string}")
    public void iSelect(String studentName) throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='mat-list-text'][contains(., '"+studentName+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on {string} button in Confirmation menu")
    public void iClickOnButtonInConfirmationMenu(String nameButton) throws InterruptedException {
        getDriver().findElement(By.xpath("//h1[contains(text(), 'Confirmation')]/../div/button/*[contains(text(), '"+nameButton+"')]")).click();
        Thread.sleep(2000);

    }
}
