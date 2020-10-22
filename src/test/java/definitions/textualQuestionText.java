package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class textualQuestionText {
    @Then("I click Textual check-box")
    public void iClickTextualCheckBox() { getDriver().findElement(By.xpath("//*[@id='mat-radio-2']")).click();
    }

    @And("I click delete button")
    public void iClickDeleteButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//div[@class='mat-expansion-panel-content ng-trigger ng-trigger-bodyExpansion mat-expanded']/div/div/div/button[2]")).click();
        Thread.sleep(3000);
    }

    @Then("I click delete on Conformation message")
    public void iClickDeleteOnConformationMessage() throws InterruptedException {
        getDriver().findElement(By.xpath("//body[1]/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-confirmation[1]/div[2]/button[2]/span[1]")).click();
        Thread.sleep(3000);
    }


    @And("should wait")
    public void shouldWait() throws InterruptedException {
        Thread.sleep(3000);
    }
}
