package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class quizDelete {



    @And("I click Sign in button")
    public void iClickSignInButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Sign In')]")).click();
    }

    @Then("user is redirected to home page")
    public void userIsRedirectedToHomePage() {
        WebElement element = getDriver().findElement(By.xpath("//*[contains(text(),'kojix ap')]"));
        assertThat(element.isDisplayed()).isTrue();
    }

    @And("I wait for {int} seconds")
    public void iWaitForSeconds(int arg0) throws Throwable {
        Thread.sleep(3000);
    }

    @And("I click on Quizzes menu")
    public void iClickOnQuizesMenu() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();


    }

    @And("I click on Create New Quiz button")
    public void iClickOnCreateNewQuizButton() throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]")).click();
    }

    @And("type title of the quiz {string}")
    public void typeTitleOfTheQuiz(String title) throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[@placeholder=\"Title Of The Quiz *\"]")).sendKeys(title);
    }

    @And("I click on Add Question button")
    public void iClickOnAddQuestionButton() {
        getDriver().findElement(By.xpath("//*[@class='controls ng-star-inserted']//span[1]")).click();
    }

    @And("I click on Textual radio button")
    public void iClickOnTextualRadioButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Textual')]")).click();

    }

    @And("I type a question {string}")

    public void iTypeAQuestion(String question) throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(question);
    }

    @And("I click on Save button")
    public void iClickOnSaveButton() {
        getDriver().findElement(By.xpath("//*[@class='form-controls-container ng-star-inserted']//button[2]")).click();

    }

    @Then("I select Alla Tester quiz")
    public void iSelectAllaTesterQuizz() throws InterruptedException {
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Alla Tester')]")).click();
    }

    @And("I click on Delete button")
    public void iClickOnDeleteButton() {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Alla Tester')]/../../..//span[contains(text(),'Delete')]"
        )).click();
    }

    @And("I type email {string} on login page")
    public void iTypeEmailOnLoginPage(String Email) {
        getDriver().findElement(By.xpath("//*[@placeholder='Email *']")).sendKeys(Email);
    }

    @And("I type password {string} on login page")
    public void iTypePasswordOnLoginPage(String Pass) {
        getDriver().findElement(By.xpath("//*[@placeholder='Password *']")).sendKeys(Pass);
    }

    @Then("appears {string} message")
    public void appearsMessage(String arg0) {
        WebElement element2 = getDriver().findElement(By.xpath("//*[contains(text(),'Are you sure want to DELETE whole quiz? This actio')]"));
        assertThat(element2.isDisplayed()).isTrue();
    }

    @And("I click on Delete button in the right corner")
    public void iClickOnDeleteButtonInTheRightCorner() {
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-warn']//span[@class='mat-button-wrapper'][contains(text(),'Delete')]")).click();
    }
}

