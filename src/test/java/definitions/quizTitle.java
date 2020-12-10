package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static support.TestContext.getDriver;

public class quizTitle {
    @And("I type title {string}")
    public void iTypeTitle(String title) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(title);
    }

//    @And("I click Add Question button")
//    public void iClickAddQuestionButton() {
//        getDriver().findElement(By.xpath("//span//mat-icon[@role = 'img']")).click();
//    }

    @When("I click {string} radio button")
    public void iClickRadioButton(String radioButtonTypeQuestion) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//div[contains(text(),'"+radioButtonTypeQuestion+"')]")).click();
    }


    @And("I type question {string}")
    public void iTypeQuestion(String question) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//textarea[@formcontrolname = 'question']")).sendKeys(question);
    }


    @And("I delete title")
    public void iDeleteTitle() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(Keys.chord(Keys.COMMAND, "a"));


        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(Keys.DELETE);
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(Keys.BACK_SPACE);

        Thread.sleep(2000);
    }
}
