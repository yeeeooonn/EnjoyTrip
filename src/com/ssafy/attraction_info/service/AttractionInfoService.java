package com.ssafy.attraction_info.service;

import java.util.List;
import java.util.Map;

import com.ssafy.attraction_info.model.AttractionInfoDto;
import com.ssafy.util.PageNavigation;

public interface AttractionInfoService {

	PageNavigation makePageNavigation(Map<String, String> map) throws Exception;
	List<AttractionInfoDto> listTrip(Map<String, String> map) throws Exception;

}
