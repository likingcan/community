package life.majiang.community.service;

import life.majiang.community.dto.PaginationDTO;
import life.majiang.community.dto.QuestionDTO;
import life.majiang.community.mapper.QuesstionMapper;
import life.majiang.community.mapper.UserMapper;
import life.majiang.community.model.Question;
import life.majiang.community.model.User;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service("QuestionService")
public class QuestionService{

    @Resource
    QuesstionMapper quesstionMapper;
    @Resource
    UserMapper userMapper;

    public void creat(Question question) {
        quesstionMapper.creat(question);
    }


    public PaginationDTO List(Integer page, Integer size) {

        Integer offset = size * (page - 1);

        List<Question> questions = quesstionMapper.List(offset,size);
        List<QuestionDTO> questionDTOList = new ArrayList<>();

        PaginationDTO paginationDTO = new PaginationDTO();
        for (Question question : questions){
            System.out.println("111111111111111");
            User user = userMapper.findById(question.getCreator());
            System.out.println(user);
            QuestionDTO questionDTO= new QuestionDTO();
            BeanUtils.copyProperties(question,questionDTO);
            questionDTO.setUser(user);
            questionDTOList.add(questionDTO);
        }
        paginationDTO.setQuestions(questionDTOList);
        Integer totalcount = quesstionMapper.count();
        paginationDTO.setPagination(totalcount,page,size);
        return  paginationDTO;
    }

    public  Integer count(){
        return  quesstionMapper.count();
    }
}
