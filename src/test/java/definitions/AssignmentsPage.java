package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class AssignmentsPage {
    @And("I click on Create New Assignment button")
    public void iClickOnCreateNewAssignmentButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(2000);
    }

    @And("I click on Select Quiz To Assign")
    public void iClickOnSelectQuizToAssign() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]")).click();
        Thread.sleep(2000);
    }

    @And("I select {string} quiz")
    public void iSelectQuiz(String AQuiz) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+AQuiz+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I select a student {string}")
    public void iSelectAStudent(String Student) throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='mat-list-text'][contains(.,'"+Student+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Give Assignment button")
    public void iClickGiveAssignmentButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on a new Assignment")
    public void iClickOnANewAssignment() {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Quiz: Test_2')]")).click();
    }

    @And("I verify that a {string} present there")
    public void iVerifyThatAPresentThere(String Student) {
        assertThat(getDriver().findElement(By.xpath("//td[contains(text(),'"+Student+"')]")).isDisplayed()).isTrue();
    }

    @And("I delete the assignment")
    public void iDeleteTheAssignment() {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Quiz: Test_2')]//..//*[contains(text(),'more_vert')]")).click();
        getDriver().findElement(By.xpath("//span[contains(text(),'Delete Assignment')]")).click();
        getDriver().findElement(By.xpath("//span[contains(text(),'Delete')]")).click();
    }
}
