package com.toy.service;

import com.toy.inter.SignServiceInterface;
import com.toy.mapper.SignMapper;
import com.toy.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class SignService implements SignServiceInterface {

    @Autowired(required = false)
    private SignMapper signMapper;

    //한명의 유저 정보 검색
    @Override
    public User selectOneUser(User user) {

        User resultUser = signMapper.selectOneUser(user);

        if (resultUser == null) {
            throw new RuntimeException("!!!");
        }

        return resultUser;
    }

}
