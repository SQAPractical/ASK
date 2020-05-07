package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.assertj.core.api.AbstractCharSequenceAssert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.assertThat;



public class Quiz_assign {
    @And("click on Assignments on left menu")
    public void clickOnAssignmentsOnLeftMenu() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]")).click();
    }

    @Then("click on Create New Assignment")
    public void clickOnCreateNewAssignment() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();
    }

    @And("I click on select quiz")
    public void iClickOnSelectQuiz() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]/..")).click();
    }

    @And("I click on Quiz name")
    public void iClickOnQuizName() throws InterruptedException {
        try {
            Thread.sleep(5000);
        } catch (InterruptedException ie) {
//        getDriver().findElement(By.xpath("//span[contains(text(),'Quiz name')]/../..")).click();
            getDriver().findElement(By.xpath("//mat-option[1]//span[712]")).click();
            Thread.sleep(5000);

        }
    }


    @Then("I click select students")
    public void iClickSelectStudents() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Select All']")).click();
    }

    @And("I click on Select All")
    public void iClickOnSelectAll() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-accent']//span[contains(text(),'Select All')]")).click();
    }
}





   


