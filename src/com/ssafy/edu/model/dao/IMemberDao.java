package com.ssafy.edu.model.dao;

import java.util.List;

import com.ssafy.edu.model.dto.MembersDto;


public interface IMemberDao {
	boolean registry(MembersDto dto);
	MembersDto login(MembersDto dto);
	List<MembersDto> memberlist();
	MembersDto memberDetail(String user_id);
	boolean delete(String user_id);
	boolean updateMember(MembersDto dto);
	String findpassword(String user_id, String email_id);
	MembersDto loginMember(String userId, String userPwd);
}
