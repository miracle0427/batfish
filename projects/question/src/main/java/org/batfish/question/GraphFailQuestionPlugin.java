package org.batfish.question;

import com.google.auto.service.AutoService;
import org.batfish.common.Answerer;
import org.batfish.common.plugin.IBatfish;
import org.batfish.common.plugin.Plugin;
import org.batfish.datamodel.answers.AnswerElement;
import org.batfish.datamodel.questions.Question;
import org.batfish.datamodel.questions.smt.HeaderLocationQuestion;

@AutoService(Plugin.class)
public class GraphFailQuestionPlugin extends QuestionPlugin {

  @Override
  protected Answerer createAnswerer(Question question, IBatfish batfish) {
    return new GraphFailAnswerer(question, batfish);
  }

  @Override
  protected Question createQuestion() {
    return new GraphFailQuestion();
  }

  public static class GraphFailAnswerer extends Answerer {

    public GraphFailAnswerer(Question question, IBatfish batfish) {
      super(question, batfish);
    }

    @Override
    public AnswerElement answer() {
      GraphFailQuestion q = (GraphFailQuestion) _question;
      return _batfish.arcFail(q);
    }
  }

  public static class GraphFailQuestion extends HeaderLocationQuestion {

    @Override
    public boolean getDataPlane() {
      return false;
    }

    @Override
    public String getName() {
      return "arcFail";
    }

    @Override
    public String prettyPrint() {
        String retString =
            String.format("arcFail %s", super.prettyPrintParams());
        return retString;
    }
  }
}