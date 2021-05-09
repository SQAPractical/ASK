package definitions;

import cucumber.api.java.en.And;
import org.assertj.core.api.Assertions;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class AssignmentsPage {
    @And("I click on Create New Assignment button")
    public void iClickOnCreateNewAssignmentButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@class='mat-raised-button mat-primary']")).click();
        Thread.sleep(1000);
    }

    @And("I click on Select Quiz To Assign")
    public void iClickOnSelectQuizToAssign() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]")).click();
        Thread.sleep(1000);
    }

    @And("I select {string} quiz")
    public void iSelectQuiz(String AQuiz) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+AQuiz+"')]")).click();
        Thread.sleep(1000);
    }

    @And("I select a student {string}")
    public void iSelectAStudent(String Student) throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='mat-list-text'][contains(.,'"+Student+"')]")).click();
        Thread.sleep(1000);
    }

    @And("I click Give Assignment button")
    public void iClickGiveAssignmentButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on a new Assignment")
    public void iClickOnANewAssignment() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Quiz: Test_2')]")).click();
        Thread.sleep(1000);
    }

    @And("I verify that a {string} present there")
    public void iVerifyThatAPresentThere(String Student) throws InterruptedException {
        String result = getDriver().findElement(By.xpath("//td[contains(text(),'"+Student+"')]")).getText();
        System.out.println("Text from element: " + result);
        Assertions.assertThat(result).contains(Student);
        Thread.sleep(1000);
    }

    @And("I delete the assignment")
    public void iDeleteTheAssignment() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Quiz: Test_2')]//..//*[contains(text(),'more_vert')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Delete Assignment')]")).click();
        Thread.sleep(1000);
        getDriver().switchTo().activeElement().click();
        String del = getDriver().findElement(By.xpath("//span[contains(text(),'Delete')]")).getText();
        System.out.println(del);
        getDriver().findElement(By.xpath("//body/div[2]/div[3]/div[1]/mat-dialog-container[1]/ac-modal-confirmation[1]/div[2]/button[2]")).click();
    }
}
