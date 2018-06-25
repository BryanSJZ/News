package com.nenu.software.service.impl;

import com.nenu.software.common.entity.Users;
import com.nenu.software.mapper.UsersMapper;
import com.nenu.software.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author shanjz
 * @since 2018/6/25 11:37
 */
@Service("userService")
public class UsersServiceImpl implements UsersService {

    @Autowired
    UsersMapper usersMapper;

    @Override
    public void newUser(Users users) throws Exception {
        usersMapper.newUser(users);
    }

    @Override
    public void delById(int id) throws Exception {
        usersMapper.delById(id);
    }

    @Override
    public Users login(Users users) throws Exception {
        return usersMapper.login(users);
    }
}
