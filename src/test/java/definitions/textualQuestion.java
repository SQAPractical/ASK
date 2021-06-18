package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class textualQuestion {
    @And("I click on Quizzes button")
    public void iClickOnQuizzesButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Create New  Quiz button")
    public void iClickOnCreateNewQuizButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
    }

    @And("I type Title {string}")
    public void iTypeTitle(String title) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='group']")).sendKeys(title);
    }
}
