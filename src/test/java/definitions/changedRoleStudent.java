package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class changedRoleStudent {
    @And("I click on Student button")
    public void iClickOnStudentButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(),'Students')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Student Name {string}")
    public void iClickOnStudentName(String studentName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+studentName+"')]")).click();
        Thread.sleep(2000);
    }

    @Then("text {string} appears in Teacher list")
    public void textAppearsInTeacherList(String studentName) {
        String listOfTeachers = getDriver().findElement(By.xpath("//mat-list[@_ngcontent-c24][@class=\"mat-list\"]")).getText();
        System.out.println(listOfTeachers);
        assertThat(listOfTeachers.contains(studentName)).isTrue();
        System.out.println("Student present in list of teachers");

    }

    @And("I refresh page")
    public void iRefreshPage() {
        getDriver().navigate().refresh();
    }

}
