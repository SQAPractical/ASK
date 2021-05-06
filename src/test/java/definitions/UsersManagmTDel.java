package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static java.lang.Thread.sleep;
import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class UsersManagmTDel {
    @And("I click on User's Management button")
    public void iClickOnUserSManagementButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[normalize-space()=\"User's Management\"]")).click();
        sleep(6000);
    }

    @And("click on Options button")
    public void clickOnOptionsButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-accent']")).click();
        sleep(6000);
    }

    @And("click on Change User's Roll")
    public void clickOnChangeUserSRoll() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[2]")).click();
        sleep(6000);
    }

    @And("click on Change Role button")
    public void clickOnChangeRoleButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[normalize-space()='Change Role']")).click();
        sleep(6000);
    }

    @And("click on Delete User button")
    public void clickOnDeleteUserButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[3]")).click();
        sleep(6000);

    }

    @Then("account Elis Fox can't be found in the Teachers list")
    public void accountElisFoxCanTBeFoundInTheTeachersList() throws InterruptedException {
        Thread.sleep(2000);
        String Msg = "Elis Fox";
        String xPath = "//*[contains(text(),'" + Msg + "')]";
        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isFalse();
    }

    @And("click on Teachers button")
    public void clickOnTeachersButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
        sleep(6000);
    }

    @And("I click on Elis Fox")
    public void iClickOnElisFox() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[normalize-space()='Elis Fox']")).click();
        sleep(6000);
    }

    @And("click on Delete button")
    public void clickOnDeleteButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-warn']")).click();
        sleep(6000);
    }

    @And("I verify that there is no teacher {string}")
    public void iVerifyThatThereIsNoTeacher(String TeacherName) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().navigate().refresh();
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
        String listOfTeachers = getDriver().findElement(By.xpath("//*[@class='mat-tab-body-wrapper']")).getText();

        System.out.println(listOfTeachers);
        assertThat(listOfTeachers).doesNotContain(TeacherName);
//        Thread.sleep(2000);
//        String xPath = "//*[contains(text(),'" + TeacherName + "')]";
//        assertThat(getDriver().findElement(By.xpath(xPath)).isDisplayed()).isFalse();
    }
}
