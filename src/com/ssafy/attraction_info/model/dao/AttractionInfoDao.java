package com.ssafy.attraction_info.model.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ssafy.attraction_info.model.AttractionInfoDto;

public interface AttractionInfoDao {

	int getTotalArticleCount(Map<String, Object> param)throws SQLException;
	List<AttractionInfoDto> listTrip(Map<String, Object> param) throws SQLException;

}
