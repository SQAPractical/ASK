package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class Assignments {
    @Then("I click on Assignments")
    public void iClickOnAssignments() {

            getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]")).click();
        }

    @Then("I click Create New Assignment button")
    public void iClickCreateNewAssignmentButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();

    }

    @Then("List of Assignments appears")
    public void listOfAssignmentsAppears {
//        Thread.sleep(2000);
//        String actualText = getDriver().findElement(By.xpath("//*[contains(text(),'List of Assignments')]")).getText();
        assertThat(getDriver().findElements(By.xpath("//*[contains(text(),'List of Assignments')]"))).hasSize(1);

    }

    public void textAppears(String text) throws InterruptedException {
        Thread.sleep(2000);
        String actualText = getDriver().findElement(By.xpath("//*[contains(text(),'"+text+"')]")).getText();
        assertThat(actualText).containsIgnoringCase(text);

//      assertThat(getDriver().findElement(By.xpath("//p[contains(text(),'"+text+"')]")).isDisplayed()).isTrue();

    }




}

