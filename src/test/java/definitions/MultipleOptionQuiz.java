package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class MultipleOptionQuiz {
    private String button;

    @Given("I login on page")
    public void iLoginOnPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }


    @Then("I type Email {string}")
    public void iTypeEmail(String email) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys(email);

    }

    @And("I type Password {string}")
    public void iTypePassword(String password) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys(password);

    }


    @Then("I wait for page should be present {string}")
    public void iWaitForPageShouldBePresent(String text) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[contains(text(), '"+text+"')])")));


    }

    @Then("I click button {string}")
    public void iClickButton(String nButton) {
        getDriver().findElement(By.xpath("//*[contains(text(),'"+nButton+"')]")).click();
    }

    @Then("I should see page title name {string}")
    public void iShouldSeePageTitleName(String pageTitle) {
        assertThat(getDriver().getTitle().contains(pageTitle));
    }

    @Then("I click on an element {string}")
    public void iClickOnAnElement(String quiz) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//div//*[text()='"+quiz+"']")).click();

    }

    @And("wait for element {string} should be present")
    public void waitForElementShouldBePresent(String list) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[contains(text(),'"+list+"')]")));

    }



    @Then("I click on button add question")
    public void iClickOnButtonAddQuestion() {
        getDriver().findElement(By.xpath("//div[@class='controls ng-star-inserted']//span[1]")).click();
    }

    @Then("I click choose multiple-choice")
    public void iClickChooseMultipleChoice() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Multiple-Choice')]")).click();
    }

    @And("element {string} should be select")
    public void elementShouldBeSelect(String textToPut) {
        getDriver().findElement(By.xpath("//div[contains(text(),'"+textToPut+"')]")).isSelected();
    }



    @Then("I type quiz title {string}")
    public void iTypeQuizTitle(String text) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys(text);
    }

    @Then("I type question title {string}")
    public void iTypeQuestionTitle(String text) {
        getDriver().findElement(By.xpath("//*[@formcontrolname='question']")).sendKeys(text);

    }

    @And("I type answer {string} into options field one")
    public void iTypeAnswerIntoOptionsFieldOne(String text) {
        getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 1')]")).sendKeys(text);
    }

    @And("option field one should contain attribute {string} as {string}")
    public void optionFieldOneShouldContainAttributeAs(String attribute, String attributeValue) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 1')]")).getAttribute(attribute)).isEqualTo(attributeValue);
    }

    @Then("I click on check box option one")
    public void iClickOnCheckBoxOptionOne() throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-2']")).click();
    }

    @And("check box one should be selected")
    public void checkBoxOneShouldBeSelected() {
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-2']")).isSelected();
    }

    @Then("I type answer {string} into options field two")
    public void iTypeAnswerIntoOptionsFieldTwo(String text) {
            getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 2')]")).sendKeys(text);
        }

    @And("option field two should contain attribute {string} as {string}")
    public void optionFieldTwoShouldContainAttributeAs(String attribute, String attributeValue) {
        assertThat(getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 2')]")).getAttribute(attribute)).isEqualTo(attributeValue);
    }

    @Then("I click on check box option two")
    public void iClickOnCheckBoxOptionTwo() {
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-3']")).click();
    }

    @And("check box two should be selected")
    public void checkBoxTwoShouldBeSelected() {
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-3']")).isSelected();
    }
}
