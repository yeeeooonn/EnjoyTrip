package com.ssafy.attraction_info.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ssafy.attraction_info.model.AttractionInfoDto;
import com.ssafy.attraction_info.model.dao.AttractionInfoDao;
import com.ssafy.attraction_info.model.dao.AttractionInfoDaoImpl;
import com.ssafy.util.PageNavigation;
import com.ssafy.util.SizeConstant;

public class AttractionInfoServiceImpl implements AttractionInfoService {
	private static AttractionInfoService attractioninfoService = new AttractionInfoServiceImpl();
	private AttractionInfoDao attractioninfoDao;
	
	private AttractionInfoServiceImpl() {
		attractioninfoDao = AttractionInfoDaoImpl.getAttractionInfoDao();
	}

	public static AttractionInfoService getAttractionInfoService() {
		return attractioninfoService;
	}

	@Override
	public PageNavigation makePageNavigation(Map<String, String> map) throws Exception {
		PageNavigation pageNavigation = new PageNavigation();

		int naviSize = SizeConstant.NAVIGATION_SIZE;
		int sizePerPage = SizeConstant.LIST_SIZE;
		int currentPage = Integer.parseInt(map.get("pgno"));

		pageNavigation.setCurrentPage(currentPage);
		pageNavigation.setNaviSize(naviSize);
		Map<String, Object> param = new HashMap<String, Object>();
		String sido_code = map.get("sido_code");
		String content_type_id = map.get("content_type_id");
//		if ("userid".equals(key))
//			key = "user_id"; content_type_id
		param.put("sido_code", sido_code.isEmpty() ? "" : sido_code);
		param.put("content_type_id", content_type_id.isEmpty() ? "" : content_type_id);
		param.put("word", map.get("word").isEmpty() ? "" : map.get("word"));

		int totalCount = attractioninfoDao.getTotalArticleCount(param);
		pageNavigation.setTotalCount(totalCount);
		int totalPageCount = (totalCount - 1) / sizePerPage + 1;
		pageNavigation.setTotalPageCount(totalPageCount);
		boolean startRange = currentPage <= naviSize;
		pageNavigation.setStartRange(startRange);
		boolean endRange = (totalPageCount - 1) / naviSize * naviSize < currentPage;
		pageNavigation.setEndRange(endRange);
		pageNavigation.makeNavigator();

		return pageNavigation;
	}

	@Override
	public List<AttractionInfoDto> listTrip(Map<String, String> map) throws Exception {
		Map<String, Object> param = new HashMap<String, Object>();
		String sido_code = map.get("sido_code");
		String content_type_id = map.get("content_type_id");
		String sort = map.get("sort");
//		if("userid".equals(key))
//			key = "user_id";
		param.put("sido_code", sido_code.isEmpty() ? "" : sido_code);
		param.put("content_type_id", content_type_id.isEmpty() ? "" : content_type_id);
		param.put("word", map.get("word").isEmpty() ? "" : map.get("word"));
		param.put("sort", sort.isEmpty() ? "" : sort);
		
		int pgno = Integer.parseInt(map.get("pgno"));
		int start = pgno * SizeConstant.LIST_SIZE - SizeConstant.LIST_SIZE;
		param.put("start", start);
		param.put("listsize", SizeConstant.LIST_SIZE);
		return attractioninfoDao.listTrip(param);
	}
}
