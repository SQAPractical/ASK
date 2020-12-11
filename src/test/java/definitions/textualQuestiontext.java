package definitions;

import cucumber.api.java.en.And;

import static support.TestContext.getDriver;

public class textualQuestiontext {
    @And("I click on {string} on item menu")
    public void iClickOnMenuItem(String menuItem) throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'" + menuItem + "')]")).click();
        Thread.sleep(2000);
    }

    @And("I type {string} for the name og quiz")
    public void iTypeForTheNameOfQuiz(String quizName) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Title Of The Quiz *']")).sendKeys(quizName);
        Thread.sleep(2000);
    }



    @And("I Type {string} as question")
    public void iTypeAsQuestion(String qname) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(qname);
        Thread.sleep(2000);
    }



    @And("I type {string} as question")
    public void iTypeAsQuestion(String qname) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@placeholder='Question *']")).sendKeys(qname);
        Thread.sleep(2000);
    }
}