package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class AssignmentsPage {
    @And("I click on Create New Assignment button")
    public void iClickOnCreateNewAssignmentButton() {
        getDriver().findElement(By.xpath("//*[@class='mat-raised-button mat-primary']")).click();
    }

    @And("I select a student {string}")
    public void iSelectAStudent(String Student) {

    }

    @And("I click on Select Quiz To Assign")
    public void iClickOnSelectQuizToAssign() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]")).click();
    }

    @And("I select {string} quiz")
    public void iSelectQuiz(String AQuiz) {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+AQuiz+"')]")).click();
    }
}
