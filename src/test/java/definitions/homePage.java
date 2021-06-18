package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class homePage {
    @And("I click on Go To My Assignments button")
    public void iClickOnGoToMyAssignmentsButton() { getDriver().findElement(By.xpath("//span[contains(.,'Assignments')]")).click();
    }

    @Then("Button with text {string} is displayed on home page")
    public void elementWithTextIsDisplayedOnHomePage(String element) {
        String elementOnHomePage = "//span[contains(.,'Assignments')]";
        String xPath = "//*[contains(text(),'"+element+"')]";

        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnHomePage)));
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();}


    @And("I click on Go To My Grades button")
    public void iClickOnGoToMyGradesButton() {
        getDriver().findElement(By.xpath("//button[contains(span,'Go To My Grades')]")).click();
    }

    @And("I click on Submissions button")
    public void iClickOnSubmissionsButton() {
        getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav[1]/ac-side-menu[1]/mat-list[1]/a[2]/div[1]/div[2]/h5[1]")).click();

    }

    @Then("Submissions page is displayed")
    public void submissionsPageIsDisplayed() {
        getDriver().findElement(By.xpath("//h4[contains(text(),'Submissions')]")) ;
    }

    @And("I click on Assignment button")
    public void iClickOnAssignmentButton() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]")).click();
    }

    @Then("Assignments page is displayed")
    public void assignmentsPageIsDisplayed() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]"));
    }

    @And("I click on Go To User's Management button")
    public void iClickOnGoToUserSManagementButton() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Management')]")).click();
    }

    @Then("Users Management page is displayed")
    public void usersManagementPageIsDisplayed() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Management')]"));

    }

    @And("I click on My Assignments button")
    public void iClickOnMyAssignmentsButton() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Assignments')]")).click();

    }

    @Then("button My Assignments is displayed on home page")
    public void buttonMyAssignmentsIsDisplayedOnHomePage() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Assignments')]"));
    }
}

