package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class quizTotalQuestions {

    @And("I type Title Of The Quiz {string}")
    public void iTypeTitleOfTheQuiz(String Test0001) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).click();
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(Test0001);
    }
}
