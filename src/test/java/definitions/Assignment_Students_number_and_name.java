package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class Assignment_Students_number_and_name {
    @And("I click Assignments button")
    public void iClickAssignmentsButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Assignments')]")).click();
    }

    @And("I click Create New Assignment button")
    public void iClickCreateNewAssignmentButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Assignment')]")).click();
    }

    @And("I click Select Quiz To Assign drop-down menu")
    public void iClickSelectQuizToAssignDropDownMenu() {
        getDriver().findElement(By.xpath("//mat-select[@id='mat-select-1']")).click();
    }

    @And("I click on {string} from drop-down menu")
    public void iClickOnFromDropDownMenu(String arg0) throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'"+arg0+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I choose one student {string} from list of students")
    public void iChooseOneStudentFromListOfStudents(String arg0) {
        getDriver().findElement(By.xpath("//body//mat-list-option[34]")).click();
    }

    @And("I click on {string} button")
    public void iClickOnButton(String arg0) {
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]")).click();
    }

    @Then("new assignment {string} appears on the top of the list")
    public void newAssignmentAppearsOnTheTopOfTheList(String arg0) throws InterruptedException {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'Capitals')]")).isDisplayed()).isTrue();
        Thread.sleep(2000);
    }

    @And("I click on {string}")
    public void iClickOn(String arg0) throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Quiz: Capitals')]")).click();
        Thread.sleep(2000);
    }

    @Then("{string} should be present on Capitals assignment")
    public void shouldBePresentOnCapitalsAssignment(String text) {
        assertThat(getDriver().findElement(By.xpath("//td[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();
    }

    @And("I choose second student {string} from list of students")
    public void iChooseSecondStudentFromListOfStudents(String arg0) {
        getDriver().findElement(By.xpath("//body//mat-list-option[18]")).click();
    }

    @And("I choose third student {string} from list of students")
    public void iChooseThirdStudentFromListOfStudents(String arg0) {
        getDriver().findElement(By.xpath("//body//mat-list-option[19]")).click();
    }
}
