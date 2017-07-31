package com.sd.service;

import com.sd.domain.CsoVO;
import com.sd.persistence.CsoDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

/**
 * Created by a on 2017-07-24 오후 2:23
 * practice01 / com.sd.service
 * No pain, No gain!
 * What :
 * Why :
 * How :
 *
 * @author 개발팀 김진국
 * @version 1.0
 * @see
 * @since 2017/04/10
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2017/04/21  김진국          최초 생성
 *  2017/05/27  이몽룡          인증이 필요없는 URL을 패스하는 로직 추가
 *  </pre>
 *
 */

@Service
public class CsoServiceImpl implements CsoService {

    private static final Logger logger = LoggerFactory.getLogger(CsoServiceImpl.class);

    @Inject
    private CsoDAO csoDAO;

    @Override
    public List<CsoVO> listGET() throws Exception {
        return csoDAO.listGET();
    }
}