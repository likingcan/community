package life.majiang.community.service;

import life.majiang.community.mapper.UserMapper;
import life.majiang.community.model.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("UserService")
public class UserService implements UserMapper {
    @Resource
    private UserMapper usermapper;

    public void insert(User user) {
        System.out.println("执行到service");
        usermapper.insert(user);
    }

    @Override
    public User findByToken(String token) {

        return usermapper.findByToken(token);
    }

    @Override
    public User findById(Integer creator) {
        User user = usermapper.findById(creator);
        System.out.println("头像地址***********"+user.getAvatarUrl());
        return user;

    }
}
