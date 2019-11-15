package org.batfish.question;

import com.google.auto.service.AutoService;
import org.batfish.common.Answerer;
import org.batfish.common.plugin.IBatfish;
import org.batfish.common.plugin.Plugin;
import org.batfish.datamodel.answers.AnswerElement;
import org.batfish.datamodel.questions.Question;
import org.batfish.datamodel.questions.smt.HeaderLocationQuestion;

@AutoService(Plugin.class)
public class GraphRAGQuestionPlugin extends QuestionPlugin {

  @Override
  protected Answerer createAnswerer(Question question, IBatfish batfish) {
    return new GraphRAGAnswerer(question, batfish);
  }

  @Override
  protected Question createQuestion() {
    return new GraphRAGQuestion();
  }

  public static class GraphRAGAnswerer extends Answerer {

    public GraphRAGAnswerer(Question question, IBatfish batfish) {
      super(question, batfish);
    }

    @Override
    public AnswerElement answer() {
      GraphRAGQuestion q = (GraphRAGQuestion) _question;
      return _batfish.arcRAG(q);
    }
  }

  public static class GraphRAGQuestion extends HeaderLocationQuestion {

    @Override
    public boolean getDataPlane() {
      return false;
    }

    @Override
    public String getName() {
      return "arcRAG";
    }

    @Override
    public String prettyPrint() {
        String retString =
            String.format("arcRAG %s", super.prettyPrintParams());
        return retString;
    }
  }
}