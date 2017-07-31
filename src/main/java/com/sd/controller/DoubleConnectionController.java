package com.sd.controller;

import com.sd.domain.BoardVO;
import com.sd.domain.PageMake;
import com.sd.service.BoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by a on 2017-07-14 오전 11:31
 * hdmetal / com.sd.controller
 * No pain, No gain!
 * What :
 * Why :
 * How :
 *
 * @author 개발팀 김진국
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2017/04/21  김진국          최초 생성
 *  2017/05/27  이몽룡          인증이 필요없는 URL을 패스하는 로직 추가
 *  </pre>
 * @since 2017/04/10
 */

@Controller
public class DoubleConnectionController {

    private static final Logger logger = LoggerFactory.getLogger(DoubleConnectionController.class);

    @Inject
    private BoardService boardService;

    @RequestMapping(value = "doubleConnection", method = RequestMethod.GET)
    public String mainGET(Model model,
                          BoardVO boardVO,
                          String fullName,
                          PageMake pageMake,
                          HttpServletRequest httpServletRequest) throws Exception {
//        logger.info("lll~~~~ doubleConnection. 01 lll~~~");

        model.addAttribute("list", boardService.listCountCriteria(pageMake.getPage(), pageMake.getPerPageNum(), pageMake.getCheckBox()));

        pageMake = new PageMake();

        pageMake.setCheckBox(httpServletRequest.getParameter("cond"));

        pageMake.setPage(pageMake.getPage());
        pageMake.setPerPageNum(pageMake.getPerPageNum());

        pageMake.setTotalCount(boardService.countPaging());

        model.addAttribute("pageMake", pageMake);

        PageMake pageMake03 = new PageMake();

        model.addAttribute("list03", boardService.listCountCriteria03(pageMake03.getPage(), pageMake03.getPerPageNum(), pageMake03.getCheckBox()));

        boardService.getAttach(fullName);

        return "DoubleConnectionJSP";
    };

    @RequestMapping(value = "doubleTest", method = RequestMethod.GET)
    public String mainTestGET (Model model,
                               BoardVO boardVO,
                               String fullName,
                               PageMake pageMake,
                               HttpServletRequest httpServletRequest) throws Exception {

        model.addAttribute("list03", boardService.listCountCriteria03(pageMake.getPage(), pageMake.getPerPageNum(), pageMake.getCheckBox()));

        return "DoubleConnectionJSPTest";
    }

}