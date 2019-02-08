package study.qa.automation.utils;

import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxDriverLogLevel;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.ie.InternetExplorerOptions;
import org.openqa.selenium.remote.DesiredCapabilities;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class TestContext {

    private static WebDriver driver;

    public static void initialize() {
        setDriver("chrome");
    }

    public static void close() {
        closeDriver();
    }

    public static WebDriver getDriver() {
        return driver;
    }

    public static void setDriver(String browser) {
        driver = initializeDriver(browser);
    }

    private static WebDriver initializeDriver(String browser) {
        try {
            WebDriver driver;
            String osName = System.getProperty("os.name");
            switch (browser) {
                case "chrome":
                    String chromeDriverName = "chromedriver.exe";

                    if (osName != null && osName.contains("Mac")) {
                        chromeDriverName = "chromedriver";
                    }
                    System.setProperty("webdriver.chrome.driver", getDriversDirPath() + chromeDriverName);
                    Map<String, Object> chromePreferences = new HashMap<>();
                    chromePreferences.put("profile.default_content_settings.geolocation", 2);
                    chromePreferences.put("download.prompt_for_download", false);
                    chromePreferences.put("download.directory_upgrade", true);
                    chromePreferences.put("download.default_directory", getDownloadsPath());
                    chromePreferences.put("credentials_enable_service", false);
                    chromePreferences.put("password_manager_enabled", false);
                    chromePreferences.put("safebrowsing.enabled", "true");
                    ChromeOptions chromeOptions = new ChromeOptions();
                    chromeOptions.addArguments("--start-maximized");
                    chromeOptions.setExperimentalOption("prefs", chromePreferences);
                    driver = new ChromeDriver(chromeOptions);
                    driver.manage().window().setSize(new Dimension(1044,784));
                    break;
                case "firefox":
                    String geckoDriverName = "geckodriver.exe";
                    if (osName != null && osName.contains("Mac")) {
                        geckoDriverName = "geckodriver";
                    }
                    System.setProperty("webdriver.gecko.driver", getDriversDirPath() + geckoDriverName);
                    System.setProperty(FirefoxDriver.SystemProperty.DRIVER_USE_MARIONETTE,"true");
                    System.setProperty(FirefoxDriver.SystemProperty.BROWSER_LOGFILE,"/dev/null");
                    FirefoxProfile firefoxProfile = new FirefoxProfile();
                    firefoxProfile.setPreference("xpinstall.signatures.required", false);
                    firefoxProfile.setPreference("app.update.enabled", false);
                    firefoxProfile.setPreference("browser.download.folderList", 2);
                    firefoxProfile.setPreference("browser.download.manager.showWhenStarting", false);
                    firefoxProfile.setPreference("browser.download.dir", getDownloadsPath());
                    firefoxProfile.setPreference("browser.helperApps.neverAsk.saveToDisk", "application/zip;application/octet-stream;application/x-zip;application/x-zip-compressed;text/css;text/html;text/plain;text/xml;text/comma-separated-values");
                    firefoxProfile.setPreference("browser.helperApps.neverAsk.openFile", "application/zip;application/octet-stream;application/x-zip;application/x-zip-compressed;text/css;text/html;text/plain;text/xml;text/comma-separated-values");
                    firefoxProfile.setPreference("browser.helperApps.alwaysAsk.force", false);
                    firefoxProfile.setPreference("plugin.disable_full_page_plugi‌​n_for_types", "application/pdf,application/vnd.adobe.xfdf,application/vnd.‌​fdf,application/vnd.‌​adobe.xdp+xml");
                    firefoxProfile.setPreference("webdriver.log.driver", "OFF");
                    FirefoxOptions firefoxOptions = new FirefoxOptions().setProfile(firefoxProfile).setLogLevel(FirefoxDriverLogLevel.INFO);
                    driver = new FirefoxDriver(firefoxOptions);
                    break;
                case "edge":
                    System.setProperty("webdriver.edge.driver", getDriversDirPath() + "MicrosoftWebDriver.exe");
                    driver = new EdgeDriver();
                    break;
                case "ie":
                    System.setProperty("webdriver.ie.driver", getDriversDirPath() + "IEDriverServer.exe");
                    DesiredCapabilities ieCapabilities = DesiredCapabilities.internetExplorer();
                    ieCapabilities.setCapability(InternetExplorerDriver.INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS, true);
                    ieCapabilities.setCapability("requireWindowFocus", true);
                    InternetExplorerOptions ieOptions = new InternetExplorerOptions(ieCapabilities);
                    driver = new InternetExplorerDriver(ieOptions);
                    break;
                case "htmlunit":
                    driver = new HtmlUnitDriver();
                    break;
                default:
                    throw new RuntimeException("Driver is not implemented for: " + browser);
            }
            driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
            return driver;
        } catch (IllegalArgumentException ex) {
            return null;
        }
    }

    private static void closeDriver() {
        driver.quit();
    }

    private static String getDriversDirPath() {
        return System.getProperty("user.dir") + String.format("%1$ssrc%1$smain%1$sresources%1$sdrivers%1$s", File.separator);
    }
    private static String getDownloadsPath() {
        return System.getProperty("user.dir") + String.format("%1$ssrc%1$smain%1$sresources%1$sdownloads%1$s", File.separator);
    }

}
