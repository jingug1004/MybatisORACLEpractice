package com.sd.persistence;

import com.sd.domain.BoardVO;
import com.sd.domain.PageMake;

import java.util.List;

public interface BoardDAO {

//    public void create(BoardVO )

//    public List<BoardVO> callAll() throws Exception;

    public List<BoardVO> proc3(PageMake pageMake)throws Exception;

    public List<BoardVO> listCountCriteria(int page, int perPageNum, String valTest) throws  Exception;

    public int countPaging() throws  Exception;

    public void addAttach(String fullName) throws Exception;

    public List<String> getAttach (String fullName) throws Exception;

    public void findCondPOST (List<String> valTest) throws Exception;

}
