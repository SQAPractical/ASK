package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class def_3_3 {
    @And("I click Multiple-Choice radio-button for question {string}")
    public void iClickMultipleChoiceRadioButtonForQuestion(String numberOfQuestion) throws Throwable {
        Thread.sleep(2000);
        if (numberOfQuestion.equalsIgnoreCase("one")){
            getDriver().findElement(By.xpath("//*[contains(text(),'Q1:')]/../../..//*[contains(text(), 'Multiple')]/..//div[@class='mat-radio-outer-circle']")).click();
        }
        else if (numberOfQuestion.equalsIgnoreCase("two")){
            getDriver().findElement(By.xpath("//*[contains(text(),'Q2:')]/../../..//*[contains(text(), 'Multiple')]/..//div[@class='mat-radio-outer-circle']")).click();

        }
        else if (numberOfQuestion.equalsIgnoreCase("three")){
            getDriver().findElement(By.xpath("//*[contains(text(),'Q3:')]/../../..//*[contains(text(), 'Multiple')]/..//div[@class='mat-radio-outer-circle']")).click();
        }
        else if (numberOfQuestion.equalsIgnoreCase("four")){
            getDriver().findElement(By.xpath("//*[contains(text(),'Q4:')]/../../..//*[contains(text(), 'Multiple')]/..//div[@class='mat-radio-outer-circle']")).click();
        }
        else {
            System.out.println("Not supported");
        }

    }

    @And("I type text of question {string}")
    public void iTypeTextOfQuestion(String numberOFQuestion) throws Throwable {
        Thread.sleep(1000);
        if (numberOFQuestion.equalsIgnoreCase("one")){
            getDriver().findElement(By.xpath("//*[contains(text(),'Q1:')]/../../..//textarea[@placeholder=\"Question *\"]")).sendKeys("TEXT");
        }
        else {
            System.out.println("Not supported");
        }

    }
}
