package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import org.openqa.selenium.By;
import static support.TestContext.getDriver;

public class MultipleChoiceQuesText {
    @Given("I goto login page")
    public void iGotoLoginPage() {
        getDriver().get("http://ask-stage.portnov.com/#/login");
    }

    @And("I type title of quiz {string}")
    public void iTypeTitleOfQuiz(String text) {
        getDriver().findElement(By.xpath("//*[contains(@placeholder,'Title Of The Quiz')]")).sendKeys(text);
    }

    @And("I type question {string}")
    public void iTypeQuestion(String ques) {
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
    public void iClick(String text1) {
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
            default:
                System.out.println("Unsupported button or field :"+text);

        }

    }
}




