package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static java.lang.Thread.sleep;
import static support.TestContext.getDriver;

public class quizTitle {


    @And("I click Sign In  button")
    public void iClickSignInButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
    }

    @When("I open Log In page")
    public void iOpenLogInPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @When("I click Quizzes button")
    public void iClickQuizzesButton() {
        getDriver().findElement(By.xpath("//div//*[contains(text(),'Quizzes')]")).click();
    }

    @And("I click Create New Quiz")
    public void iClickCreateNewQuiz() {
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
    }

    @And("I type title {string}")
    public void iTypeTitle(String title) {

        getDriver().findElement(By.xpath("//input[@formcontrolname = 'name']")).sendKeys(title);
    }
}
