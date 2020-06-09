
package dank.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dank.mvc.vo.MemberVO;
import dank.mvc.vo.PageVO;

@Repository
public class MemberDao {

	@Autowired
	private SqlSessionTemplate ss;

	public int memberAdd(MemberVO vo) {
		// 입력처리되면1, 실패하면 0을 반환한다.
		return ss.insert("member.add", vo);
	}

	public String nameChk(String email) {
		return ss.selectOne("member.namechk", email);
	}
	
	public MemberVO numToEmailName(int num) {
		return ss.selectOne("member.serNameEmail", num);
	}

	public List<MemberVO> getList(PageVO svo) {
		return ss.selectList("member.list", svo);
	}

	public List<MemberVO> getSeachList(PageVO svo) {
		return ss.selectList("member.searchlist", svo);
	}

	public int getTotalCount() {
		return ss.selectOne("member.totalCount");
	}

}
