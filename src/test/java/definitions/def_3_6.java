package definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import java.sql.SQLOutput;

import static org.assertj.core.api.Assertions.assertThat;

import static support.TestContext.getDriver;

public class def_3_6 {
    @When("^I select textual type of Question \"([^\"]*)\"$")
    public void iSelectTextualTypeOfQuestion(String NumberOfQuestion) throws Throwable {
        Thread.sleep(2000);
        if (NumberOfQuestion.equalsIgnoreCase("one")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1')]/../../..//div[contains(text(),'Textual')]")).click();
        } else if (NumberOfQuestion.equalsIgnoreCase("two")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q2')]/../../..//div[contains(text(),'Textual')]")).click();
        } else if (NumberOfQuestion.equalsIgnoreCase("three")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q3')]/../../..//div[contains(text(),'Textual')]")).click();
        } else {
            System.out.println("not implemented");
        }
    }


    @Then("^I type text of question \"([^\"]*)\" for question \"([^\"]*)\"$")
    public void iTypeTextOfQuestionForQuestion(String text, String NumberofQuestion) throws Throwable {
        Thread.sleep(2000);
        if (NumberofQuestion.equalsIgnoreCase("one")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1')]/../../..//textarea")).sendKeys(text);
        } else if (NumberofQuestion.equalsIgnoreCase("two")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q2')]/../../..//textarea")).sendKeys(text);
        }
        else if (NumberofQuestion.equalsIgnoreCase("three")) {
            getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q3')]/../../..//textarea")).sendKeys(text);
        }
        else {
            System.out.println("not implemented");
        }
    }
}
