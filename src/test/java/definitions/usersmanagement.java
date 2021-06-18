package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class usersmanagement {
    @And("I click on User's management option")
    public void iClickOnUserSManagementOption() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//a[@href='/#/users-management']//div[@class='mat-list-item-content']")).click();
    }

    @And("I click on David Davidov student's name")
    public void iClickOnDavidDavidovStudentSName() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@class='mat-list-item mat-2-line']/..//*[contains(text(),'David Davidov ')]")).click();
    }


    @And("I click on Option button")
    public void iClickOnOptionButton() {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-accent']")).click();
    }

    @And("I click on Change User's Role button")
    public void iClickOnChangeUserSRoleButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//button[contains(.,'Role')]")).click();
    }

    @And("I click Change Role button")
    public void iClickChangeRoleButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//button[contains(.,'Change Role')]")).click();
    }


    @And("I click on Log out button")
    public void iClickOnLogOutButton() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//div[@class='mat-list-item-content'][contains(.,'Log Out')]")).click();
    }

    @And("I click on Log Out button in Confirmation window")
    public void iClickOnLogOutButtonInConfirmationWindow() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//button[@class='mat-button mat-warn'][contains(.,'Log Out')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on label Teachers")
    public void iClickOnLabelTeachers() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//div[contains(text(),'Teachers')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on David Davidov name")
    public void iClickOnDavidDavidovName() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@class='mat-list-item-content'][contains(.,'David Davidov ')]")).click();
    }
}