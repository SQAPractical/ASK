package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class SingleChoiceQuiestionShowStopper {

    @And("I type teacher_email {string} to the email_element")
    public void iTypeTeacher_emailToTheEmail_element(String e_mail) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(e_mail);
    }
    @And("I type password {string} to the login_passw_element")
    public void iTypePasswordToTheLogin_passw_element(String passw) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(passw);
    }
    @And("I click Sign in button")
    public void iClickSignInButton() {
        getDriver().findElement(By.xpath("//*[@type='submit']")).click();
    }

    @And("I click to the quizzes_menu_element")
    public void iClickToTheQuizzes_menu_element() {
        getDriver().findElement(By.xpath("//*[contains(@href,'quizzes')]")).click();
    }
    @Then("titile_quiz_element should be displayed")
    public void titile_quiz_elementShouldBeDisplayed() {
        assertThat(getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).isDisplayed()).isTrue();
    }
    @When("I type text {string} to the titile_quiz_element")
    public void iTypeTextToTheTitile_quiz_element(String title) throws Throwable{
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(title);
    }


    @And("I click to the add_quist_element")
    public void iClickToTheAdd_quist_element() {
        getDriver().findElement(By.xpath("//mat-icon[text()='add_circle']/../..")).click();
    }
    @Then("single_choice_element should be presented")
    public void single_choice_elementShouldBePresented() {
        assertThat(getDriver().findElements(By.xpath("//div[contains(text(),'Single-Choice')]"))).hasSize(1);
    }

    @When("I click to the single_choice_element")
    public void iClickToTheSingle_choice_element() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Single-Choice')]/..")).click();
    }
    @And("I type text {string} to the titile_quiest_element")
    public void iTypeTextToTheTitile_quiest_element(String title) {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(title);
    }
    @And("I type text {string} to the first_radio_quest_element")
    public void iTypeTextToTheFirst_radio_quest_element(String quest) {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']")).sendKeys(quest);

    }
    @And("I type text {string} to the second_radio_quest_element")
    public void iTypeTextToTheSecond_radio_quest_element(String quest) {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 2*']")).sendKeys(quest);
    }
    @When("I click to the show_stopper_quest_el")
    public void iClickToTheShow_stopper_quest_el() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Show-Stopper')]/../..")).click();
    }
    @And("I click to the first_radio_elem")
    public void iClickToTheFirst_radio_elem() {
        getDriver().findElement(By.xpath("//*[@placeholder='Option 1*']/../../../../../mat-radio-button/label")).click();
    }
    @And("I click to the save_quiz_element")
    public void iClickToTheSave_quiz_element() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]/..")).click();
    }

    @Then("show_stop_element should be displayed")
    public void show_stop_elementShouldBeDisplayed() {
        assertThat(getDriver().findElement(By.xpath("//*[contains(@class,'show-stopper')]")).isDisplayed()).isTrue();
    }
    @And("I click to the create_quiz_element")
    public void iClickToTheCreate_quiz_element() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]/../../button")).click();
    }

    @And("I wait {int} sec")
    public void iWaitSec(int second) throws Throwable {
        Thread.sleep(second);
    }

    @And("I click to the element with xpath {string}")
    public void iClickToTheElementWithXpath(String x_path) throws Throwable {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(x_path)).click();
    }
    @Then("element with xpath {string} should be displayed")
    public void elementWithXpathShouldBeDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }
    @When("I type text {string} to the element with xpath {string}")
    public void iTypeTextToTheElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }
    @Then("^I click on element using JavaScript with xpath \"([^\"]*)\"$")
    public void iClickOnElementUsingJavaScriptWithXpath(String xpath) {
        WebElement element = getDriver().findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].click();", element);
    }
    @Then("element with xpath {string} should be presented")
    public void elementWithXpathShouldBePresented(String xpath) {
        assertThat(getDriver().findElements(By.xpath(xpath))).hasSize(1);
    }
    @And("I type email {string} to the element with xpath {string}")
    public void iTypeEmailToTheElementWithXpath(String e_mail, String x_path) {
        getDriver().findElement(By.xpath(x_path)).sendKeys(e_mail);
    }
    @And("I type password {string} to the element with xpath {string}")
    public void iTypePasswordToTheElementWithXpath(String passw, String x_path) {
        getDriver().findElement(By.xpath(x_path)).sendKeys(passw);
    }

    @When("I click to the choosing_quiz_element with title {string}")
    public void iClickToTheChoosing_quiz_elementWithTitle(String title) {
        String xpath = "//*[contains(text(),'"+ title +"')]";
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @And("I click to the preview_quiz_element with title {string}")
    public void iClickToThePreview_quiz_elementWithTitle(String title) {
        String xpath = "//*[contains(text(),'"+ title +"')]/../../..//button//span[text()='Preview']/..";
        getDriver().findElement(By.xpath(xpath)).click();
    }
}
