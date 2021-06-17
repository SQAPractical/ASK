package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static support.TestContext.getDriver;

public class quiztitle {

    @When("I will navigate to login page")
    public void iWillNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I will type email {string}")
    public void iWillTypeEmail(String KMemail) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(KMemail);
    }

    @And("I will type password {string}")
    public void iWillTypePassword(String passw) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(passw);
    }

    @And("I click on Sign In button at login page")
    public void iClickOnSignInButtonAtLoginPage() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@type='submit']")).click();
        Thread.sleep(2000);
    }

//    @And("I click on Quizzes button")
//    public void iClickOnQuizzesButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[contains(text(),'Quizzes')]")).click();
//        Thread.sleep(2000);
//    }

//    @And("I click on Create New Quiz button")
//    public void iClickOnCreateNewQuizButton() throws InterruptedException {
//        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]")).click();
//        Thread.sleep(2000);
//    }

    @And("I type Quiz Title {string}")
    public void iTypeQuizTitle(String QTitle) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@placeholder = 'Title Of The Quiz *']")).sendKeys(QTitle);
    }

    @Then("Element with text {string} is displayed")
    public void elementWithTextIsDisplayed(String element) {
        String elementOnHomePage = "//*[contains(text(),'add_')]";
        String xPath = "//*[contains(text(),'"+element+"')]";
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnHomePage)));
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
    }


    @And("I click on some place on page")
    public void iClickOnSomePlaceOnPage() {
        getDriver().findElement(By.xpath("//*[@class = 'ng-star-inserted']")).click();
    }

}
