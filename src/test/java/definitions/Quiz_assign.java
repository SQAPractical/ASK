package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

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

    @And("I click on student name")
    public void iClickOnStudentName() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//div[class='mat-list-text']//[contains(text(), 'Student API')]")).click();
    }
}
