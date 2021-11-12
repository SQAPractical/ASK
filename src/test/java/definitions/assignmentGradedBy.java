package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class assignmentGradedBy {
    @And("I login as user {string} and {string}")
    public void iLoginAsUserAnd(String email, String password) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='email']")).sendKeys(email);
        getDriver().findElement(By.xpath("//input[@placeholder=\"Password *\"]")).sendKeys(password);
        getDriver().findElement(By.xpath("//span[contains(text(),'Sign In')]")).click();
    }

    @And("I navigate to Quizzes tab")
    public void iNavigateToQuizzesTab() {
        getDriver().findElement(By.xpath("//*[contains(text(), \"Quizzes\")]/../..")).click();
    }

    @And("I navigate to {string} tab in left menu")
    public void iNavigateToTabInLeftMenu(String tabName) throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[contains(text(), '"+tabName+"')]/../..")).click();
        Thread.sleep(1000);
    }

    @And("I assign quiz {string} to student {string}")
    public void iAssignQuizToStudent(String quizName, String userName) throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[contains(text(),'Create New Assignment')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//span[contains(text(),'"+quizName+"')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//div[@class='mat-list-text'][contains(.,'"+userName+"')]")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//button/*[contains(text(), 'Give Assignment')]")).click();
        Thread.sleep(1000);
    }

    @And("I logout")
    public void iLogout() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Log Out')]/../..")).click();
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//button/*[contains(text(),'Log Out')]")).click();
        Thread.sleep(1000);
    }

    @And("I go to assignment {string}")
    public void iGoToAssignment(String assignmentName) throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("(//*[contains(text(),'"+assignmentName+"')]/following-sibling::td[3]/./*/button)[1]")).click();
        Thread.sleep(1000);
    }

    @And("I enter answer {string}")
    public void iEnterAnswer(String answer) {
        getDriver().findElement(By.xpath("//textarea")).sendKeys(answer);
    }

    @And("I click Grade button")
    public void iClickButton() throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("(//button/*[contains(text(),'Grade')])[1]")).click();
        Thread.sleep(1000);
    }

    @And("I choose student {string}")
    public void iChooseStudent(String studentName) throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//div[@class='mat-list-text'][contains(.,'"+studentName+"')]")).click();
        Thread.sleep(1000);
    }

    @Then("assignment with quiz {string} graded by {string}")
    public void assignmentWithQuizGradedBy(String quizName, String gradedBy) throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//*[@class='quiz-name'][contains(text(), '"+quizName+"')]")).click();
        Thread.sleep(1000);
        WebElement quiz = getDriver().findElement(By.xpath("//*[contains(text(), '"+quizName+"')]/../../../..//*[contains(text(), '"+gradedBy+"')]"));
        assertThat(quiz.isDisplayed()).isTrue();
        Thread.sleep(1000);
    }

    @And("I click {string} button")
    public void iClickButton(String buttonText) throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("(//*[contains(text(),'"+buttonText+"')])[1]")).click();
        Thread.sleep(1000);
    }

    @And("I click plus button")
    public void iClickPlusButton() throws InterruptedException {
        Thread.sleep(1000);
        getDriver().findElement(By.xpath("//button/*[contains(text(),'+')]")).click();
    }

    @And("I wait for 4 seconds")
    public void iWaitForSeconds() throws InterruptedException {
        Thread.sleep( 4000);
    }

    @And("I delete Quiz {string}")
    public void iDeleteQuiz(String quizName) throws InterruptedException {
        Thread.sleep( 1000);
        getDriver().findElement(By.xpath("//*[contains(text(), '"+quizName+"')]/../../../..//*[contains(text(), 'more_vert')]")).click();
        Thread.sleep( 1000);
        getDriver().findElement(By.xpath("//*[contains(text(), 'Delete Assignment')]")).click();
        Thread.sleep( 1000);
        getDriver().findElement(By.xpath("//button/*[contains(text(), 'Delete')]")).click();
    }
}
