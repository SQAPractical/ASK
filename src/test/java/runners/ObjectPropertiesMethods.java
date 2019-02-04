package runners;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty", "html:target/cucumber-html/alltestcases", "json:target/cucumber-json-report.json"},
        glue = {"study/qa/automation/stepDefinitions", "study/qa/automation/utils"},
        features = {"src/main/resources/features"},
        tags = {"@ObjectPropertiesMethods"}
)

public class ObjectPropertiesMethods {
}
