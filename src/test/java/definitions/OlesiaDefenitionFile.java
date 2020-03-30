package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class OlesiaDefenitionFile {
    @Given("I navigate to login page")
    public void iNavigateToLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @Then("I should see page title as {string}")
    public void iShouldSeePageTitleAs(String pageTitle) {

    }

    @Then("I should see page title contains {string}")
    public void iShouldSeePageTitleContains(String pageTitle) {
        assertThat(getDriver().getTitle().contains(pageTitle));
    }

    @When("I click on menu item {string}")
    public void iClickOnMenuItem(String xpath) throws InterruptedException{
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("element with xpath {string} should be displayed")
    public void elementWithXpathShouldBeDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }

    @Then("I wait for element with xpath {string} to be present")
    public void iWaitForElementWithXpathToBePresent(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
    }

    @When("I type {string} into element with xpath {string}")
    public void iTypeIntoElementWithXpath(String textToPut, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(textToPut);
    }


    @Then("I wait for {int} sec")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @And("I click on element with xpath {string}")
    public void iClickOnElementWithXpath(String xpath) throws InterruptedException{
        Thread.sleep(2000);
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @And("I type question {string}")
    public void iTypeQuestion(String questionText) {
        //label[contains(text(),'Question')]/..
        getDriver().findElement(By.xpath("//textarea[@placeholder='Question *']")).sendKeys(questionText);
    }

    @And("I type optionOne {string}")
    public void iTypeOptionOne(String option) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']")).sendKeys(option);
    }

    @And("I type optionTwo {string}")
    public void iTypeOptionTwo(String option) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 2*']")).sendKeys(option);
    }


    @And("I set {string} points per question {string}")
    public void iSetPerQuestion(String points, String xpath) {
        //getDriver().findElement(By.xpath(xpath)).clear();
        //getDriver().findElement(By.xpath(xpath)).sendKeys(points);
        //<mat-slider _ngcontent-c12="" class="mat-slider mat-accent mat-slider-horizontal" role="slider" style="outline: red dotted 2px !important;" tabindex="0" aria-disabled="false" aria-valuemax="10" aria-valuemin="1" aria-valuenow="8" aria-orientation="horizontal" xpath="1"><div class="mat-slider-wrapper"><div class="mat-slider-track-wrapper"><div class="mat-slider-track-background" style="transform: translateX(0px) scaleX(0.222222);"></div><div class="mat-slider-track-fill" style="transform: translateX(0px) scaleX(0.777778);"></div></div><div class="mat-slider-ticks-container" style="transform: translateX(0%);"><div class="mat-slider-ticks" style="background-size: 0% 2px; transform: translateZ(0px) translateX(0%);"></div></div><div class="mat-slider-thumb-container" style="transform: translateX(-22.2222%);"><div class="mat-slider-focus-ring"></div><div class="mat-slider-thumb"></div><div class="mat-slider-thumb-label"><span class="mat-slider-thumb-label-text">8</span></div></div></div></mat-slider>
        //???getDriver().findElement(By.xpath("//input[@id="invoice_supplier_id"])).setAttribute("value", "your value")
        //attributes to try: aria-valuenow, innerText  innerHTML  textContent  for style:transform: translateX(-11.1111%);
        WebElement element = getDriver().findElement(By.xpath(xpath));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
//        executor.executeScript("arguments[0].setAttribute(arguments[1], arguments[2]);",getDriver().findElement(By.xpath("//h2")),"innerHTML","1");
//        executor.executeScript("arguments[0].setAttribute(arguments[1], arguments[2]);",getDriver().findElement(By.xpath("//h2")),"innerText","2");
//        executor.executeScript("arguments[0].setAttribute(arguments[1], arguments[2]);",getDriver().findElement(By.xpath("//h2")),"outerText","3");
//        executor.executeScript("arguments[0].setAttribute(arguments[1], arguments[2]);",getDriver().findElement(By.xpath("//h2")),"textContent","4");
        executor.executeScript("arguments[0].setAttribute(arguments[1], arguments[2]);",
                element,
                "textContent",
                "points");
//        System.out.println(element);
        //js.executeScript("document.getElementById('//id of element').setAttribute('attr', '10')");
//        WebElement element = getDriver().findElement(By.xpath(xpath));
//        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
//        executor.executeScript("arguments[0].scrollIntoView(false);", element);

//        getDriver().execute_script("arguments[0].setAttribute(arguments[1], arguments[2]);",
//                elm,
//                "attr_name",
//                "attr_value")

//        JavascriptExecutor jsExecutor = (JavascriptExecutor) driver;
//        jsExecutor.executeScript("document.getElementById('input_17').setAttribute('value', 'selected')");
        //getElementsByName('body')[0].setAttribute('type', 'text');");

//        WebDriver driver; // Assigned elsewhere
//        JavascriptExecutor js = (JavascriptExecutor) driver;
//        js.executeScript("document.getElementById('//id of element').setAttribute('attr', '10')");

        /*Actions assigner = new Actions(getDriver());
        assigner.moveToElement(webelement);
        assigner.click();
        assigner.sendKeys("<your value>");
        assigner.build().perform();*/
    }

    @Then("element with xpath {string} should have attribute {string} as {string}")
    public void elementWithXpathShouldHaveAttributeAs(String xpath, String arg1, String arg2) {
        getDriver().findElement(By.xpath(xpath)).getText();
    }

    @And("I add new question")
    public void iAddNewQuestion() {
        getDriver().findElement(By.xpath("//*[text()='add_circle']")).click();
    }

    @And("I choose First answer as right")
    public void iChooseFirstAnswerAsRight() {
        getDriver().findElement(By.xpath("//div[@class='right']//mat-radio-group[1]//mat-radio-button")).click();
    }

    @Then("Required field {string} id displayed")
    public void requiredFieldIdDisplayed(String xpath) {
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }

    @Given("I navigate to page for registration")
    public void iNavigateToPageForRegistration() {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
    }

    @When("I type {string} into First name")
    public void iTypeIntoFirstName(String dataType0) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='firstName']")).sendKeys(dataType0);
    }

    @And("I type {string} into Last name")
    public void iTypeIntoLastName(String dataType1) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='lastName']")).sendKeys(dataType1);
    }

    @And("type {string} into Group code")
    public void typeIntoGroupCode(String dataType3) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='group']")).sendKeys(dataType3);
    }

    @And("I type {string} into Email")
    public void iTypeIntoEmail(String dataType) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(dataType);
    }

    @Then("I wait for message {string} displayed")
    public void iWaitForMessageDisplayed(String xpath1) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath1)));
//        assertThat(getDriver().findElement(By.xpath("//*[contains(text(),'"+textMsg+"')]")).isDisplayed()).isTrue();
    }
}

