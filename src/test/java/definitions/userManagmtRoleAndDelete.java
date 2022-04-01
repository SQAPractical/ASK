package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class userManagmtRoleAndDelete {

    @And("I click on {string} on left side menu")
    public void iClickOnOnLeftSideMenu(String mainMenuItem) {
        getDriver().findElement(By.xpath("//h5[contains(text(),'" + mainMenuItem + "')]")).click();
    }
    @And("I click on username {string}")
    public void iClickOnUsername(String name) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[text()[contains(.,'"+name+"')]]")).click();
        Thread.sleep(2000);
    }

    @And("I click on Options button on right side")
    public void iClickOnOptionsButtonOnRightSide() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(.,'Options')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on change role")
    public void iClickOnChangeRole() throws InterruptedException {
        getDriver().findElement(By.xpath("//div//button[contains(.,'Role')]")).click();
        Thread.sleep(2000);
    }

    @Then("User {string} is not present on list of users")
    public void userIsNotPresentOnListOfUsers(String userName) {
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
        String listOfTeachers = getDriver().findElement(By.xpath("//mat-tab-group")).getText();
        System.out.println(listOfTeachers);

        assertThat(listOfTeachers.contains(userName)).isFalse();
    }

    @And("I click on Delete User button")
    public void iClickOnDeleteUserButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div//button[contains(.,'Delete')]")).click();
        Thread.sleep(2000);
    }

//    @And("I click on {string} button")
//    public void iClickOnButton(String userRole) throws InterruptedException {
//        getDriver().findElement(By.xpath("//div//button[contains(.,'"+userRole+"')]")).click();
//        Thread.sleep(2000);
//    }



}