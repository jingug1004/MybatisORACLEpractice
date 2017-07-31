package com.sd.persistence;

import com.sd.domain.BoardVO;
import com.sd.domain.BoardVO02;
import com.sd.domain.BoardVO03;
import com.sd.domain.PageMake;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class BoardDAOImpl implements BoardDAO {

    private static final Logger logger = LoggerFactory.getLogger(BoardDAOImpl.class);


    @Inject
    private SqlSession session;

//    @Inject
//    @Resource(name="sqlSession02")
//    private SqlSession session02;

//    @Inject
//    private SqlSession session02;

    private static String name = "com.sd.practice02.mappers.testMapper";

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
    public List<BoardVO> listCountCriteria(int page, int perPageNum, String valTest) throws Exception {

        Map<String, Object> paramMap = new HashMap<>();

        paramMap.put("page", page);
        paramMap.put("perPageNum", perPageNum);
        paramMap.put("valTest", valTest);

//        logger.info("lll~~~ ");
//        logger.info("paramMap.get(\"page\") : " + paramMap.get("page"));
//        logger.info("paramMap.put(\"perPageNum\") : " + paramMap.get("perPageNum"));
//        logger.info("paramMap.get(\"valTest\") : " + paramMap.get("valTest"));

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

    @Override
    public List<String> getAttach(String fullName) throws Exception {
        return session.selectList(name + ".getAttach", fullName);
    }

    @Override
    public void findCondPOST(List<String> valTest) throws Exception {
        session.selectList(name + "findCondPOST", valTest);
    }

    @Override
    public List<BoardVO02> listCountCriteria02(int page, int perPageNum, String valTest) throws Exception {

        Map<String, Object> paramMap = new HashMap<>();

        paramMap.put("page", page);
        paramMap.put("perPageNum", perPageNum);
        paramMap.put("valTest", valTest);

//        logger.info("lll~~~ ");
//        logger.info("paramMap.get(\"page\") : " + paramMap.get("page"));
//        logger.info("paramMap.put(\"perPageNum\") : " + paramMap.get("perPageNum"));
//        logger.info("paramMap.get(\"valTest\") : " + paramMap.get("valTest"));

        return session.selectList(name + ".callAll02", paramMap);
    }

    @Override
    public List<BoardVO03> listCountCriteria03(int page, int perPageNum, String valTest) throws Exception {

        Map<String, Object> paramMap = new HashMap<>();

        paramMap.put("page", page);
        paramMap.put("perPageNum", perPageNum);
        paramMap.put("valTest", valTest);

        logger.info("lll~~~ ");
        logger.info("03 paramMap.get(\"page\") : " + paramMap.get("page"));
        logger.info("03 paramMap.put(\"perPageNum\") : " + paramMap.get("perPageNum"));
        logger.info("03 paramMap.get(\"valTest\") : " + paramMap.get("valTest"));

        return session.selectList(name + ".callAll03", paramMap);
    }


}