package com.sd.service;

import com.sd.domain.BoardVO;
import com.sd.domain.BoardVO02;
import com.sd.domain.BoardVO03;
import com.sd.domain.PageMake;

import java.util.List;

public interface BoardService {

//    public List<BoardVO> callAll() throws Exception;

    public List<BoardVO> proc3(PageMake pageMake) throws Exception;

    public List<BoardVO> listCountCriteria(int page, int perPageNum, String valTest) throws Exception;

    public List<BoardVO02> listCountCriteria02(int page, int perPageNum, String valTest) throws Exception;

    public List<BoardVO03> listCountCriteria03(int page, int perPageNum, String valTest) throws Exception;

    public int countPaging() throws Exception;

    public void regist(String fullName) throws Exception;

    public List<String> getAttach (String fullName) throws Exception;

    public void findCondPOST (List<String> valTest) throws Exception;


}