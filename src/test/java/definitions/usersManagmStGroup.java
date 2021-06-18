package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static java.lang.Thread.sleep;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class usersManagmStGroup {
    @And("I click on User's management on left navigation menu")
    public void iClickOnUserSManagementOnLeftNavigationMenu() throws InterruptedException {
        sleep(2000);
        getDriver().findElement(By.xpath("//h5[contains(text(),'Management')]")).click();
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);

    }

    @And("I click on student name {string}")
    public void iClickOnStudentName(String StudentName) throws InterruptedException {
        sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Mikhail Portnov')]")).click();
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);

    }

    @And("I click on Options button")
    public void iClickOnOptionsButton() throws InterruptedException {
        sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(.,'Options')]")).click();
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);

    }

    @And("I click on Change User's Group button")
    public void iClickOnChangeUserSGroup() {
        getDriver().findElement(By.xpath("//button[contains(.,'Group')]")).click();
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
    }

    @And("I delete text")
    public void iDeleteText() {
        getDriver().findElement(By.xpath("//input[@aria-required]")).clear();
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);

    }

    @And("I type {string}")
    public void iType(String GroupCode) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//input[@aria-required]")).sendKeys(GroupCode);

    }

    @And("I click on Change button")
    public void iClickOnChangeButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change')]")).click();
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);




    }

    @And("I click on Log Out button")
    public void iClickOnLogOutButton() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
    }

    @And("I confirm Log Out")
    public void iConfirmLogOut() {
        getDriver().findElement(By.xpath("//span[(text()='Log Out')]")).click();
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);

    }

    @Then("Element with text {string} displayed on home page")
    public void elementWithTextDisplayedOnHomePage(String element) {
        String elementOnHomePage = "//*[contains(text(),'Sign In')]";
        String xPath = "//*[contains(text(),'"+element+"')]";
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnHomePage)));
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
    }

    @And("I click on My Grades button")
    public void iClickOnMyGradesButton() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Grades')]")).click();
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);


    }

    @And("I click on Details button")
    public void iClickOnDetailsButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Details')]")).click();
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);

    }

    @Then("Element with text {string} is displayed on the left top of the page")
    public void elementWithTextIsDisplayedOnTheLeftTopOfThePage(String element) {
        String elementOnHomePage = "//*[contains(text(),'Group')]";
        String xPath = "//*[contains(text(),'"+element+"')]";
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(elementOnHomePage)));
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isTrue();
    }

    @Then("Error message {string} appears")
    public void errorMessageAppears(String expectedText) throws InterruptedException {
        Thread.sleep(2000);
        String xPath = "//*[contains(text(),'"+expectedText+"')]";
        WebElement textElement = getDriver().findElement(By.xpath(xPath));
        assertThat(textElement.isDisplayed()).isTrue();
    }

    @And("I click outside the group text field")
    public void iClickOutsideTheGroupTextField() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Change')]")).click();
    }

    @And("I click on Cancel button")
    public void iClickOnCancelButton() {
        getDriver().findElement(By.xpath("//*[contains(text(), 'Cancel')]")).click();
    }
}

