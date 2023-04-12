package com.ssafy.edu.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssafy.edu.model.dto.MembersDto;
import com.ssafy.edu.model.service.IMemberService;
import com.ssafy.edu.model.service.MemberServiceImpl;

@WebServlet("/member")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	IMemberService mservice;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		mservice= MemberServiceImpl.getInstance();
		String path="";
		String root=request.getContextPath();
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("registry")) {
			path=root+"/member/registry.jsp";
			response.sendRedirect(path);
		}else if(action.equalsIgnoreCase("registryaf")) {
			path="message.jsp";
			String user_id=request.getParameter("user_id");
			String user_name=request.getParameter("user_name");
			String user_password=request.getParameter("user_password");
			String email_id=request.getParameter("email_id");
			String email_domain=request.getParameter("email_domain");
			boolean isS=mservice.registry(new MembersDto(user_id, user_name, user_password, email_id, email_domain));
			if(isS) {  //5
				//6
				request.setAttribute("mti", "로그인하기");
				request.setAttribute("msg", "회원가입에 성공했습니다.");
				request.setAttribute("url", root+"/index.jsp");
			}else {
				request.setAttribute("mti", "다시 가입하기");
				request.setAttribute("msg", "회원가입에 실패했습니다.");
				request.setAttribute("url", root+"/member/registry.jsp");
			}
			//7 request scope message.jsp로 msg와 url을 가지고가자. 
			RequestDispatcher dispatcher=request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
		}else if(action.equalsIgnoreCase("home")) {    //    2. if 분기
			response.sendRedirect(root+"/index.jsp");// 7. go
		}
		/**************로그인*******************/
		else if(action.equalsIgnoreCase("login")) {    //    2. if 분기
			String user_id=request.getParameter("user_id");
			String user_password=request.getParameter("user_password");
			MembersDto mdto=mservice.login(new MembersDto(user_id, user_password));
			HttpSession session=request.getSession();
			//System.out.println(mdto.toString());
			if(mdto!=null) {  // 회원가입이 되어있음.
				session.setAttribute("login", mdto);
				if (user_id.equals("admin")) {
					response.sendRedirect(root + "/index.jsp");
				}
				else {
					response.sendRedirect(root + "/index.jsp");
				}
			} 
			else {
				session.invalidate();
				response.sendRedirect(root+"/member?action=home");
			}
			
		}else if(action.equalsIgnoreCase("logout")) {    //    2. if 분기
			HttpSession session=request.getSession();
			session.invalidate();
			response.sendRedirect(root + "/index.jsp");
		}
		/***************회원 조회*********************/
		else if(action.equalsIgnoreCase("memberlist")) {    //    2. if 분기
			request.setAttribute("members",mservice.memberlist());
			//7 request scope message.jsp로 msg와 url을 가지고가자. 
			RequestDispatcher dispatcher=request.getRequestDispatcher("./member/memberlist.jsp");
			dispatcher.forward(request, response);
		}
		/***************회원 상세 조회**********************/
		else if(action.equalsIgnoreCase("detail")) {    //    2. if 분기
			String user_id=request.getParameter("user_id");
			System.out.println("controller : " + user_id);
			request.setAttribute("member",mservice.memberDetail(user_id));
			RequestDispatcher dispatcher=request.getRequestDispatcher("./member/memberdetail.jsp");
			dispatcher.forward(request, response);
		}
		/***************회원 삭제*******************/
		else if (action.equalsIgnoreCase("delete")) {
			String user_id=request.getParameter("user_id");
			boolean isS=mservice.delete(user_id);
			// dao  4
			if(isS) {  //5
				//6
				request.setAttribute("mti", "회원목록보기");
				request.setAttribute("msg", "회원삭제에 성공했습니다.");
				request.setAttribute("url", root+"/member?action=memberlist");
			}else {
				request.setAttribute("mti", "회원목록보기");
				request.setAttribute("msg", "회원삭제에 실패했습니다.");
				request.setAttribute("url", root+"/member?action=memberlist");
			}
			//7 request scope message.jsp로 msg와 url을 가지고가자. 
			RequestDispatcher dispatcher=request.getRequestDispatcher("message.jsp");
			dispatcher.forward(request, response);
			
		} 
		/****************회원 수정*****************/
		else if (action.equalsIgnoreCase("updateMemberaf")) {
			String user_id=request.getParameter("user_id");
			String user_name=request.getParameter("user_name");
			String user_password=request.getParameter("user_password");
			String email_id=request.getParameter("email_id");
			String email_domain=request.getParameter("email_domain");
			String join_date=request.getParameter("join_date");
			
			boolean isS=mservice.updateMember(new MembersDto(user_id, user_name, user_password, email_id, email_domain, join_date));
			
			// dao  4
			if(isS) {  //5
				//6
				System.out.println("성공");
				request.setAttribute("mti", "회원목록보기");
				request.setAttribute("msg", "회원수정에 성공했습니다.");
				request.setAttribute("url", root+"/member?action=memberlist");
			}else {
				System.out.println("실패");
				request.setAttribute("mti", "회원목록보기");
				request.setAttribute("msg", "회원수정에 실패했습니다.");
				request.setAttribute("url", root+"/member?action=memberlist");
			}
			//7 request scope message.jsp로 msg와 url을 가지고가자. 
			RequestDispatcher dispatcher=request.getRequestDispatcher("message.jsp");
			dispatcher.forward(request, response);
		} 
		/****************회원 수정 탭으로 이동*******************/
		else if(action.equalsIgnoreCase("updatemember")) {    //    2. if 분기
			String user_id=request.getParameter("user_id");
			request.setAttribute("member",mservice.memberDetail(user_id));
			//7 request scope message.jsp로 msg와 url을 가지고가자. 
			RequestDispatcher dispatcher=request.getRequestDispatcher("./member/memberupdate.jsp");
			dispatcher.forward(request, response);
		}
		/***************비밀번호 찾기******************/
		else if(action.equalsIgnoreCase("findpassword")) {
			String user_id = request.getParameter("user_id");
			String email_id = request.getParameter("email_id");
			String password = mservice.findpassword(user_id, email_id);
			
			if (password != null) {
				System.out.println("성공");
				request.setAttribute("msg", "비밀번호는 "+ password +" 입니다.");
				request.setAttribute("mti", "메인으로");
				request.setAttribute("url", root+"/index.jsp");
			}
			else {
				System.out.println("실패");	
				request.setAttribute("msg", "없는 아이디입니다.");
				request.setAttribute("mti", "메인으로");
				request.setAttribute("url", root+"/index.jsp");
			}
			RequestDispatcher dispatcher=request.getRequestDispatcher("/message.jsp");
			dispatcher.forward(request, response);
		}
	}

}
