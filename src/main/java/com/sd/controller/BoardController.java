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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class BoardController {

    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

    @Inject
    private BoardService boardService;

    //    @ResponseBody
    @RequestMapping(value = "/callAll", method = RequestMethod.GET)
    public String callAll(Model model,
                          BoardVO boardVO,
                          String fullName,
                          PageMake pageMake,
                          HttpServletRequest httpServletRequest) throws Exception {

        logger.info("\n\nlll~~~~ Show all list. lll~~~");

        model.addAttribute("list", boardService.listCountCriteria(pageMake.getPage(), pageMake.getPerPageNum(), pageMake.getCheckBox()));

        pageMake = new PageMake();

        pageMake.setCheckBox(httpServletRequest.getParameter("cond"));

        logger.info("httpServletRequest.getParameter(cond)" + httpServletRequest.getParameter("cond"));

//        model.addAttribute("callAll", boardService.callAll());

        pageMake.setPage(pageMake.getPage());
        pageMake.setPerPageNum(pageMake.getPerPageNum());

        pageMake.setTotalCount(boardService.countPaging());

        model.addAttribute("pageMake", pageMake);

        logger.info("pageMake.getCheckBox()" + pageMake.getCheckBox());

        boardService.getAttach(fullName);

        return "board";

    }

    @RequestMapping(value = "/callAll02a", method = RequestMethod.GET)
    public String callAll02b(Model model,
                             BoardVO boardVO,
                             String fullName,
                             PageMake pageMake,
                             HttpServletRequest httpServletRequest) throws Exception {

        logger.info("\n\nlll~~~~ Show all list. lll~~~");

        pageMake.setCheckBox(httpServletRequest.getParameter("cond"));

        model.addAttribute("list", boardService.listCountCriteria(pageMake.getPage(), pageMake.getPerPageNum(), pageMake.getCheckBox()));

        pageMake = new PageMake();

        pageMake.setCheckBox(httpServletRequest.getParameter("cond"));

        logger.info("httpServletRequest.getParameter(cond)" + httpServletRequest.getParameter("cond"));

//        model.addAttribute("callAll", boardService.callAll());

        pageMake.setPage(pageMake.getPage());
        pageMake.setPerPageNum(pageMake.getPerPageNum());

        pageMake.setTotalCount(boardService.countPaging());

        model.addAttribute("pageMake", pageMake);

        logger.info("pageMake.getCheckBox()" + pageMake.getCheckBox());

        boardService.getAttach(fullName);

        return "board";

    }

    @RequestMapping(value = "/proc3", method = RequestMethod.GET)
    public void proc3(HttpSession session,
                      HttpServletRequest request,
                      Model model,
                      BoardVO boardVO) throws Exception {

        logger.info("lll~~~ " + session + " lll~~~");

//        model.addAttribute("list", boardService.proc3());

        PageMake pageMake = new PageMake();

        pageMake.setPage(pageMake.getPage());
        pageMake.setTotalCount(pageMake.getTotalCount());
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registPOST(BoardVO boardVO,
                             RedirectAttributes redirectAttributes) throws Exception {

        logger.info("lll~~~ regist post ........... lll~~~");
        logger.info(boardVO.toString());

        String[] files = boardVO.getFiles();

        if (files == null) {
            return "redirect:/callAll";
        }

        for (String fileName : files) {
            boardService.regist(fileName);
        }

        redirectAttributes.addFlashAttribute("msg", "SUCCESS");

        return "redirect:/callAll";

    }

    @ResponseBody
    @RequestMapping(value = "/findCondition", method = RequestMethod.POST)
    public String findCondPOST(
            @RequestParam(value = "toData[]", required = false) List<String> valTest) throws Exception {

        logger.info("\n\nlll~~~ @ResponseBody findCondPOST valTest " + valTest);

//        int i = 0;
//        for( String value : valTest ){
//            logger.info( ">>> name's value : " + value + "\tage : " + valTest.get(i) );
//            i++;
//        }
//        boardService.findCondPOST(valTest);

        return "succ";
    }
}