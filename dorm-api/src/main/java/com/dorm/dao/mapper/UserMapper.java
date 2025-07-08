package com.dorm.dao.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface UserMapper {
    @Update("update student set pwd = #{npwd} where student_id = #{studentId}")
    void updateUserPwd(Integer studentId, String npwd);
}
