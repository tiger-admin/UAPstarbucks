package com.starbucks.service;

import com.starbucks.entity.Tmenu;

import java.util.HashMap;
import java.util.List;

public interface TmenuService extends IService<Tmenu>{

    List<Tmenu> selectMenusByRoleId(Integer roleid);

    List<Tmenu> selectByParentIdAndRoleId(HashMap<String, Object> paraMap);


}