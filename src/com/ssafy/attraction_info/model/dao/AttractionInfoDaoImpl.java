package com.ssafy.attraction_info.model.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.ssafy.attraction_info.model.AttractionInfoDto;
import com.ssafy.util.DBUtil;

public class AttractionInfoDaoImpl implements AttractionInfoDao {
	private static AttractionInfoDao attractioninfoDao;
	private DBUtil dbUtil;
	
	private AttractionInfoDaoImpl() {
		dbUtil = DBUtil.getInstance();
	}

	public static AttractionInfoDao getAttractionInfoDao() {
		if(attractioninfoDao == null)
			attractioninfoDao = new AttractionInfoDaoImpl();
		return attractioninfoDao;
	}

	@Override
	public int getTotalArticleCount(Map<String, Object> param) throws SQLException {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = dbUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("select count(content_id) \n");
			sql.append("from attraction_info \n");
			String sido_code = (String) param.get("sido_code");
			String content_type_id = (String) param.get("content_type_id");
			String word = (String) param.get("word");

			//검색어 query
			if(!word.isEmpty()) {
				sql.append("where title like concat('%', ?, '%') \n");
			}

			pstmt = conn.prepareStatement(sql.toString());
			// 여기 나중에 문제 있을 듯
			if(!sido_code.isEmpty() && !content_type_id.isEmpty() && !word.isEmpty())
				pstmt.setString(1, word);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt(1);
			}
		} finally {
			dbUtil.close(rs, pstmt, conn);
		}
		return cnt;
	}

	@Override
	public List<AttractionInfoDto> listTrip(Map<String, Object> param) throws SQLException {
		List<AttractionInfoDto> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = dbUtil.getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append(" select i.content_id, i.content_type_id, i.title, i.addr1, i.addr2, i.zipcode, i.tel, i.first_image, i.first_image2, ");
			sql.append(" i.readcount, i.sido_code, i.gugun_code, i.latitude, i.longitude, i.mlevel, d.overview \n");
			sql.append(" from attraction_info i, attraction_description d \n");
			sql.append(" where i.content_id = d.content_id \n");
			
			String sido_code = (String) param.get("sido_code");
			String content_type_id = (String) param.get("content_type_id");
			String word = (String) param.get("word");
			String sort = (String) param.get("sort");

			if(!word.isEmpty()) {
				sql.append(" and title like concat('%', ?, '%') \n");
			}

			//정렬 알고리즘
			if(!sort.isEmpty()) {
				if(sort.equals("title"))  {
					sql.append(" order by title asc \n");					
				}else if(sort.equals("addr1")) {
					sql.append(" order by addr1 asc \n");
				}
			}else {
				System.out.println("빈칸일 때");
				sql.append(" order by content_id desc \n");
			}
			sql.append("limit ?, ?");
			pstmt = conn.prepareStatement(sql.toString());
			

			int idx = 0;
			if(!sido_code.isEmpty() && !content_type_id.isEmpty() && !word.isEmpty()) {
				pstmt.setString(++idx, word);
			}
			
			
			pstmt.setInt(++idx, (Integer) param.get("start"));
			pstmt.setInt(++idx, (Integer) param.get("listsize"));
			rs = pstmt.executeQuery();
			while(rs.next()) {
				AttractionInfoDto attractioninfoDto = new AttractionInfoDto();
				attractioninfoDto.setContent_id(rs.getInt("content_id"));
				attractioninfoDto.setContent_type_id(rs.getInt("content_type_id"));
				attractioninfoDto.setTitle(rs.getString("title"));
				attractioninfoDto.setAddr1(rs.getString("addr1"));
				attractioninfoDto.setAddr2(rs.getString("addr2"));
				attractioninfoDto.setZipcode(rs.getString("zipcode"));
				attractioninfoDto.setTel(rs.getString("tel"));
				attractioninfoDto.setFirst_image(rs.getString("first_image"));
				attractioninfoDto.setFirst_image2(rs.getString("first_image2"));
				attractioninfoDto.setReadcount(rs.getInt("readcount"));
				attractioninfoDto.setSido_code(rs.getInt("sido_code"));
				attractioninfoDto.setGugun_code(rs.getInt("gugun_code"));
				attractioninfoDto.setLatitude(rs.getDouble("latitude"));
				attractioninfoDto.setLongitude(rs.getDouble("longitude"));
				attractioninfoDto.setMlevel(rs.getString("mlevel"));
				attractioninfoDto.setOverview(rs.getString("overview"));
				list.add(attractioninfoDto);
			}
		} finally {
			dbUtil.close(rs, pstmt, conn);
		}
		return list;
	}


	
}
