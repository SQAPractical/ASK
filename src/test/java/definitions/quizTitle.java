package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static support.TestContext.getDriver;

public class quizTitle {
    @When("I navigate to Login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I type an email {string}")
    public void iTypeAnEmail(String TeacherEmail) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(TeacherEmail);
    }

    @And("I type teacher's password {string}")
    public void iTypeTeacherSPassword(String TeacherPassword) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(TeacherPassword);
    }

    @And("I click button Sign In")
    public void iClickButtonSignIn() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
    }


    @And("I click {string} on the side menu")
    public void iClickOnTheSideMenu(String menuItem) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'"+menuItem+"')]")).click();
    }


    @And("I click Create New Quiz button")
    public void iClickCreateNewQuizButton() {
        getDriver().findElement(By.xpath("//button/span[contains(text(),'Create New Quiz')]")).click();
    }

    @And("I type title of the quiz {string}")
    public void iTypeTitleOfTheQuiz(String quizTitle) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(quizTitle);
    }

    @And("I click add question button")
    public void iClickAddQuestionButton() {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
    }

    @And("I select question type {string} for question {int}")
    public void iSelectQuestionTypeForQuestion(String questionType, int questionNumber) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+questionNumber+"')]/../../..//*[contains(text(),'"+questionType+"')]")).click();
    }

    @And("I type text {string}")
    public void iTypeText(String questionText) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//textarea[@placeholder='Question *']")).sendKeys(questionText);
    }

    @And("I click Save button")
    public void iClickSaveButton() {
        getDriver().findElement(By.xpath("//button/span[contains(text(),'Save')]")).click();
    }

    @Then("quiz {string} appears in the List of Quizzes")
    public void quizAppearsInTheListOfQuizzes(String quizName) {
        WebElement Element=getDriver().findElement(By.xpath("//*[contains(text(),'List of Quizzes')]/../../../..//*[contains(text(),'"+quizName+"')]"));

        assertThat(Element.isDisplayed()).isTrue();
    }



    @And("I click Title of the quiz field")
    public void iClickTitleOfTheQuizField() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).click();
    }

    @And("I click outside the Title of the quiz field")
    public void iClickOutsideTheTitleOfTheQuizField() {
        getDriver().findElement(By.xpath("//img[@class='icon ng-star-inserted']")).click();
    }

    @Then("text {string} appears")
    public void textAppears(String errorMessage) {
        WebElement Element = getDriver().findElement(By.xpath("//mat-error[contains(text(),'"+errorMessage+"')]"));
        assertThat(Element.isDisplayed()).isTrue();
    }

    @And("I wait for {int} seconds")
    public void iWaitForSeconds(int seconds) throws InterruptedException {
        Thread.sleep(1000*seconds);
    }


    @And("I delete my quiz {string}")
    public void iDeleteMyQuiz(String quizName) {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+quizName+"')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'"+quizName+"')]/../../..//*[contains(text(),'Delete')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'Confirmation')]/../..//*[contains(text(),'Delete')]")).click();
    }
}
