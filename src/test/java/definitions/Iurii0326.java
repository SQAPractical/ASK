package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class Iurii0326 {
    @Given("I navigate to login page")
    public void iNavigateToLoginPage() {getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @When("I login as a teacher")
    public void iLoginAsATeacher() {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys("fissam-vivabladiw@proemail.ml");
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys("311505");
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
    }

    @And("I go to quizzes")
    public void iGoToQuizzes() {getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
    }

    @And("I create new quiz {string}")
    public void iCreateNewQuiz(String quizN) throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(quizN);
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
        getDriver().findElement(By.xpath("//div[contains(text(),'Textual')]")).click();
//        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(quizN+"question");
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();

    }

    @And("I wait for {int} sec")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Then("^element with xpath \"([^\"]*)\" should be present$")
    public void elementWithXpathShouldBePresent(String xpath) {
        assertThat(getDriver().findElements(By.xpath(xpath))).hasSize(1);
    }

    @Then("quiz with name {string} should be present")
    public void quizWithNameShouldBePresent(String quizN) {
        assertThat(getDriver().findElements(By.xpath("//mat-panel-title[contains(text(),'"+quizN+"')]"))).hasSize(1);
    }

//    @And("^I type \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
//    public void iTypeIntoElementWithXpath(String text, String xpath) {
//        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
//    }

    @And("I add question to quiz")
    public void iAddQuestionToQuiz() {
        getDriver().findElement(By.xpath("//mat-icon[@class='mat-icon material-icons']")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'new empty question')]/../../..//*[contains(text(), 'Textual')]")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'new empty question')]/../../..//textarea[@placeholder='Question *']")).sendKeys("question");
    }

//    @And("I click on element with xpath {string}")
//    public void iClickOnElementWithXpath(String xpath) {
//        getDriver().findElement(By.xpath(xpath)).click();
//    }

    @Then("element with xpath {string} should not be present")
    public void elementWithXpathShouldNotBePresent(String xpath) {
        assertThat(getDriver().findElements(By.xpath(xpath))).hasSize(0);
    }

    @Then("element with xpath {string} should not be displayed")
    public void elementWithXpathShouldNotBeDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isFalse();
    }

//    @And("I create new quiz {string} with fifty questions")
//    public void iCreateNewQuizWithFiftyQuestions(String arg0) {
//        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
//        Thread.sleep(1000);
//        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
//        Thread.sleep(1000);
//        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(quizN);
//        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
//        getDriver().findElement(By.xpath("//div[contains(text(),'Textual')]")).click();
////        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
//        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(quizN+"question");
//        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
//    }
}
