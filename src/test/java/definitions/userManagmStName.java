package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import static support.TestContext.getDriver;

public class userManagmStName {
    private String typeName;

    @And("I click on User's management tab on the left side menu")
    public void iClickOnUserSManagementTabOnTheLeftSideMenu()  {
        getDriver().findElement(By.xpath("//h5[contains(text(),\"Management\")]")).click();

    }

    @And("I type new  name {string}")
    public void iTypeNewName(String newName)  {
        getDriver().findElement(By.xpath("//input[@id='mat-input-2']")).sendKeys(newName);
    }

    @And("I choose Student from the list")
    public void iChooseStudentFromTheList() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-tab-body/div[1]/ac-users-list[1]/mat-list[1]/a[2]/mat-list-item[1]/div[1]/div[2]")).click();
        Thread.sleep(1000);
    }

    @And("I click Option button")
    public void iClickOptionButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-user-details-page[1]/mat-card[1]/div[2]/div[2]/button[1]")).click();
        Thread.sleep(1000);
    }

    @And("I click Change User's name option")
    public void iClickChangeUserSNameOption() {
        getDriver().findElement(By.xpath("//body/div[2]/div[2]/div[1]/div[1]/button[1]")).click();
    }

    @And("I delete user name")
    public void iDeleteUserName() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder=\"New User's Name\"]")).sendKeys(Keys.chord(Keys.COMMAND, "a"));
        getDriver().findElement(By.xpath("//*[@placeholder=\"New User's Name\"]")).sendKeys(Keys.DELETE);

        Thread.sleep(2000);
    }

    @And("I type new student name {string}")
    public void iTypeNewStudentName(String newName)
    {
        getDriver().findElement(By.xpath("//*[@placeholder=\"New User's Name\"]")).sendKeys(newName);
    }

    @And("I click on Change button")
    public void iClickOnChangeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Change')]")).click();
        Thread.sleep(1000);
    }

    @And("I choose Student {string}from the list")
    public void iChooseStudentFromTheList(String studName) {
        getDriver().findElement(By.xpath("//mat-tab-body/div[1]/ac-users-list[1]/mat-list[1]/a[30]/mat-list-item[1]/div[1]/div[2]/h4[1]")).click();
    }
}
