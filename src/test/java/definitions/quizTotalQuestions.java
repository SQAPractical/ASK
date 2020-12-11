package definitions;

import cucumber.api.java.en.And;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class quizTotalQuestions {

    @And("I type Title Of The Quiz {string}")
    public void iTypeTitleOfTheQuiz(String Test0001) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).click();
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys(Test0001);
    }

//    @And("I click Add Question button")
//    public void iClickAddQuestionButton() throws InterruptedException {
//        Thread.sleep(1000);
//        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
//        Thread.sleep(2000);
//    }

    @And("I check Textual Q{int} radio button")
    public void iCheckRadioButton(int num) {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+num+"')]/../../..//div[contains(text(), 'Textual')]")).click();
    }

    @And("I type Question Q{int} {string}")
    public void iTypeQuestion(int num, String question) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+num+"')]/../../..//*[@formcontrolname='question']")).click();
        getDriver().findElement(By.xpath("//*[contains(text(),'Q"+num+"')]/../../..//*[@formcontrolname='question']")).sendKeys(question);
        Thread.sleep(2000);
    }

    @And("I click on Save button")
    public void iClickOnSaveButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }

    @And("I created {int} questions")
    public void iCreatedQuestions(int steps) throws InterruptedException {
        int variable = 0;
        for(int i=0; i<steps; i++){
            variable = i+1;
            getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
            Thread.sleep(2000);
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+variable+"')]/../../..//div[contains(text(), 'Textual')]")).click();
            Thread.sleep(2000);
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+variable+"')]/../../..//*[@formcontrolname='question']")).click();
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+variable+"')]/../../..//*[@formcontrolname='question']")).sendKeys("My question " + variable);
            Thread.sleep(2000);

        }
    }
}
