package com.toy.inter;

import com.toy.model.User;

public interface SignServiceInterface {
    //한명의 유저 정보 검색
    User selectOneUser(User user);
}
