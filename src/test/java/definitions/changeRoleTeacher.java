//Created by Elena
package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class changeRoleTeacher {

    @Given("I open {string} a page")
    public void iOpenPage(String url) {
        if (url.equalsIgnoreCase("login")) {
            getDriver().get("http://ask-stage.portnov.com/#/login");
        } else if (url.equalsIgnoreCase("registration")) {
            getDriver().get("http://ask-stage.portnov.com/#/registration");
        }
    }
    @And("I click on teachers button")
    public void iClickOnTeachersButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
        Thread.sleep(2000);
    }

    @Then("I click to teachers Name {string}")
    public void iClickToString(String teacherName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+teacherName+"')]")).click();
        Thread.sleep(2000);

    }

    @And("I click on the option button")
    public void iClickOnTheOptionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-accent']")).click();
        Thread.sleep(4000);
    }


    @Then("I click on Change User's Role button")
    public void iClickOnChangeUserSRoleButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[contains(normalize-space(),\"Change User's Role\")]")).click();
        Thread.sleep(3000);
    }

    @Then("I click Change role confirmation button")
    public void iClickChangeRoleConfirmationButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(normalize-space(),'Change Role')]")).click();
        Thread.sleep(3000);
    }


    @And("I Click on User's Management button")
    public void iClickOnUserSManagementButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(normalize-space(),\"User's Management\")]")).click();
        Thread.sleep(3000);
    }

    @Then("text {string} appears in Student list")
    public void textAppearsAtStudentList(String studentName) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+studentName+"')]")).isDisplayed()).isTrue();
        System.out.println(studentName + "appears in the Student list");
    }


}
