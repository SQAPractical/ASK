
package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class homePageButtons {
    @And("I type an email {string}")
    public void iTypeAnEmail(String teachEmail) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(teachEmail);
    }

    @And("I click Home button")
    public void iClickHomeButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Home')]")).click();
    }

    @And("I click Go To Submissions button")
    public void iClickGoToSubmissionsButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Submissions')]")).click();
    }

    @And("I click Go To Assignments button")
    public void iClickGoToAssignmentsButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Assignments')]")).click();
    }

    @Then("{string} window appears")
    public void windowAppears(String window) throws InterruptedException {
        Thread.sleep(2000);
        WebElement element = getDriver().findElement(By.xpath("//*[contains(text(),'"+window+"')]"));
        assertThat(element.isDisplayed()).isTrue();
    }


    @And("I click Go To Users Managements button")
    public void iClickGoToUserSManagementsButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Go To Users Management')]")).click();
    }

    @Then("{string} screen appears")
    public void screenAppears(String screen) throws InterruptedException {
        Thread.sleep(2000);
        WebElement element = getDriver().findElement(By.xpath("//mat-card[@class='page mat-card']//*[contains(text(),'User')]"));
        assertThat(element.isDisplayed()).isTrue();
    }

    @And("I click Go to My Assignments button")
    public void iClickGoToMyAssignmentsButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Go To My Assignments')]")).click();

    }

    @And("I click Go To My Grades button")
    public void iClickGoToMyGradesButton() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Go To My Grades')]")).click();
    }
}