package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static support.TestContext.getDriver;

public class SingleChoice {
    @Given("I navigate to {string}")
    public void iNavigateTo(String arg0) {
        getDriver().get(arg0);
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
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(Quest);
        Thread.sleep(3000);
    }

    @And("I click Add Question button")
    public void iClickAddQuestionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[@class='mat-icon material-icons']")).click();
        Thread.sleep(3000);
    }

    @And("I click Add Option button")
    public void iClickAddOptionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[@class='mat-content']/../..//span[contains(text(),'Add Option')]")).click();
        Thread.sleep(3000);
    }

}
