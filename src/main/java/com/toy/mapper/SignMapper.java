package com.toy.mapper;

import com.toy.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface SignMapper {
    User selectOneUser(User user);
}
