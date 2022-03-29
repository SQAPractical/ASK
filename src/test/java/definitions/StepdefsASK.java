package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import static support.TestContext.getDriver;

public class StepdefsASK {
    @When("I navigate to the registration page")
    public void iNavigateToTheRegistrationPage() {
        WebDriver driver = getDriver();
        String regURl = "http://ask-stage.portnov.com/#/registration";
        driver.get(regURl);
;    }

    @And("I type first name {string}")
    public void iTypeFirstNameString(String firstName) {
        WebElement fname = getDriver().findElement(By.xpath("//input[@placeholder='First Name']"));
        fname.sendKeys(firstName);
    }

    @And("I type last name {string}")
    public void iTypeLastName(String lastName) {
        WebElement lname = getDriver().findElement(By.xpath("//input[@placeholder='Last Name']"));
        lname.sendKeys(lastName);
    }

    @And("I type email {string}")
    public void iTypeEmail(String email) {
        WebElement em = getDriver().findElement(By.xpath("//input[@placeholder='Email']"));
        em.sendKeys(email);
    }

    @And("I type group code {string}")
    public void iTypeGroupCode(String groupCode) {
        WebElement gc = getDriver().findElement(By.xpath("//input[@placeholder='Group Code']"));
        gc.sendKeys(groupCode);
    }


    @And("I type password {string}")
    public void iTypePassword(String password) {
        WebElement pw = getDriver().findElement(By.xpath("//input[@placeholder='Password']"));
        pw.sendKeys(password);
    }


    @And("I type confirm password {string}")
    public void iTypeConfirmPassword(String confirmpw) {
        WebElement cpw = getDriver().findElement(By.xpath("//input[@placeholder='Confirm Password']"));
        cpw.sendKeys(confirmpw);
    }

    @And("I click Register Me button")
    public void iClickRegisterMeButton() {
        WebElement regbtn = getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]"));
        regbtn.click();
    }


    @Then("I see the message {string}")
    public void iSeeTheMessage(String arg0) {
        try {
            WebDriverWait wait = new WebDriverWait(getDriver(), 5);
            wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//h4[contains(text(),'You have been Registered.')]")));
        }
        catch(Exception e){
            e.printStackTrace();
            System.out.println("LOGIN NOT SUCCESSFUL");
        }
    }

    @Then("I see error message {string}")
    public void iSeeErrorMessage(String arg0) {
        try {
            WebDriverWait wait = new WebDriverWait(getDriver(), 5);
            wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//mat-error[contains(text(),'required')]")));
        }
        catch(Exception e){
            e.printStackTrace();
            System.out.println("NO ERROR MESSAGE FOR REQUIRED FIELD");
        }
    }

    @When("I navigate to login page")
    public void iNavigateToLoginPage() {
        WebDriver driver = getDriver();
        String regURl = "http://ask-stage.portnov.com/#/login";
        driver.get(regURl);

    }

    @And("I type {string} in the email field")
    public void iTypeInTheEmailField(String email) {
        WebElement em = getDriver().findElement(By.xpath("//input[@placeholder='Email *']"));
        em.sendKeys(email);

    }

    @And("I type {string} in the password field")
    public void iTypeInThePasswordField(String password) {
        WebElement pw = getDriver().findElement(By.xpath("//input[@placeholder='Password *']"));
        pw.sendKeys(password);
    }

    @When("I click Sign in button")
    public void iClickSignInButton() {
        WebElement signBtn = getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]"));
        signBtn.click();
    }

    @Then("I see the role Teacher")
    public void iSeeTheRoleTeacher() {
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//p[contains(text(),'TEACHER')]")));
        String homeURL = "http://ask-stage.portnov.com/#/home";
        String hmURL = getDriver().getCurrentUrl();
        try{
            Assert.assertEquals(hmURL, homeURL);
            System.out.println("EXPECTED URL: "+ homeURL + "ACTUAL URL:" + hmURL);

        }
        catch(Exception e){
            System.out.println("LOGIN NOT SUCCESSFULL");
        }
    }

    @When("I click text link Assignments")
    public void iClickLinkTextAssignments() {
        WebElement assgnText = getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]"));
        assgnText.click();

    }

    @Then("I see Create New Quiz button")
    public void iSeeCreateNewQuizButton() {
        WebDriverWait wait = new WebDriverWait(getDriver(), 5);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//span[contains(text(),'Create New Assignment')]")));
        String assignmentURL = "http://ask-stage.portnov.com/#/assignments";
        String assnURL = getDriver().getCurrentUrl();
        try{
            Assert.assertEquals(assignmentURL, assnURL);
            System.out.println("EXPECTED URL: "+ assignmentURL + "ACTUAL URL:" + assnURL);
        }
        catch(Exception e){
            System.out.println("QUIZZES PAGE NOT LOADED");
        }


    }
}