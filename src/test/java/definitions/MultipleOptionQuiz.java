package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static java.lang.Thread.sleep;
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
        getDriver().findElement(By.xpath("//*[text()='"+quiz+"']")).click();

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
    public void iTypeQuestionTitle(String text) throws InterruptedException {
        Thread.sleep(5000);
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


    @Then("I add option {int} field")
    public void iAddOptionField(int arg0) throws InterruptedException {
        int i=0;
        while (i<arg0) {
            Thread.sleep(5000);
            getDriver().findElement(By.xpath("//span[contains(text(),'Add Option')]")).click();
            i++;
        }
    }

    @And("I fill out all option field")
    public void iFillOutAllOptionField() throws InterruptedException {
        WebElement fieldText = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 1')]"));
        fieldText.sendKeys("answer 1");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-2']")).click();
        sleep(2000);

        WebElement fieldText1 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 2')]"));
        fieldText1.sendKeys("answer 2");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-3']")).click();
        sleep(2000);

        WebElement fieldText2 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 3')]"));
        fieldText2.sendKeys("answer 3");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-4']")).click();
        sleep(2000);

        WebElement fieldText3 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 4')]"));
        fieldText3.sendKeys("answer 4");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-5']")).click();
        sleep(2000);

        WebElement fieldText4 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 5')]"));
        fieldText4.sendKeys("answer 5");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-6']")).click();
        sleep(2000);

        WebElement fieldText5 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 6')]"));
        fieldText5.sendKeys("answer 6");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-7']")).click();
        sleep(2000);

        WebElement fieldText6 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 7')]"));
        fieldText6.sendKeys("answer 7");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-8']")).click();
        sleep(2000);

        WebElement fieldText7 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 8')]"));
        fieldText7.sendKeys("answer 8");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-9']")).click();
        sleep(2000);

        WebElement fieldText8 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 9')]"));
        fieldText8.sendKeys("answer 9");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-10']")).click();
        sleep(2000);

        WebElement fieldText9 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 10')]"));
        fieldText9.sendKeys("answer 10");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-11']")).click();
        sleep(2000);

        WebElement fieldText10 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 11')]"));
        fieldText10.sendKeys("answer 11");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-12']")).click();
        sleep(2000);

        WebElement fieldText11 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 12')]"));
        fieldText11.sendKeys("answer 12");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-13']")).click();
        sleep(2000);

        WebElement fieldText12 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 13')]"));
        fieldText12.sendKeys("answer 13");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-14']")).click();
        sleep(2000);

        WebElement fieldText13 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 14')]"));
        fieldText13.sendKeys("answer 14");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-15']")).click();
        sleep(2000);

        WebElement fieldText14 = getDriver().findElement(By.xpath("//*[contains(@placeholder, 'Option 15')]"));
        fieldText14.sendKeys("answer 15");
        sleep(2000);
        getDriver().findElement(By.xpath("//*[@id='mat-checkbox-16']")).click();
        sleep(2000);


    }
}
