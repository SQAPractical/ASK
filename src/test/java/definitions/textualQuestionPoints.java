//Created by Almir 10/19/20
package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class textualQuestionPoints {
    @Then("Maximum possible score match with the sum of points")
    public void maximumPossibleScoreMatchWithTheSumOfPoints() {
      int maxScore = Integer.parseInt(getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'"+ quizCreatedAt.quizName+"')]/../../../div//td[text()='Maximum possible score:']/following-sibling::td")).getText());
      assertThat(quizCreatedAt.pointsCounter).isEqualTo(maxScore);
      System.out.println(quizCreatedAt.pointsCounter + " = " + maxScore);
    }
}
