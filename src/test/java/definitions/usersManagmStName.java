package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class usersManagmStName {

    @And("I click on User's Management button")
    public void iClickOnUserSManagementButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@href ='/#/users-management']")).click();
        Thread.sleep(2000);
    }

    @Then("I click on Students button")
    public void iClickOnStudentsButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(),'Students')]")).click();
        Thread.sleep(2000);
    }


    @And("I click on button Options")
    public void iClickOnButtonOptions() {
        getDriver().findElement(By.xpath("//span[@class ='mat-button-wrapper']")).click();
    }
    @Then("drop-down list appears")
    public void dropDownListAppears() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class ='mat-menu-content ng-trigger ng-trigger-fadeInItems']"));
        Thread.sleep(2000);
    }

    @And("I click on Change User's Name button")
    public void iClickOnChangeUserSNameButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//body/div[2]/div[2]/div[1]/div[1]/button[1]")).click();
        Thread.sleep(2000);
    }

    @And("I delete previous name")
    public void iDeletePreviousName() {
        getDriver().findElement(By.xpath("//input[@formcontrolname ='name']")).clear();
    }

    @And("I type new name {string}")
    public void iTypeNewName(String newname) {
        getDriver().findElement(By.xpath("//input[@aria-required ='true']")).sendKeys(newname);
    }

    @And("I click on Change button")
    public void iClickOnChangeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change')]")).click();
        Thread.sleep(2000);
    }

    @Then("message {string} appears")
    public void messageAppears(String message) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+message+"')]")).isDisplayed()).isTrue();
    }

    @Then("Full name of the student was changed")
    public void fullNameOfTheStudentWasChanged() {
        assertThat(getDriver().findElement(By.xpath("//main[@class ='ng-tns-c0-0']")).isDisplayed()).isTrue();
    }

    @And("I click on student with name I I")
    public void iClickOnStudentWithNameII() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[text()='A B']/..")).click();
        Thread.sleep(2000);
    }

    @And("I click on student with name A B")
    public void iClickOnStudentWithNameAB() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[text()='A B']/..")).click();
        Thread.sleep(2000);
    }

}
