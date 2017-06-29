package com.sd.service;

import com.sd.domain.BoardVO;
import com.sd.domain.PageMake;

import java.util.List;

public interface BoardService {

//    public List<BoardVO> callAll() throws Exception;

    public List<BoardVO> proc3(PageMake pageMake) throws Exception;

    public List<BoardVO> listCountCriteria(int page, int perPageNum) throws Exception;

    public int countPaging() throws Exception;

    public void regist(String fullName) throws Exception;


}