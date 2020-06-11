package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static support.TestContext.getDriver;

public class multipleChoiceQuesText {
    @Given("I goto login page")
    public void iGotoLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I type title of quiz {string}")
    public void iTypeTitleOfQuiz(String text) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(@placeholder,'Title Of The Quiz')]")).sendKeys(text);
    }

    @And("I type question {string}")
    public void iTypeQuestion(String ques) throws InterruptedException {
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//*[contains(@placeholder,'Question ')]")).sendKeys(ques);
    }

    @And("I type option as {string} and {string}")
    public void iTypeAnswerOptionAs(String ques1,String ques2) {
        getDriver().findElement(By.xpath("//*[contains(@placeholder,'Option 1*')]")).sendKeys(ques1);
        getDriver().findElement(By.xpath("//*[contains(@placeholder,'Option 2*')]")).sendKeys(ques2);
    }

    @And("I select correct answer")
    public void iSelectCorrectAnswer() throws InterruptedException {
                   getDriver().findElement(By.xpath("(//*[contains(@id, 'mat-checkbox')]/..)[4]")).click();
    }

    @Then("^I wait for element with xpath \"([^\"]*)\" to be present$")
    public void iWaitForElementWithXpathToBePresent(String xpath) {
        new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(xpath)));
    }


        @And("I type question with {int} characters")
    public void iTypeQuestionWithCharacters(int totalChar) {
        int i=0;
        String question = "A";
        for (i=0;i<totalChar;i++)
        { question = question + "A";
        }
        System.out.println(question);
        getDriver().findElement(By.xpath("//*[contains(@placeholder,'Question ')]")).sendKeys(question);

    }

    @And("I click {string}")
    public void iClick(String text1) throws InterruptedException {
        Thread.sleep(2000);
        String text = text1.toLowerCase();
        switch (text){
            case "sign in":
                getDriver().findElement(By.xpath("//*[@type='submit']")).click();
                break;
            case "quizzes":
                getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
                break;
            case "create new quiz":
                getDriver().findElement(By.xpath("//*[contains(text(),'Create New Quiz')]")).click();
                break;
            case "add question":
                getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
                break;
            case "multiple choice":
                getDriver().findElement(By.xpath("//*[contains(text(),'Multiple-Choice')]")).click();
                break;
            case "save" :
                getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
                break;
            case "textual":
                getDriver().findElement(By.xpath("//*[contains(text(),'Textual')]")).click();
                break;
            case "assignments" :
                getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]")).click();
                break;
            case "create new assignment" :
                String assignPath = "//span[contains(text(),'Create New Assignment')]";
                new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(assignPath)));
                getDriver().findElement(By.xpath(assignPath)).click();
                break;
            case "select quiz to assign" :
                String quizpath = "//span[contains(text(),'Select Quiz To Assign')]";
                new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(quizpath)));
                getDriver().findElement(By.xpath(quizpath)).click();
                break;
            case "give assignment" :
                String assignpath = "//span[contains(text(),'Give Assignment')]";
                new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(assignpath)));
                getDriver().findElement(By.xpath(assignpath)).click();
                break;
            case "my assignments" :
                String assignMypath = "//h5[contains(text(),'My Assignments')]";
                new WebDriverWait(getDriver(), 10, 200).until(ExpectedConditions.presenceOfElementLocated(By.xpath(assignMypath)));
                getDriver().findElement(By.xpath(assignMypath)).click();
                break;
            case "close":
                getDriver().findElement(By.xpath("//button[@aria-label='Close dialog']")).click();
                break;
            default:
                System.out.println("Unsupported button or field :"+text);

        }

    }
}




