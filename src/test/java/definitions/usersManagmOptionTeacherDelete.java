package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static support.TestContext.getDriver;

public class usersManagmOptionTeacherDelete {
    @And("I click Back to Login Page button")
    public void iClickBackToLoginPageButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Back to Login Page')]")).click();
    }

    @And("I select student {string} on Users Management page")
    public void iSelectStudentOnUsersManagementPage(String studentName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+studentName+"')]/..")).click();
        Thread.sleep(1000);
    }

    @And("I click Change User's Role")
    public void iClickChangeUserSRole() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[contains(.,' Role')]")).click();
        Thread.sleep(1000);
    }

    @And("I click on Change Role button")
    public void iClickOnChangeRoleButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change Role')]")).click();
        Thread.sleep(1000);
    }

    @And("I click on Delete User")
    public void iClickOnDeleteUser() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[contains(.,'Delete User')]")).click();
        Thread.sleep(1000);
    }

    @And("I click on Delete button")
    public void iClickOnDeleteButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Delete')]")).click();
        Thread.sleep(1000);
    }

    @Then("I delete Teacher {string}")
    public void iDeleteTeacher(String studentName) throws InterruptedException {
        String xpath = "//*[@class='mat-list-item-content']";
        String listOfTeachers = getDriver().findElement(By.xpath(xpath)).getText();
        System.out.println(listOfTeachers);
        assertThat(listOfTeachers.contains(studentName)).isFalse();
        Thread.sleep(2000);

    }
}
