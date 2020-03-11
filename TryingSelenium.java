import org.openqa.selenium.*;
import org.openqa.selenium.chrome.*;

public class TryingSelenium {
        public static void main(String[] args) {
            String baseUrl = "google.com";
            System.setProperty("webdriver.chrome.driver", "chromedriver");
            WebDriver driver = new ChromeDriver();
            driver.get(baseUrl);
            if (driver.getPageSource().contains("I'm Feeling Lucky")) {
                        System.out.println("Pass");
                } else {
                        System.out.println("Fail");
            }
            driver.quit();
        }
}