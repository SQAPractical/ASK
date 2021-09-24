package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class usersManagmStRole {
    @And("I click on {string} tab")
    public void iClickOnTab(String tabName) {
        getDriver().findElement(By.xpath("//div[contains(text(),'"+tabName+"')]")).click();
    }

    @And("I click on {string} name")
    public void iClickOnName(String userName) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(), '"+userName+"')]")).click();
    }


    @And("I click on Options")
    public void iClickOnOptions() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[@class='mat-button-wrapper']")).click();
    }

    @And("I click on Change User's Role")
    public void iClickOnChangeUserSRole() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//button[@class='mat-menu-item']/ ..//*[contains(text(), 'school')]")).click();
    }

    @And("I confirm Change role")
    public void iConfirmChangeRole() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(), 'Change Role')]")).click();
    }

    @And("I change back from student to teacher")
    public void iChangeBackFromStudentToTeacher() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(), 'Change Role')]")).click();
    }


    @Then("I verify that role is {string}")
    public void iVerifyThatRoleIs(String role) {
        assertThat(getDriver().findElement(By.xpath("//td[contains(text(), '"+role+"')]")).isDisplayed()).isTrue();
    }

}
