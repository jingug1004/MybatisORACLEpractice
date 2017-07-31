package com.sd.controller;

import com.sd.service.CsoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.inject.Inject;

/**
 * Created by a on 2017-07-17 오전 11:28
 * hdmetal / com.sd.controller
 * No pain, No gain!
 * What :
 * Why :
 * How :
 *
 * @author 김진국
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

@Controller
//@RequestMapping("/cso/*")
public class CsoController {

    private static final Logger logger = LoggerFactory.getLogger(CsoController.class);

    @Inject
    private CsoService csoService;

    @RequestMapping(value = "/csoGET", method = RequestMethod.GET)
    public String csoGET (Model model) throws Exception {

        model.addAttribute("csoList", csoService.listGET());

//        model.setViewName("cso/csoGET");

        logger.info("csoService.listGET().toString() : " + csoService.listGET().toString());

        logger.info("csoService.listGET().toString() : ");

        return "cso/csoGET";
//        return model;
    }

}