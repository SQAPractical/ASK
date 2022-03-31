package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import static support.TestContext.getDriver;

public class usersManagementStGroup
{
    @And("I click {string} tab")
    public void iClickTab(String tab)
    {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+tab+"')]")).click();
    }

    @And("I click {string} student with {string} group")
    public void iSelectStudentWithGroup(String studentName, String group)
    {
        getDriver().findElement(By.xpath("//h4[contains(text(),'"+studentName+"')]/..//h6[text()='Group: "+group+"']")).click();
    }

    @And("I click OPTIONS button")
    public void iClickOptionsButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(.,'Options')]")).click();
        Thread.sleep(2000);
    }

    @And("I click Change User's {string} from a drop-down menu")
    public void iSelectChangeUserSFromADropDownMenu(String menuItem) throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@role='menuitem']//mat-icon[contains(text(),'"+menuItem+"')]")).click();
        Thread.sleep(2000);
    }

    @And("I clear {string} input field")
    public void iClearInputField(String group) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[contains(@placeholder,'"+group+"')]")).sendKeys(Keys.chord(Keys.CONTROL, "a"));
        getDriver().findElement(By.xpath("//input[contains(@placeholder,'"+group+"')]")).sendKeys(Keys.chord(Keys.COMMAND, "a"));
        getDriver().findElement(By.xpath("//input[contains(@placeholder,'"+group+"')]")).sendKeys(Keys.DELETE);
        getDriver().findElement(By.xpath("//input[contains(@placeholder,'"+group+"')]")).sendKeys(Keys.BACK_SPACE);
//        getDriver().findElement(By.xpath("//span[contains(.,'Change')]")).click();
        Thread.sleep(2000);
    }

    @And("I type new group {string} into group field")
    public void iTypeNewGroupIntoGroupField(String newGroup) throws InterruptedException {
        getDriver().findElement(By.xpath("//input[contains(@placeholder,'Group')]")).sendKeys(newGroup);
        Thread.sleep(1000);
    }

    @And("I click elsewhere")
    public void iClickElsewhere()
    {
        //how can I simulate a click of a mouse button w/o actually clicking on anything
        //action.click(elementToClick).build().perform();
        getDriver().findElement(By.xpath("//mat-dialog-container")).click();
    }

    @And("I click Change button")
    public void iClickChangeButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button/span[text()='Change']")).click();
        Thread.sleep(1000);
    }
}
