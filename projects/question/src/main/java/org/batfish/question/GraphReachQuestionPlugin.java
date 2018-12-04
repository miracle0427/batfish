package org.batfish.question;

import com.google.auto.service.AutoService;
import org.batfish.common.Answerer;
import org.batfish.common.plugin.IBatfish;
import org.batfish.common.plugin.Plugin;
import org.batfish.datamodel.answers.AnswerElement;
import org.batfish.datamodel.questions.Question;
import org.batfish.datamodel.questions.smt.HeaderLocationQuestion;

@AutoService(Plugin.class)
public class GraphReachQuestionPlugin extends QuestionPlugin {

  @Override
  protected Answerer createAnswerer(Question question, IBatfish batfish) {
    return new GraphReachAnswerer(question, batfish);
  }

  @Override
  protected Question createQuestion() {
    return new GraphReachQuestion();
  }

  public static class GraphReachAnswerer extends Answerer {

    public GraphReachAnswerer(Question question, IBatfish batfish) {
      super(question, batfish);
    }

    @Override
    public AnswerElement answer() {
      GraphReachQuestion q = (GraphReachQuestion) _question;
      return _batfish.arcReach(q);
    }
  }

  public static class GraphReachQuestion extends HeaderLocationQuestion {

    @Override
    public boolean getDataPlane() {
      return false;
    }

    @Override
    public String getName() {
      return "arcReach";
    }

    @Override
    public String prettyPrint() {
        String retString =
            String.format("arcReach %s", super.prettyPrintParams());
        return retString;
    }
  }
}