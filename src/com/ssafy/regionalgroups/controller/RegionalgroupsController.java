package com.ssafy.regionalgroups.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssafy.attraction_info.model.AttractionInfoDto;
import com.ssafy.attraction_info.service.AttractionInfoService;
import com.ssafy.attraction_info.service.AttractionInfoServiceImpl;
import com.ssafy.util.PageNavigation;
import com.ssafy.util.ParameterCheck;

/**
 * Servlet implementation class RegionalgroupsController
 */
@WebServlet("/regionalgroups")
public class RegionalgroupsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private int pgno;
	private int sido_code;
	private int content_type_id;
	private String word;
	private String sort;
	private String queryStrig;
	
	private AttractionInfoService attractioninfoService;
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		attractioninfoService = AttractionInfoServiceImpl.getAttractionInfoService();
	}
	
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String action = request.getParameter("action");
		String root = request.getContextPath();
		
		pgno = ParameterCheck.notNumberToOne(request.getParameter("pgno"));
		sido_code = ParameterCheck.notNumberToOne(request.getParameter("sido_code"));
		content_type_id = ParameterCheck.notNumberToOne(request.getParameter("content_type_id"));
		word = ParameterCheck.nullToBlank(request.getParameter("word"));
		sort = ParameterCheck.nullToBlank(request.getParameter("sort"));

		
		queryStrig = "?pgno=\" + pgno +?sido_code=" + sido_code + "&content_type_id=" + content_type_id + "&word=" + URLEncoder.encode(word, "utf-8") + "&sort=" + sort;
		String path = "";
		
		if(action.equalsIgnoreCase("triplist")) {
			path = list(request, response);
			forward(request, response, path);
		}
	}
	
	private void forward(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

	private void redirect(HttpServletRequest request, HttpServletResponse response, String path) throws IOException {
		response.sendRedirect(request.getContextPath() + path);
	}
	
	private String list(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("pgno", pgno + "");
			map.put("sido_code", sido_code + "");
			map.put("content_type_id", content_type_id+"");
			map.put("word", word);
			map.put("sort", sort);
			
			List<AttractionInfoDto> list = attractioninfoService.listTrip(map);
			request.setAttribute("trips", list);
			
			PageNavigation pageNavigation = attractioninfoService.makePageNavigation(map);
			request.setAttribute("navigation", pageNavigation);

			return "/about.jsp" + queryStrig;
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "리스트 출력 중 문제 발생!!!");
			return "/error/error.jsp";
		}
	}

}
