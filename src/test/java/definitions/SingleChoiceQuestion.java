package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static support.TestContext.getDriver;

public class SingleChoiceQuestion {
    @Given("I navigate to {string}")
    public void iNavigateTo(String arg0) {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @When("I type  email {string}")
    public void iTypeEmail(String Email) {
        getDriver().findElement(By.xpath("//*[@formcontrolname=\"email\"]")).sendKeys(Email);
    }

    @And("I type  password {string}")
    public void iTypePassword(String Pass) {
        getDriver().findElement(By.xpath("//*[@formcontrolname=\"password\"]")).sendKeys(Pass);
    }

    @And("I click Login button")
    public void iClickLoginButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(3000);
    }

    @And("I click button Quizzes")
    public void iClickButtonQuizzes() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(3000);
    }

    @And("I click button Create New Quiz")
    public void iClickButtonCreateNewQuiz() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='controls']//button[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(3000);
    }

    @And("I type title of the quiz {string}")
    public void iTypeTitleOfTheQuiz(String Quest) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname=\"name\"]")).sendKeys(Quest);
        Thread.sleep(3000);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[@class='mat-icon material-icons']")).click();
        Thread.sleep(3000);
    }

    @And("I click Single choice radio-button")
    public void iClickSingleChoiceRadioButton() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Single-Choice')]")).click();
    }

    @And("I type Question {string}")
    public void iTypeQuestion(String QuestTex) {
        getDriver().findElement(By.xpath("//*[@formcontrolname=\"question\"]")).sendKeys(QuestTex);
    }

    @And("I type Option#{int} {string}")
    public void iTypeOption(int arg0, String Opt1) {
        getDriver().findElement(By.xpath("//*[@id=\"mat-input-2\"]")).sendKeys(Opt1);
    }

    @And("I type Second Option {string}")
    public void iTypeSecondOption(String Opt2) {
        getDriver().findElement(By.xpath("//*[@id=\"mat-input-3\"]")).sendKeys(Opt2);
    }

    @And("I click Option{int} radio-button")
    public void iClickOptionRadioButton(int arg0) {
        getDriver().findElement(By.xpath("/html[1]/body[1]/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/main[1]/mat-accordion[1]/mat-expansion-panel[1]/div[1]/div[1]/ac-question-body-form[1]/div[1]/div[2]/div[1]/mat-radio-group[2]/mat-radio-button[1]/label[1]/div[1]/div[1]")).click();
    }

    @And("I click Save button")
    public void iClickSaveButton() {
        getDriver().findElement(By.xpath("//div[@class='form-controls-container ng-star-inserted']//button[2]")).click();
    }

    @Then("I get error message contains {string}")
    public void iGetErrorMessageContains(String message) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(), 'This field is required')]")).isDisplayed()).isTrue();
    }
}