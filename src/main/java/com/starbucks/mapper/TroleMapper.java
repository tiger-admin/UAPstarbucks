package com.starbucks.mapper;

import com.starbucks.entity.Trole;
import com.starbucks.util.MyMapper;

import java.util.List;

public interface TroleMapper extends MyMapper<Trole> {

    List<Trole> selectRolesByUserId(Integer userid);

}