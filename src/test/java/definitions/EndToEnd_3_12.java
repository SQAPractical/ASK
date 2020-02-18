package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class EndToEnd_3_12 {
    @Then("title_quiz_preview {string} should be displayed")
    public void title_quiz_previewShouldBeDisplayed(String name_q) {
        String xpath = "//*[contains(text(),'" + name_q + "')]";
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }

    @And("I click to the assign_menu_element")
    public void iClickToTheAssign_menu_element() {
        getDriver().findElement(By.xpath("//*[contains(@href,'assignments')]")).click();
    }

    @And("I click to the create_new_assign")
    public void iClickToTheCreate_new_assign() throws Throwable{
        Thread.sleep(2000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]/../../button")).click();
    }

    @Then("list_assignments should be displayed")
    public void list_assignmentsShouldBeDisplayed() {
        assertThat(getDriver().findElement(By.xpath("//h4[contains(text(),'List of Assignments')]")).isDisplayed()).isTrue();
    }

    @Then("list_assign_students should be displayed")
    public void list_assign_studentsShouldBeDisplayed() {
        assertThat(getDriver().findElement(By.xpath("//span[contains(text(),'Select Quiz To Assign')]")).isDisplayed()).isTrue();
    }

    @When("I click to open group")
    public void iClickToOpenGroup() {
        getDriver().findElement(By.xpath("//div[@class='horizontal-group dropdowns']/mat-form-field[1]/div/div[1]")).click();
    }

    @And("I click to choose group {string}")
    public void iClickToChooseGroup(String name_gr) {
        String xpath = "//span[@class='mat-option-text'][contains(text(),'"+name_gr+"')]";
        getDriver().findElement(By.xpath(xpath)).click();

    }

    @Then("number_group {string} should be displayed")
    public void number_groupShouldBeDisplayed(String num_gr) {
        String xpath = "//div[@class='horizontal-group dropdowns']/mat-form-field[1]/div/div[1]//span[contains(text(),'"+ num_gr+"')]";
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }

    @When("I click to the select_quiz_assign")
    public void iClickToTheSelect_quiz_assign() {
        getDriver().findElement(By.xpath("//*[@placeholder='Select Quiz To Assign']")).click();
    }

    @And("I click to the choosed_quiz {string}")
    public void iClickToTheChoosed_quiz(String title) throws Throwable{
        Thread.sleep(2000);
        String xpath = "//span[contains(text(),'"+title+"')]";
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @And("I click select_all_students")
    public void iClickSelect_all_students() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Select All')]")).click();
    }

    @And("I click give_assignment button")
    public void iClickGive_assignmentButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]/..")).click();
    }


    @And("I click logout_button")
    public void iClickLogout_button() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();
    }

    @And("I click confirm_logout_button")
    public void iClickConfirm_logout_button() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Log Out')]")).click();
    }

    @And("I click to the my_assign_element")
    public void iClickToTheMy_assign_element() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'My Assignments')]")).click();
    }

    @Then("list_my_assignments should be displayed")
    public void list_my_assignmentsShouldBeDisplayed() {
        assertThat(getDriver().findElement(By.xpath("//h4[contains(text(),'My Assignments')]")).isDisplayed()).isTrue();
    }

    @And("my_assigned_quiz with title {string} should be displayed")
    public void my_assigned_quizWithTitleShouldBeDisplayed(String title) {
        String xpath = "//*[contains(text(),'"+ title +"')]";
        assertThat(getDriver().findElement(By.xpath(xpath)).isDisplayed()).isTrue();
    }
}
