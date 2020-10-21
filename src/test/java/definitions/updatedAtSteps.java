package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class updatedAtSteps {
    
    private static String timeStamp;
    private static String QuizName;

    @Given("I open url {string}")
    public void iOpenUrl(String url) {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

//    @When("I type email {string} on login page")
//    public void iTypeEmailOnLoginPage(String email) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
//    }
//
//    @And("I type password {string} on login page")
//    public void iTypePasswordOnLoginPage(String password) {
//        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(password);
//    }
//
//    @And("I click Sign in button")
//    public void iClickSignInButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
//        Thread.sleep(2000);
//    }
//
//    @Then("Text {string} appears")
//    public void textAppears(String text) {
//        WebElement actualText = getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]"));
//        assertThat(actualText.isDisplayed()).isTrue();
//    }

    @Then("I click on element with xpath {string}")
    public void iClickOnElementWithXpath(String xpath) throws InterruptedException {
        getDriver().findElement(By.xpath(xpath)).click();
        Thread.sleep(4000);
    }

    @Then("I type {string} into element with xpath {string}")
    public void iTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
        String QuizName  = getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).getText();
        updatedAtSteps.QuizName = QuizName;
    }

    @Then("I click on element just created by me")
    public void iClickOnElementJustCreatedByMe() throws InterruptedException {
        System.out.println(QuizName);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'TestQuiz11')]")).click();
        Thread.sleep(2000);
    }

    @And("I note down the current Date and Time")
    public void iNoteDownTheCurrentDateAndTime() {
        String timeStamp = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(Calendar.getInstance().getTime());
        updatedAtSteps.timeStamp = timeStamp;
    }

    @Then("Updated At: DateTime match with noted down")
    public void updatedAtDateTimeMatchWithNotedDown() {

        String updatedAt = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'TestQuiz11')]/parent::span/parent::mat-expansion-panel-header//following-sibling::div//div//div//table//tbody//tr[5]//td[2]")).getText();
        System.out.println(updatedAt);
        assertThat(timeStamp).isEqualTo(updatedAt);
    }



}
