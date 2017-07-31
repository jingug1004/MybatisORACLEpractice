package com.sd.persistence;

import com.sd.domain.CsoVO;

import java.util.List;

/**
 * Created by a on 2017-07-24 오후 1:39
 * practice01 / com.sd.persistence
 * No pain, No gain!
 * What :
 * Why :
 * How :
 *
 * @author 개발팀 김진국
 * @version 1.0
 * @see <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2017/04/21  김진국          최초 생성
 *  2017/05/27  이몽룡          인증이 필요없는 URL을 패스하는 로직 추가
 *  </pre>
 * @since 2017/04/10
 */


public interface CsoDAO {

    public List<CsoVO> listGET () throws Exception;


}