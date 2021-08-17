package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class usersManagementOptionsInStudentsAccount {
    /*@And("I select student {string} from list of students")
    public void iSelectStudentFromListOfStudents(String studentName) {
        String xPath = "//*[contains(text(),'"+studentName+"')]/../..";
        getDriver().findElement(By.xpath(xPath)).click();
    }*/


    @And("I click on Options button")
    public void iClickOnOptionsButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'settings')]/../..//span[@class='mat-button-wrapper']/..")).click();
        Thread.sleep(2000);
    }

    @And("I click on menu item Change Users Name from dropdown list")
    public void iClickOnMenuItemChangeUsersNameFromDropdownList() {
        String xPath = "//div[contains(@class,'mat-menu-ripple')]/..//mat-icon[contains(text(),'edit')]";
        getDriver().findElement(By.xpath(xPath)).click();
    }

    @And("I type text {string} in New User Name field")
    public void iTypeTextInNewUserField(String newUsersName) throws InterruptedException {
        String xPath = "//*[@formcontrolname='name']";
        getDriver().findElement(By.xpath(xPath)).clear();
        getDriver().findElement(By.xpath(xPath)).sendKeys(newUsersName);
        Thread.sleep(2000);
    }

    @And("I click {string} button in pop up window")
    public void iClickButtonInPopUpWindow(String popUpButton) throws InterruptedException {
        String xPath = "//span[contains(text(),'"+popUpButton+"')]/..";
        getDriver().findElement(By.xpath(xPath)).click();
        Thread.sleep(2000);
    }

    @Then("{string} is displayed in top left corner")
    public void isDisplayedInTopLeftCorner(String newStudInfo) {
        String xPath = "//*[contains(text(),'"+newStudInfo+"')]";
        getDriver().findElement(By.xpath(xPath)).isDisplayed();
    }

    @And("{string} button in pop up window is disabled")
    public void buttonInPopUpWindowIsDisabled(String popUpButton) {
        String xPath = "//span[contains(text(),'"+popUpButton+"')]/..";
        WebElement elementButton = getDriver().findElement(By.xpath(xPath));
        assertThat(elementButton.isEnabled()).isFalse();
    }

    @And("I click on menu item Change Users Role from dropdown list")
    public void iClickOnMenuItemChangeUsersRoleFromDropdownList() {
        getDriver().findElement(By.xpath("//div[contains(@class,'mat-menu-ripple')]/..//mat-icon[contains(text(),'school')]")).click();

    }

    @And("I type text {string} in New Users Group field")
    public void iTypeTextInNewUsersGroupField(String newUsersGroup) throws InterruptedException {
        String xPath = "//*[@formcontrolname='name']";
        getDriver().findElement(By.xpath(xPath)).clear();
        getDriver().findElement(By.xpath(xPath)).sendKeys(newUsersGroup);
        Thread.sleep(2000);
    }

    @And("I click on menu item Change Users Group from dropdown list")
    public void iClickOnMenuItemChangeUsersGroupFromDropdownList() {
        getDriver().findElement(By.xpath("//div[contains(@class,'mat-menu-ripple')]/..//mat-icon[contains(text(),'group')]")).click();

    }

    @Then("Group name {string} is displayed")
    public void groupNameIsDisplayed( String groupName) {
        getDriver().findElement(By.xpath("//td[contains(text(),'Group')]/../*[contains(text(),'"+groupName+"')]/..")).isDisplayed();
    }

    @And("I clear New Users Group field")
    public void iClearNewUsersGroupField() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(Keys.chord(Keys.COMMAND,"a"));
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(Keys.BACK_SPACE);
        Thread.sleep(2000);
    }

    @And("I click on Teacher tab")
    public void iClickOnTeacherTab() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();

    }

    @And("I select {string} from list of {string}")
    public void iSelectFromListOf(String name, String role) throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(),'"+role+"')]")).click();
        Thread.sleep(3000);
        getDriver().findElement(By.xpath("//*[contains(text(),'"+name+"')]")).click();
    }

    @And("I click on menu item Delete User from dropdown list")
    public void iClickOnMenuItemDeleteUserFromDropdownList() {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'delete')]/..")).click();
    }
}
