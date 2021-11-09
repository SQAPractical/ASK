package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class textualQuestionShowStopper {
    @When("When I navigate to login page")
    public void whenINavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/");}

    @And("I click on Textual radio button")
    public void iClickOnTextualRadioButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Textual')]")).click();

    }
    @And("I type {string} for Question field")
    public void iTypeForQuestionField(String questionText) {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(questionText);
    }

    @And("I select on Show-Stopper question")
    public void iSelectOnShowStopperQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath(" //span[contains(text(),'\"Show-Stopper\"')]")).click();
        Thread.sleep(2000);

    }

    @And("I click on Save button")
    public void iClickOnSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[normalize-space()='Save']")).click();
        Thread.sleep(2000);
    }

    @And("I click on {string} button for quiz {string}")
    public void iClickOnButtonForQuiz(String buttonName, String quizName) {
        getDriver().findElement(By.xpath("//td[contains(text(),'"+quizName+"')]/..//*[contains(text(), '"+buttonName+"')]")).click();
    }

    @And("I type {string} to Enter your answer")
    public void iTypeToEnterYourAnswer(String answer) {
        getDriver().findElement(By.xpath("//textarea[@id='mat-input-8']")).sendKeys();
    }

    @And("I click on Submit My Answers")
    public void iClickOnSubmitMyAnswers() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Submit My Answers')]")).click();
        Thread.sleep(2000);
    }


//    @And("I click Create New Assignment button")
//    public void iClickCreateNewAssignmentButton() {
//        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();
//    }

    @And("I select student {string}")
    public void iSelectStudent(String student) {
        getDriver().findElement(By.xpath("//span[contains(text(), 'ABC')]/../..//*[contains(.,'Ivan')]")).click();
    }

    @And("I click on Give Assignment button")
    public void iClickOnGiveAssignmentButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]")).click();
        Thread.sleep(2000);

    }

    @And("I click on {string} button on left menu")
    public void iClickOnButtonOnLeftMenu(String LogOut) throws InterruptedException{
        getDriver().findElement(By.xpath("//*[contains(text(),'Log Out')]")).click();

    }

    @Then("Textual question is marked as Show-stopper")
    public void textualQuestionIsMarkedAsShowStopper() {
        WebElement showStopper = getDriver().findElement(By.xpath("//*[contains(text(),'Show-Stopper Question')]"));
        assertThat(showStopper.isDisplayed()).isTrue();
    }

    @And("I click on {string} button on right side")
    public void iClickOnButtonOnRightSide(String buttonName) throws InterruptedException{
        getDriver().findElement(By.xpath("//span[contains(text(),'"+buttonName+"')]")).click();
        Thread.sleep(2000);
    }

}

