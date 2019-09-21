package life.majiang.community.controller;

import life.majiang.community.model.Question;
import life.majiang.community.model.User;
import life.majiang.community.service.QuestionService;
import life.majiang.community.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

@Controller
public class PublishController {

    @Autowired
    QuestionService questionService;
    @Autowired
    UserService userService;

    @GetMapping("/publish")
    public String publiash() {
        return "publish";
    }

    @PostMapping("/publish")
    public String doPublish(
            @RequestParam("title") String title,
            @RequestParam("description") String description,
            @RequestParam("tag") String tag,
            HttpServletRequest request,
            Model model
    ){
        model.addAttribute("title",title);
        model.addAttribute("description",description);
        model.addAttribute("tag",tag);

        Question question = new Question();
        question.setTitle(title);
        question.setDescription(description);
        question.setTag(tag);

        Cookie[] cookies = request.getCookies();

        User user = null;
        if(cookies != null && cookies.length != 0) {
        for (Cookie cookie :cookies){
            if (cookie.getName().equals("token")){
                String token = cookie.getValue();
                user = userService.findByToken(token);
                if (user!= null){
                    request.getSession().setAttribute("user",user);
                }
                break;
            }
        }
        }
        if(user == null){
                model.addAttribute("error","用户未登录,或登录超时");
                return "publish";
        }
        question.setCreator(user.getId());
        question.setGmtCreate(System.currentTimeMillis());
        question.setGmtModified(question.getGmtCreate());
        questionService.creat(question);
        return "redirect:/";
    }
}
