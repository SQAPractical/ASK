package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class usersManagmStDelete {
    @And("I click on {string} on top menu")
    public void iClickOnOnTopMenu(String role) throws InterruptedException {
        getDriver().findElement(By.xpath("//div[contains(text(), '"+role+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on {string} from students list to delete")
    public void iClickOnFromStudentsListToDelete(String studentName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+studentName+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on options button")
    public void iClickOnOptionsButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button [@class = 'mat-raised-button mat-accent']")).click();
        Thread.sleep(2000);

    }

    @And("I click on delete icon")
    public void iClickOnDeleteIcon() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'delete')]")).click();
        Thread.sleep(2000);
    }

    @And("I click on delete for confirmation")
    public void iClickOnDeleteForConfirmation() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Delete')]")).click();
        Thread.sleep(2000);
    }

    @And("I confirm that student {string} is deleted")
    public void iConfirmThatStudentIsDeleted(String studentName) throws InterruptedException {
        String xpath = "//*[@class='mat-list-item-content']";
        String listOfStudents = getDriver().findElement(By.xpath(xpath)).getText();
        System.out.println(listOfStudents);
        assertThat(listOfStudents.contains(studentName)).isFalse();
        Thread.sleep(2000);
    }
}
