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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class BoardController {

    private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

    @Inject
    private BoardService boardService;

    @RequestMapping(value = "/callAll", method = RequestMethod.GET)
    public String callAll(Model model,
                          BoardVO boardVO,
                          PageMake pageMake) throws Exception {

        logger.info("lll~~~~ Show all list. lll~~~");

//        model.addAttribute("callAll", boardService.callAll());
        model.addAttribute("list", boardService.listCountCriteria(pageMake.getPage(), pageMake.getPerPageNum()));

        pageMake = new PageMake();

        pageMake.setPage(pageMake.getPage());
        pageMake.setPerPageNum(pageMake.getPerPageNum());

        pageMake.setTotalCount(boardService.countPaging());

        model.addAttribute("pageMake", pageMake);

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

}