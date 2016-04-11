package com.zyy.ssm.mapper;

import com.zyy.ssm.po.User;

public interface UserMapperCustom {
	User findUserByUsernameAndPassword(User user);

	User findUserByUsername(User user);

	User findUserByEmail(String email);

	void updateStateByPrimaryKey(Integer userid);
}
