package definitions;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import static org.assertj.core.api.Assertions.assertThat;

import static support.TestContext.getDriver;

public class def_3_10 {
    @Given("^I navigate to \"([^\"]*)\" page$")
    public void iNavigateToPage(String page) throws Throwable {
        if (page.equalsIgnoreCase("login")) {
            getDriver().get("http://ask-stage.portnov.com/#/login");
        } else if (page.equalsIgnoreCase("registration")) {
            getDriver().get("http://ask-stage.portnov.com/#/registration");
        } else {
            throw new RuntimeException("Not supported " + page);
        }
    }

    @When("^I type email \"([^\"]*)\" on \"([^\"]*)\" page$")
    public void iTypeEmailOnPage(String email, String page) throws Throwable {
        if (page.equalsIgnoreCase("login")) {
            getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(email);
        } else if (page.equalsIgnoreCase("registration")) {
            getDriver().findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
        } else {
            throw new RuntimeException("Not supported " + page);
        }
    }

    @And("^I type password \"([^\"]*)\" on \"([^\"]*)\" page$")
    public void iTypePasswordOnPage(String pass, String page) throws Throwable {
        if (page.equalsIgnoreCase("login")) {
            getDriver().findElement(By.xpath("//input[@placeholder='Password *']")).sendKeys(pass);
        } else if (page.equalsIgnoreCase("registration")) {
            getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(pass);
        } else {
            throw new RuntimeException("Not supported " + page);
        }
    }

    @And("^I click Sign in button$")
    public void iClickSignInButton() throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(),'Sign In')]")).click();
        Thread.sleep(1000);
    }

    @When("^I click on \"([^\"]*)\" on left menu$")
    public void iClickOnOnLeftMenu(String menuItem) throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+ menuItem +"')]")).click();

        Thread.sleep(1000);

    }

    @When("^I click create new quiz button$")
    public void iClickCreateNewQuizButton() throws Throwable {
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(1000);

    }

    @When("^I type title of the quiz \"([^\"]*)\"$")
    public void iTypeTitleOfTheQuiz(String title) throws Throwable {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(title);
        Thread.sleep(1000);

    }

    @And("^I click on Add question button$")
    public void iClickOnAddQuestionButton() throws Throwable {
        getDriver().findElement(By.xpath("//*[contains(text(), 'add_circle')]")).click();
    }

    @When("^I select textual type of Question$")
    public void iSelectTextualTypeOfQuestion() throws Throwable {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1')]/../../..//div[contains(text(),'Textual')]")).click();
    }

    @Then("^I type text of question \"([^\"]*)\"$")
    public void iTypeTextOfQuestion(String text) throws Throwable {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1')]/../../..//textarea")).sendKeys(text);
        Thread.sleep(2000);

    }

    @And("^I save the quiz$")
    public void iSaveTheQuiz() throws Throwable  {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
//        getDriver().findElement(By.xpath("//span[contains(text(),'Discard')]")).click();

    }


    @And("^click on Create New Assignment button$")
    public void clickOnCreateNewAssignmentButton() throws Throwable {
        Thread.sleep(4000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();
    }

    @Then("^I select quiz \"([^\"]*)\"$")
    public void iSelectQuiz(String Quiz) throws Throwable {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//mat-select[@aria-label='Select Quiz To Assign']")).click();
        getDriver().findElement(By.xpath("//*[contains(text(), '"+Quiz+"')]")).click();
        Thread.sleep(2000);
    }

    @Then("^I select student \"([^\"]*)\"$")
    public void iSelectStudent(String name) throws Throwable {
        getDriver().findElement(By.xpath("//div[@class= 'mat-list-text'][contains(.,'"+name+ "')]/..//mat-pseudo-checkbox")).click();
        Thread.sleep(2000);
    }

    @Then("^I click Give assignment button$")
    public void iClickGiveAssignmentButton() throws Throwable {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
        Thread.sleep(2000);
        getDriver().navigate().refresh();
    }
}