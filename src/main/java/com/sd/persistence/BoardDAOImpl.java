package com.sd.persistence;

import com.sd.domain.BoardVO;
import com.sd.domain.PageMake;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class BoardDAOImpl implements BoardDAO {

    @Inject
    private SqlSession session;

    private static String name = "com.sd.practice.mappers.testMapper";

//    @Override
//    public List<BoardVO> callAll() throws Exception {
//        return session.selectList(name + ".callAll");
//    }

    @Override
    public List<BoardVO> proc3(PageMake pageMake) throws Exception {

        Map<String, Object> paramMap = new HashMap<>();

        paramMap.put("min", pageMake.getStartPage());
        paramMap.put("max", pageMake.getEndPage());

        paramMap.put("search_word", pageMake.getSearchWord());

        return session.selectList(name + ".proc3", pageMake);
    }

    @Override
    public List<BoardVO> listCountCriteria(int page, int perPageNum) throws Exception {

        Map<String, Object> paramMap = new HashMap<>();

        paramMap.put("page", page);
        paramMap.put("perPageNum", perPageNum);

        return session.selectList(name + ".callAll", paramMap);
    }

    @Override
    public int countPaging() throws Exception {
        return session.selectOne(name + ".countPaging");
    }

    @Override
    public void addAttach(String fullName) throws Exception {

//        Map<String, Object> paramMap = new HashMap<>();

//        paramMap.put("originalName", boardVO.getTITLE());
//        paramMap.put("saveName", boardVO.getCREA_ID());
//        paramMap.put("uploadPath", boardVO.getFiles());

        session.insert(name + ".addAttach", fullName);

    }

}