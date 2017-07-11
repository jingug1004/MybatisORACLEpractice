package com.sd.service;

import com.sd.domain.BoardVO;
import com.sd.domain.PageMake;
import com.sd.persistence.BoardDAO;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;
import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {

    @Inject
    private BoardDAO boardDAO;

//    @Override
//    public List<BoardVO> callAll() throws Exception {
//        return boardDAO.callAll();
//    }

    @Override
    public List<BoardVO> proc3(PageMake pageMake) throws Exception {
        return boardDAO.proc3(pageMake);
    }

    @Override
    public List<BoardVO> listCountCriteria(int page, int perPageNum, String valTest) throws Exception {
        return boardDAO.listCountCriteria(page, perPageNum, valTest);
    }

    @Override
    public int countPaging() throws Exception {
        return boardDAO.countPaging();
    }

    @Override
    public void regist(String fullName) throws Exception {
        boardDAO.addAttach(fullName);
    }

    @Override
    @ResponseBody
    public List<String> getAttach(String fullName) throws Exception {
        return boardDAO.getAttach(fullName);
    }

    @Override
    public void findCondPOST(List<String> valTest) throws Exception {
        boardDAO.findCondPOST(valTest);
    }


}