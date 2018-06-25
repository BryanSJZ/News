package com.nenu.software.mapper;

import com.nenu.software.common.entity.Users;
import org.springframework.stereotype.Repository;

/**
 * @author shanjz
 * @since 2018/6/25 11:11
 */
@Repository
public interface UsersMapper {
    /**
     * 添加用户
     * @param users 用户
     * @throws Exception 异常
     */
    public void newUser(Users users) throws Exception;

    /**
     * 删除
     * @param id ID
     * @throws Exception 异常
     */
    public void delById(int id) throws Exception;

    /**
     * 登陆
     * @param users 用户
     * @return 用户
     * @throws Exception 异常
     */
    public Users login(Users users) throws Exception;
}
