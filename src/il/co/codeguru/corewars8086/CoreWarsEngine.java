package il.co.codeguru.corewars8086;

import com.google.devtools.common.options.OptionsParser;
import il.co.codeguru.corewars8086.cli.HeadlessCompetitionRunner;
import il.co.codeguru.corewars8086.cli.Options;
import il.co.codeguru.corewars8086.gui.CompetitionWindow;

import java.io.IOException;

/* Direct links:
        * 1. Guava: https://mvnrepository.com/artifact/com.google.guava/guava/33.7.2-jre (get bundle)
        * 2. Tongfei: https://mvnrepository.com/artifact/me.tongfei/progressbar/0.10.2 (get jar)
        * 3. Common Maths (3) : https://mvnrepository.com/artifact/org.apache.commons/commons-math3/3.6.1 (should upgrade to 4)
        * 4. Google Options: https://mvnrepository.com/artifact/com.github.pcj/google-options/1.0.0 (has vulneratbilities)
*/

public class CoreWarsEngine {
  public static void main(String[] args) throws IOException {
    OptionsParser optionsParser = OptionsParser.newOptionsParser(Options.class);
    optionsParser.parseAndExitUponError(args);
    Options options = optionsParser.getOptions(Options.class);
  
    if (options != null && options.headless) {  // options should never be null
      HeadlessCompetitionRunner r = new HeadlessCompetitionRunner(options);
    } else {
      CompetitionWindow c = new CompetitionWindow(options);
      c.setVisible(true);
      c.pack();
    }
  }
}
