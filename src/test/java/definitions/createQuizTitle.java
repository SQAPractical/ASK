package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static support.TestContext.getDriver;

public class createQuizTitle {
    @And("I click on Title of quiz")
    public void iClickOnTitleOfQuiz() {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).click();
    }

    @And("I delete Quiz title")
    public void iDeleteQuizTitle() {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(Keys.chord(Keys.CONTROL, "a"));
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(Keys.chord(Keys.COMMAND, "a"));
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(Keys.DELETE);
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(Keys.BACK_SPACE);
    }

//    @And("I click outside of quiz title field")
//    public void iClickOutsideOfQuizTitleField() throws InterruptedException {
//        Thread.sleep(2000);
//        getDriver().findElement(By.xpath("//div[contains(text(),'Environment: STAGING')]")).click();
//    }
}
