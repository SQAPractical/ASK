package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class createQuiz {
    @Given("I open my login page")
    public void iOpenMyLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @Then("I type my email {string}")
    public void iTypeMyEmail(String email) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(email);
    }

    @And("I type my password {string}")
    public void iTypeMyPassword(String pass) {
        getDriver().findElement(By.xpath("//input [@placeholder='Password *']")).sendKeys(pass);
    }

    @Then("I click button {string}")
    public void iClickButton(String click) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Sign In')]")).click();
    }

    @And("I wait here for {int} seconds")
    public void iWaitHereForSeconds(int time) throws Throwable {
        time = time * 2000;
        Thread.sleep(time);
    }

    @Then("I use button {string}")
    public void iUseButton(String arg0) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
    }

    @And("I get page Quizzes {string}")
    public void iGetPageQuizzes(String arg0) {
        getDriver().get("http://ask-stage.portnov.com/#/quizzes");

    }

    @And("I wait on page {int} seconds")
    public void iWaitOnPageSeconds(int time) throws Throwable {
        time = time * 2000;
        Thread.sleep(time);
    }

    @Then("I click on button {string}")
    public void iClickOnButton(String click) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]")).click();

    }

    @Then("I wait for page {string}")
    public void iWaitForPage(String url) {
        getDriver().get("http://ask-stage.portnov.com/#/quiz-builder");
    }


    @And("type {string} into {string}")
    public void typeInto(String title, String field) {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(title);
    }


    @Then("I use button which contains {string}")
    public void iUseButtonWhichContains(String click) {
        getDriver().findElement(By.xpath("//*[@class='controls ng-star-inserted']//span[1]")).click();
    }

    @And("I wait for  {int} seconds")
    public void iWaitForSeconds(int time) throws Throwable {
        time = time * 2000;
        Thread.sleep(time);
    }

    @Then("I click radio-button {string}")
    public void iClickRadioButton(String click) {
        getDriver().findElement(By.xpath("//div[contains(text(),'Single-Choice')]/..//div[@class='mat-radio-inner-circle']")).click();

    }

    @And("type text{string} into {string}")
    public void typeTextInto(String text, String QuestionRequiredField) {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(text);
    }

    @Then("I check radio-button with {string}")
    public void iCheckRadioButtonWith(String click) {
        String element = "//*[contains(text(),'Option 1*')]/../../../../../..//*[@class='mat-radio-inner-circle']";
        getDriver().findElement(By.xpath(element)).click();

    }


    @And("I stay on page {int} seconds")
    public void iStayOnPageSeconds(int time) throws Throwable {
        time = time * 2000;
        Thread.sleep(time);
    }

    @And("I type text {string}")
    public void iTypeText(String text) {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']")).sendKeys(text);
    }

    @Then("I click {string} radio-button")
    public void iClickRadioButtonOption2(String clickOption2) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Option 2*')]/../../../../../..//*[@class='mat-radio-inner-circle']")).click();

    }

    @And("I type text {string} in {string}")
    public void iTypeTextIn(String text, String Option2) {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 2*']")).sendKeys(text);

    }

    @Then("I hit {string} button")
    public void iHitButton(String click) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]")).click();
    }

    @Then("I get back on page {string}")
    public void iGetBackOnPage(String url) {
        getDriver().get("http://ask-stage.portnov.com/#/quizzes");

    }


}
