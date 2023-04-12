package com.ssafy.edu.model.service;

import java.util.List;

import com.ssafy.edu.model.dao.IMemberDao;
import com.ssafy.edu.model.dao.MemberDaoImpl;
import com.ssafy.edu.model.dto.MembersDto;

public class MemberServiceImpl implements IMemberService {

	private static  IMemberService mservice=new MemberServiceImpl();
	private MemberServiceImpl() {
		mdao=new MemberDaoImpl();
	}
	public static IMemberService getInstance() {
		return mservice;
	}
	
	private IMemberDao mdao;
	//-------------------싱글톤
	
	@Override
	public boolean registry(MembersDto dto) {
		return mdao.registry(dto);
	}

	@Override
	public MembersDto login(MembersDto dto) {
		return mdao.login(dto);
	}
	@Override
	public List<MembersDto> memberlist() {
		return mdao.memberlist();
	}
	@Override
	public MembersDto memberDetail(String user_id) {
		System.out.println("service :" +  user_id);
		return mdao.memberDetail(user_id);
	}
	@Override
	public boolean delete(String user_id) {
		return mdao.delete(user_id);
	}
	@Override
	public boolean updateMember(MembersDto dto) {
		return mdao.updateMember(dto);
	}
	@Override
	public String findpassword(String user_id, String email_id) {
		return mdao.findpassword(user_id, email_id);
	}
	@Override
	public MembersDto loginMember(String userId, String userPwd) {
		return mdao.loginMember(userId, userPwd);
	}

}
