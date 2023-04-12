package com.ssafy.edu.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ssafy.edu.model.dto.MembersDto;
import com.ssafy.util.DBUtil;


public class MemberDaoImpl implements IMemberDao {

	DBUtil dbutil;
	
	public MemberDaoImpl() {
		dbutil=DBUtil.getInstance();
	}
	@Override
	public boolean registry(MembersDto dto) {
		StringBuilder sql=new StringBuilder();
		sql.append(" insert into members(user_id,user_name,user_password, ")
		.append(" email_id,email_domain,join_date ) ")
		.append(" values(?,?,sha2(?,256),?,?,now()) ");
		Connection conn=null;
		PreparedStatement psmt=null;
		int count=0;
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			int i=1;
			psmt.setString(i++, dto.getUser_id());
			psmt.setString(i++, dto.getUser_name());
			psmt.setString(i++, dto.getUser_password());
			psmt.setString(i++, dto.getEmail_id());
			psmt.setString(i++, dto.getEmail_domain());
			count=psmt.executeUpdate();
		}  
		catch (SQLException e) {
			System.out.println("MemberDaoImpl registry :"+e);
		} finally {
			dbutil.close(psmt, conn);
		} 
		
		return count>0 ? true: false;
	}

	@Override
	public MembersDto login(MembersDto dto) {
		MembersDto mdto=null;
		StringBuilder sql=new StringBuilder();
		sql.append(" select user_id,user_name, email_id,email_domain  ");
		sql.append(" from members where user_id=? and user_password=sha2(?,256) ");
		sql.append(" and del_flag=0 ");
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			int i=1;
			psmt.setString(i++, dto.getUser_id());
			psmt.setString(i++, dto.getUser_password());
			rs=psmt.executeQuery();
			while(rs.next()) {
				int j=1;
				mdto=new MembersDto(
						rs.getString(j++), 
						rs.getString(j++), 
						"", 
						rs.getString(j++), 
						rs.getString(j++));
			}
			
		} catch (SQLException e) {
			System.out.println("login exception :"+e);
		}finally {
			dbutil.close(rs,psmt,conn);
		}
		return mdto;
	}
	@Override
	public List<MembersDto> memberlist() {
		List<MembersDto> members=new ArrayList<>();
		StringBuilder sql=new StringBuilder();
		sql.append(" select user_id, user_name,user_password, ");
		sql.append(" email_id,email_domain,join_date ");
		sql.append(" from members ");
		sql.append(" where del_flag=0 ");
		sql.append(" order by user_id ");
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			rs=psmt.executeQuery();
			while(rs.next()) {
				int j=1;
				MembersDto dto=new MembersDto(
						rs.getString(j++), 
						rs.getString(j++), 
						rs.getString(j++),
						rs.getString(j++), 
						rs.getString(j++),  
						rs.getString(j++));
				members.add(dto);
			}
			
		} catch (SQLException e) {
			System.out.println("memberlist exception :"+e);
		}finally {
			dbutil.close(rs,psmt,conn);
		}
		return members;
	}
	@Override
	public MembersDto memberDetail(String user_id) {
		MembersDto mdto=null;
		StringBuilder sql=new StringBuilder();
		sql.append(" select user_id, user_name,user_password, ");
		sql.append(" email_id,email_domain,join_date ");
		sql.append(" from members ");
		sql.append(" where user_id=? and del_flag=0 ");
		// ?가 1개
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			psmt.setString(1, user_id);
			rs=psmt.executeQuery();
			while(rs.next()) {
				int j=1;
				mdto=new MembersDto(
						rs.getString(j++), 
						rs.getString(j++), 
						rs.getString(j++),
						rs.getString(j++), 
						rs.getString(j++),  
						rs.getString(j++));
			}
			
		} catch (SQLException e) {
			System.out.println("memberDetail exception :"+e);
		}finally {
			dbutil.close(rs,psmt,conn);
		}
		System.out.println("dao : " + mdto.toString());
		
		return mdto;
	}
	/***************회원삭제 : del_flag = 1로*******************/
	@Override
	public boolean delete(String user_id) {
		StringBuilder sql=new StringBuilder();
		sql.append(" update members set del_flag=1 ");
		sql.append(" where user_id=? ");
		Connection conn=null;
		PreparedStatement psmt=null;
		int count=0;
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			psmt.setString(1, user_id);
			count = psmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("delete exception :"+e);
		}finally {
			dbutil.close(psmt,conn);
		}
		
		return count >0 ? true: false;
	
	}
	/*	  `user_id` VARCHAR(16) NOT NULL,
	  `user_name` VARCHAR(20) NOT NULL,
	  `user_password` VARCHAR(16) NOT NULL,
	  `email_id` VARCHAR(20) NULL DEFAULT NULL,
	  `email_domain` VARCHAR(45) NULL DEFAULT NULL,
	  `join_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,*/
	/*************회원 정보 수정********************/
	@Override
	public boolean updateMember(MembersDto dto) {
		StringBuilder sql=new StringBuilder();
		sql.append(" update members set user_name=?,user_password=?, ");
		sql.append(" email_id=?,email_domain=?");
		sql.append(" where user_id=? ");
		// ? : 5개
		Connection conn=null;
		PreparedStatement psmt=null;
		int count=0;
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			int i = 1;
			psmt.setString(i++, dto.getUser_name());
			psmt.setString(i++, dto.getUser_password());
			psmt.setString(i++, dto.getEmail_id());
			psmt.setString(i++, dto.getEmail_domain());
			psmt.setString(i++, dto.getUser_id());
			
			count = psmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("updateMember exception :"+e);
		}finally {
			dbutil.close(psmt,conn);
		}
		
		return count > 0 ? true: false;
	}
	@Override
	public String findpassword(String user_id, String email_id) {
		String password = null;
		StringBuilder sql=new StringBuilder();
		sql.append(" select user_password  ");
		sql.append(" from members where user_id=? and email_id=? ");
		sql.append(" and del_flag=0 ");
		Connection conn=null;
		PreparedStatement psmt=null;
		ResultSet rs=null;
		try {
			conn=dbutil.getConnection();
			psmt=conn.prepareStatement(sql.toString());
			int i=1;
			psmt.setString(i++, user_id);
			psmt.setString(i++, email_id);
			rs=psmt.executeQuery();
			while(rs.next()) {
				int j=1;
				password= rs.getString(j++);
			}
			
		} catch (SQLException e) {
			System.out.println("findpassword exception :"+e);
		}finally {
			dbutil.close(rs,psmt,conn);
		}
		return password;
	}
	
	@Override
	public MembersDto loginMember(String userId, String userPwd) {
		MembersDto memberDto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			StringBuilder loginMember = new StringBuilder();
			loginMember.append("select user_id, user_name \n");
			loginMember.append("from members \n");
			loginMember.append("where user_id = ? and user_password = ? \n");
			pstmt = conn.prepareStatement(loginMember.toString());
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				memberDto = new MembersDto();
				memberDto.setUser_id(rs.getString("user_id"));
				memberDto.setUser_name(rs.getString("user_name"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbutil.close(rs, pstmt, conn);
		}
		return memberDto;
	}

}
