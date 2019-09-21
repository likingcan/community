package life.majiang.community.service;

import life.majiang.community.mapper.QuesstionMapper;
import life.majiang.community.model.Question;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service("QuestionService")
public class QuestionService implements QuesstionMapper {

    @Resource
    QuesstionMapper quesstionMapper;
    @Override
    public void creat(Question question) {
        quesstionMapper.creat(question);
    }
}
