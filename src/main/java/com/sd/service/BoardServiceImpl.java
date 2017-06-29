package com.sd.service;

import com.sd.domain.BoardVO;
import com.sd.domain.PageMake;
import com.sd.persistence.BoardDAO;
import org.springframework.stereotype.Service;

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
    public List<BoardVO> listCountCriteria(int page, int perPageNum) throws Exception {
        return boardDAO.listCountCriteria(page, perPageNum);
    }

    @Override
    public int countPaging() throws Exception {
        return boardDAO.countPaging();
    }

    @Override
    public void regist(String fullName) throws Exception {
        boardDAO.addAttach(fullName);
    }
}