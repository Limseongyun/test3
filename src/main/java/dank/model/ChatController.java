package main.java.dank.model;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.dank.dao.MemberDao;
import main.java.dank.vo.MemberVO;

@Controller
public class ChatController {

	@Autowired
	MemberDao memberDao;

	@RequestMapping(value = "/chatGide")
	public String chatGidePage(Model m, HttpSession session) {
		if (session.getAttribute("member") == null) {
			session.setAttribute("pageName", "chatGide");
			return "login/login";
		}
		int mem_code = ((MemberVO)session.getAttribute("member")).getMem_code();
		String mem_phn = memberDao.serPhone(mem_code);
		String mem_name = memberDao.serNumToName(mem_code);
		m.addAttribute("mem_phn", mem_phn);
		m.addAttribute("mem_name", mem_name);
		m.addAttribute("mem_code", mem_code);
		return "chat/chatForm";
	}
}
