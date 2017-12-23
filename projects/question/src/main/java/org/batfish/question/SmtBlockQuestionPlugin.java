package org.batfish.question;

import com.google.auto.service.AutoService;
import org.batfish.common.Answerer;
import org.batfish.common.plugin.IBatfish;
import org.batfish.common.plugin.Plugin;
import org.batfish.datamodel.answers.AnswerElement;
import org.batfish.datamodel.questions.Question;
import org.batfish.datamodel.questions.smt.HeaderLocationQuestion;

@AutoService(Plugin.class)
public class SmtBlockQuestionPlugin extends QuestionPlugin {

  @Override
  protected Answerer createAnswerer(Question question, IBatfish batfish) {
    return new BlockAnswerer(question, batfish);
  }

  @Override
  protected Question createQuestion() {
    return new BlockQuestion();
  }

  public static class BlockAnswerer extends Answerer {

    public BlockAnswerer(Question question, IBatfish batfish) {
      super(question, batfish);
    }

    @Override
    public AnswerElement answer() {
      BlockQuestion q = (BlockQuestion) _question;
      return _batfish.smtBlock(q);
    }
  }

  public static class BlockQuestion extends HeaderLocationQuestion {

    @Override
    public boolean getDataPlane() {
      return false;
    }

    @Override
    public String getName() {
      return "smt-block";
    }

    @Override
    public String prettyPrint() {
        String retString =
            String.format("smt-block %s", super.prettyPrintParams());
        return retString;
    }
  }
}
