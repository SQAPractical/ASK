package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class homePageButtons {

    @And("I click Go To My Assignments button")
    public void iClickGoToMyAssignmentsButton()  {
        getDriver().findElement(By.xpath("//span[contains(text(),'Go To My Assignments')]")).click();
    }

    @Then("My Assignments are present on the page")
    public void myAssignmentsArePresentOnThePage() throws InterruptedException {

        String textFromElement = getDriver().findElement(By.xpath("//h4[contains(text(),'My Assignments')]")).getText();
        System.out.println(textFromElement);
        Thread.sleep(2000);
        assertThat(textFromElement.contains("My Assignments")).isTrue();
    }


    @And("I click on Go To My Grades button")
    public void iClickOnGoToMyGradesButton()  {
        getDriver().findElement(By.xpath("//span[contains(text(),'Go To My Grades')]")).click();
    }

    @Then("My Grades are present on the page")
    public void myGradesArePresentOnThePage() throws InterruptedException {

        String textFromElement = getDriver().findElement(By.xpath("//h4[contains(text(),'My Grades')]")).getText();
        System.out.println(textFromElement);
        Thread.sleep(2000);
        assertThat(textFromElement.contains("My Grades")).isTrue();
    }


    @And("I click on  Go To My Submissions button")
    public void iClickOnGoToMySubmissionsButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Go To Submissions')]")).click();
    }

    @Then("Submissions are present on the page")
    public void submissionsArePresentOnThePage() throws InterruptedException {
        String textFromElement = getDriver().findElement(By.xpath("//h4[contains(text(),'Submissions')]")).getText();
        System.out.println(textFromElement);
        Thread.sleep(2000);
        assertThat(textFromElement.contains("Submissions")).isTrue();
    }


    @And("I click on  Go To Assignments button")
    public void iClickOnGoToAssignmentsButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Go To Assignments')]")).click();
    }

    @Then("List of Assignments are present on the page")
    public void listOfAssignmentsArePresentOnThePage() throws InterruptedException {
        String textFromElement = getDriver().findElement(By.xpath("//h4[contains(text(),'List of Assignments')]")).getText();
        System.out.println(textFromElement);
        Thread.sleep(2000);
        assertThat(textFromElement.contains("List of Assignments")).isTrue();
    }


    @And("I click on Go To Users Management button")
    public void iClickOnGoToUsersManagementButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Go To Users Management')]")).click();
    }

    @Then("User's Management is present on the page")
    public void userSManagementIsPresentOnThePage() throws InterruptedException {

        String xpath = ("//h4[contains(text(),'Management')]");
        WebElement element = getDriver().findElement(By.xpath(xpath));
        Thread.sleep(2000);
        assertThat(element.isDisplayed()).isTrue();

//        String textFromElement = getDriver().findElement(By.xpath("//h4[contains(text(),'User\"'s\"Management')]")).getText();
//        System.out.println(textFromElement);
//        Thread.sleep(2000);
//        assertThat(textFromElement.contains("List of Assignments")).isTrue();


    }
}
