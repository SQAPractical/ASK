package definitions;

import cucumber.api.Transpose;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.HashMap;
import java.util.List;
import java.util.function.Function;

import static java.lang.Integer.parseInt;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static support.TestContext.getDriver;

public class SubmissionStatus {

    private HashMap<String, String> goodiesBag = new HashMap<>();

    private WebDriverWait await() { return await(15); }

    private WebDriverWait await(int timeoutInSeconds) { return await(timeoutInSeconds, 200); }

    private WebDriverWait await(long timeOutInSeconds, long sleepInMillis) { return new WebDriverWait(getDriver(), timeOutInSeconds, sleepInMillis); }

    private void awaitVisible(WebElement element) { await().until(ExpectedConditions.visibilityOf(element)); }

    private void awaitVisible(By by) { await().until(ExpectedConditions.visibilityOfElementLocated(by)); }

    private void awaitClickable(WebElement element) { await().until(ExpectedConditions.elementToBeClickable(element)); }

    private void awaitClickable(By by) { await().until(ExpectedConditions.elementToBeClickable(by)); }

    private JavascriptExecutor getExec() { return (JavascriptExecutor) getDriver(); }

    private void scrollTo(WebElement element) { getExec().executeScript("arguments[0].scrollIntoView(false);", element); }

    @And("I wait forever")
    // Neverending story...
    // Useful for quick check with dev tools when yhe tests are failing on you.
    public void iWaitForever() {
        while(true);
    }

    @When("I click {string} button")
    public void iClickButton(String buttonText) {
        String buttonXpath = "//button/span[contains(text(), '"+ buttonText + "')]";
        await().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("ac-spinner")));
        WebElement theButton = getDriver().findElement(By.xpath(buttonXpath));
        //awaitClickable(theButton);

        theButton.click();
    }

    @And("I enter email {string}")
    public void iEnterEmail(String emailAddress) {
        WebElement emailField = getDriver().findElement(By.xpath("//input[@formcontrolname='email']"));
        emailField.sendKeys(emailAddress);
    }

    @And("I enter password {string}")
    public void iEnterPassword(String password) {
        WebElement passwordField = getDriver().findElement(By.xpath("//input[@formcontrolname='password']"));
        passwordField.sendKeys(password);
    }

    @Then("I select {string} group")
    public void iSelectGroup(String groupName) {
        String groupXpath = "//mat-option/span[text()='"+groupName+"']";
        // Open the groups list
        WebElement groupCombo = getDriver().findElement(By.xpath("//mat-select[@formcontrolname='groupFilter']/.."));
        awaitClickable(groupCombo);
        groupCombo.click();
        // Select group name in the list
        WebElement groupItem = getDriver().findElement(By.xpath(groupXpath));
        scrollTo(groupItem);
        awaitClickable(groupItem);
        groupItem.click();
    }

    @And("I wait for the left menu to be clickable")
    public void iWaitForTheLeftMenuToBeClickable() {
        await().until(ExpectedConditions.elementToBeClickable(By.xpath("//h5[text()='Home']")));
    }

    @And("I select student #{int} in {string} group")
    public void iSelectFirstStudentInGroup(Integer num, String groupName) {
        String groupXpath = "//mat-list-option//span[text()='"+groupName+"']["+num.toString()+"]";
        await().until(ExpectedConditions.elementToBeClickable(By.xpath(groupXpath)));
        getDriver().findElement(By.xpath(groupXpath)).click();
    }

    @And("I select {string} quiz")
    public void iSelectQuiz(String quizName) {
        String quizXpath = "//span[@class='mat-option-text'][contains(text(),'"+quizName+"')]";

        WebElement quizList = getDriver().findElement(By.xpath("//mat-select[@formcontrolname='quizId']/.."));
        quizList.click();

        WebElement quizItem = getDriver().findElement(By.xpath(quizXpath));
        scrollTo(quizItem);
        awaitClickable(quizItem);
        quizItem.click();
    }

    @And("I select student {string} in {string} group")
    public void iSelectStudentInGroup(String studentName, String groupName) {
        String studentXpath = "//div[@class='mat-list-text'][contains(., '"+studentName+"')]/span[text()='"+groupName+"']";

        WebElement student = getDriver().findElement(By.xpath(studentXpath));
        scrollTo(student);
        awaitClickable(student);
        student.click();
    }

    @And("I wait for {string} button to be clickable")
    public void iWaitForButtonToBeClickable(String buttonText) {
        awaitClickable(By.xpath("//button[contains(., '"+ buttonText + "')]"));
    }



    @And("I check that assignment #{int} is for quiz {string}")
    public void iCheckThatAssignmentIsForQuiz(int assignmentPos, String quizTitle) {
        WebElement assignmentCard = getDriver().findElement(By.xpath(
                "//mat-accordion/mat-expansion-panel[" + assignmentPos + "]//span[@class='mat-content']"
        ));
        String entrails = assignmentCard.getText();
        assertTrue(entrails.contains(quizTitle));
    }

    @And("I expand assignment #{int}")
    public void iExpandAssignment(int assignmentPos) {
        WebElement assignmentCard = getDriver().findElement(By.xpath("//mat-accordion/mat-expansion-panel[" + assignmentPos + "]"));
        assignmentCard.click();
    }

    @And("I check that assignment #{int} has the name {string} on it")
    public void iCheckThatAssignmentHasTheNameOnIt(int assignmentPos, String userName) {
        //mat-accordion/mat-expansion-panel[1]//td[@class='name'][contains(text(),'Joel Blows')]
        WebElement studentName = getDriver().findElement(By.xpath("//mat-accordion/mat-expansion-panel[" + assignmentPos + "]//td[@class='name']"));
        assertEquals(userName, studentName.getText().trim());
    }

    @And("I click {string} button on popup confirmation")
    public void iClickButtonOnPopupConfirmation(String buttonText) {
        WebElement popupButton = getDriver().findElement(By.xpath("//ac-modal-confirmation//button/span[text()='" + buttonText + "']"));
        awaitClickable(popupButton);
        popupButton.click();
    }

    @And("I wait for login page to load")
    public void iWaitForLoginPageToLoad() {
//                registerButton = getDriver().findElement(By.xpath("//button[@type='submit']"));
        awaitVisible(By.xpath("//button[@type='submit']"));
    }

    @Then("I verify that I have new assignments")
    public void iVerifyThatIHaveNewAssignments() {
        String assignmentXpath = "//mat-card[1]/p/span";

        awaitVisible(By.xpath(assignmentXpath));
        WebElement assignmentNumber = getDriver().findElement(By.xpath(assignmentXpath));

        int ass = parseInt(assignmentNumber.getText());
        assertTrue(ass > 0);
    }

    @And("I go to the first assignment for quiz {string}")
    public void iGoToTheFirstAssignmentForQuiz(String assignedQuiz) {
        String buttonXpath = "//tbody//tr[contains(., '" + assignedQuiz + "')][1]//button";

        awaitVisible(By.xpath(buttonXpath));
        awaitClickable(By.xpath(buttonXpath));
        WebElement button = getDriver().findElement(By.xpath(buttonXpath));

        try {
            button.click();
        } catch (StaleElementReferenceException expected) {
            getDriver().findElement(By.xpath(buttonXpath)).click();
        }
    }

    @And("I click {string} button on popup notification")
    public void iClickButtonOnPopupNotification(String popupButton) {
        String buttonXpath = "//ac-modal-notification//button/span[contains(text(), '" + popupButton + "')]";
        awaitVisible(By.xpath(buttonXpath));
        getDriver().findElement(By.xpath(buttonXpath)).click();
        try {
            Thread.sleep(2500); // I don't like this, but the UI framework is fond of pondering, losing clicks in the process.
        } catch (InterruptedException e) {
            System.out.println("SubmissionStatus.iClickButtonOnPopupNotification");
            System.out.println("popupButton = " + popupButton);
            System.out.println("buttonXpath = " + buttonXpath);
            System.out.println("And the thread has died for its sins...");
            e.printStackTrace();
        }
    }

    @Then("I confirm quiz {string} is graded {string} and is {string}")
    public void iConfirmQuizIsGradedAndIs(String quizName, String gradedBy, String gradeResult) {
        String resultNumber = Integer.toString(1);
        String quizNameXpath = "//tr/td[contains(text(),'" + quizName + "')][" + resultNumber + "]";

        awaitVisible(By.xpath(quizNameXpath));
        WebElement quizTitle = getDriver().findElement(By.xpath(quizNameXpath));
        WebElement gradeTitle = getDriver().findElement(By.xpath(
                "//tr[contains(.,'" + quizName + "')][" + resultNumber + "]/td[@class='result']/span"
        ));
        WebElement gradedByTitle = getDriver().findElement(By.xpath("//tr[contains(.,'" + quizName + "')][" + resultNumber + "]/td[2]"));

        assertEquals(quizName, quizTitle.getText().trim());
        assertEquals(gradedBy, gradedByTitle.getText().trim());
        assertEquals(gradeResult, gradeTitle.getText().trim());
    }

    @Then("I verify that question #{int} is {string}")
    public void iVerifyThatQuestionIs(int questionNum, String questionType) {
        String questionCard = "//div[@formarrayname='questions']/mat-card[" + questionNum +"]/";
        boolean elementFound = false; // Set to true

        switch (questionType) {
            case "SINGLE_CHOICE" -> questionCard += "ac-quiz-single-choice-question";
            case "MULTIPLE_CHOICE" -> questionCard += "ac-quiz-multiple-choice-question";
            case "TEXTUAL" -> questionCard += "ac-quiz-textual-question";
            default -> throw new NotFoundException("Wrong question type selected!");
        }
        try {
            WebElement question = getDriver().findElement(By.xpath(questionCard));
            if(question.isDisplayed()) elementFound = true;
        } catch (Exception isExpected) {
            isExpected.printStackTrace();
        }
        assertTrue("Question: " + questionNum + " is not of type: '" + questionType + "'!", elementFound);
    }

    @And("I fill the answer {string} for question {int}")
    public void iFillTheAnswerForQuestion(String answer, int questionNum) {
        WebElement questionAnswer = getDriver().findElement(By.xpath(
                "//div[@formarrayname='questions']/mat-card[" + questionNum +"]//textarea[@formcontrolname='textAnswer']"
        ));
        questionAnswer.click();
        questionAnswer.sendKeys(answer);

    }

    @And("I select choice #{int} for question {int}")
    public void iSelectChoiceForQuestion(int choiceNum, int questionNum) {
        WebElement questionAnswer = getDriver().findElement(By.xpath(
                "//div[@formarrayname='questions']/mat-card[" + questionNum +"]//mat-radio-button[" + choiceNum + "]/label"
        ));
        questionAnswer.click();
    }

    @And("I give answers for the question {int}")
    public void iGiveAnswersForTheQuestion( int questionNum, @Transpose List<Integer> answerList) {
        String xpath;

        for(Integer i : answerList) {
            xpath = "//div[@formarrayname='questions']/mat-card[" + questionNum + "]//mat-checkbox[" + i + "]/label";
            getDriver().findElement(By.xpath(xpath)).click();
        }
    }

    @And("I click on {string} header")
    public void iClickOnHeader(String headerText) {
        String headerXpath = "//mat-tab-header//div[contains(text(),'" + headerText + "')]";
        awaitClickable(By.xpath(headerXpath));
        getDriver().findElement(By.xpath(headerXpath)).click();
    }

    @And("I filter the list by {string} group")
    public void iFilterTheListByGroup(String groupName) {
        String menuItemXpath = "//div[@role='menu']//button[contains(., '" + groupName + "')]";
        String groupHeaderXpath = "//mat-tab-body//th[@class='group']/span";
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        awaitClickable(By.xpath(groupHeaderXpath));
        getDriver().findElement(By.xpath(groupHeaderXpath)).click(); // Click on the Group header
        awaitVisible(By.xpath(menuItemXpath));
        awaitClickable(By.xpath(menuItemXpath));
        WebElement menuItem = getDriver().findElement(By.xpath(menuItemXpath));
        scrollTo(menuItem);
        menuItem.click();
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Then("row #{int} should display {string} as {string} by {string} with Auto-score {string}")
    public void rowShouldDisplayAsByWithAutoScore(int rowNum, String quizName, String quizPassed, String studentName, String score) {
        String tableRowXpath = "//mat-tab-body[@role='tabpanel']//tbody/tr[" +(rowNum+1) + "]";
        String txtStudentName = getDriver().findElement(By.xpath(tableRowXpath + "/td[3]")).getText().trim();
        String txtQuizName = getDriver().findElement(By.xpath(tableRowXpath + "/td[4]")).getText().trim();
        String txtQuizPassed = getDriver().findElement(By.xpath(tableRowXpath + "/td[5]")).getText().trim();
        String txtScore = getDriver().findElement(By.xpath(tableRowXpath + "/td[6]")).getText().trim();

        assertEquals(studentName, txtStudentName);
        assertEquals(quizName, txtQuizName);
        assertEquals(quizPassed, txtQuizPassed);
        assertEquals(score, txtScore);
    }

    @Then("row #{int} should display {string} by {string} with Auto-score {string}")
    public void rowShouldDisplayAsWaitingForGrade(int rowNum, String quizName, String studentName, String score) {
        String tableRowXpath = "//mat-tab-body[@role='tabpanel']//tbody/tr[" +(rowNum+1) + "]";
        String txtStudentName = getDriver().findElement(By.xpath(tableRowXpath + "/td[3]")).getText().trim();
        String txtQuizName = getDriver().findElement(By.xpath(tableRowXpath + "/td[4]")).getText().trim();
        String txtScore = getDriver().findElement(By.xpath(tableRowXpath + "/td[5]")).getText().trim();

        assertEquals(studentName, txtStudentName);
        assertEquals(quizName, txtQuizName);
        assertEquals(score, txtScore);
    }

    @And("I delete row #{int} with quiz {string}")
    public void iDeleteRowWithQuiz(int rowNum, String quizName) {
        String menuButtonXpath = "//span[@class='mat-content'][contains(., '" + quizName + "')][" + rowNum + "]//button";
        String deleteButtonXpath = "//span[contains(text(),'Delete Assignment')]";
        awaitVisible(By.xpath(menuButtonXpath));
        awaitClickable(By.xpath(menuButtonXpath));
        getDriver().findElement(By.xpath(menuButtonXpath)).click();
        awaitVisible(By.xpath(deleteButtonXpath));
        awaitClickable(By.xpath(deleteButtonXpath));
        getDriver().findElement(By.xpath(deleteButtonXpath)).click();
    }

    @And("I wait for {string} card to appear")
    public void iWaitForCardToAppear(String cardHeader) {
        String cardTitleXpath = "//ac-student-grades-page/mat-card/h4[contains(text(),'" + cardHeader + "')]";
        awaitVisible(By.xpath(cardTitleXpath));
    }
}
