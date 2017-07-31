package com.sd.domain;

import java.util.Date;

/**
 * Created by a on 2017-07-24 오후 1:32
 * practice01 / com.sd.domain
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


public class CsoVO {

    private int fn_productid;
    private String fn_title;
    private int fn_scheduleprogress;
    private int fn_fundinggoal;
    private int fn_iir;
    private int fn_iperiod;

    private int dt_irate;
    private Date dt_fperiod;
    private String dt_ffinish;
    private String dt_fstart;
    private int dt_fmoney;
    private int dt_roi;
    private int dt_guaranteevalue;

    public int getFn_productid() {
        return fn_productid;
    }

    public void setFn_productid(int fn_productid) {
        this.fn_productid = fn_productid;
    }

    public String getFn_title() {
        return fn_title;
    }

    public void setFn_title(String fn_title) {
        this.fn_title = fn_title;
    }

    public int getFn_scheduleprogress() {
        return fn_scheduleprogress;
    }

    public void setFn_scheduleprogress(int fn_scheduleprogress) {
        this.fn_scheduleprogress = fn_scheduleprogress;
    }

    public int getFn_fundinggoal() {
        return fn_fundinggoal;
    }

    public void setFn_fundinggoal(int fn_fundinggoal) {
        this.fn_fundinggoal = fn_fundinggoal;
    }

    public int getFn_iir() {
        return fn_iir;
    }

    public void setFn_iir(int fn_iir) {
        this.fn_iir = fn_iir;
    }

    public int getFn_iperiod() {
        return fn_iperiod;
    }

    public void setFn_iperiod(int fn_iperiod) {
        this.fn_iperiod = fn_iperiod;
    }

    public int getDt_irate() {
        return dt_irate;
    }

    public void setDt_irate(int dt_irate) {
        this.dt_irate = dt_irate;
    }

    public Date getDt_fperiod() {
        return dt_fperiod;
    }

    public void setDt_fperiod(Date dt_fperiod) {
        this.dt_fperiod = dt_fperiod;
    }

    public String getDt_ffinish() {
        return dt_ffinish;
    }

    public void setDt_ffinish(String dt_ffinish) {
        this.dt_ffinish = dt_ffinish;
    }

    public String getDt_fstart() {
        return dt_fstart;
    }

    public void setDt_fstart(String dt_fstart) {
        this.dt_fstart = dt_fstart;
    }

    public int getDt_fmoney() {
        return dt_fmoney;
    }

    public void setDt_fmoney(int dt_fmoney) {
        this.dt_fmoney = dt_fmoney;
    }

    public int getDt_roi() {
        return dt_roi;
    }

    public void setDt_roi(int dt_roi) {
        this.dt_roi = dt_roi;
    }

    public int getDt_guaranteevalue() {
        return dt_guaranteevalue;
    }

    public void setDt_guaranteevalue(int dt_guaranteevalue) {
        this.dt_guaranteevalue = dt_guaranteevalue;
    }

    @Override
    public String toString() {
        return "CsoVO{" +
                "fn_productid=" + fn_productid +
                ", fn_title='" + fn_title + '\'' +
                ", fn_scheduleprogress=" + fn_scheduleprogress +
                ", fn_fundinggoal=" + fn_fundinggoal +
                ", fn_iir=" + fn_iir +
                ", fn_iperoid=" + fn_iperiod +
                ", dt_irate=" + dt_irate +
                ", dt_fperiod=" + dt_fperiod +
                ", dt_ffinish='" + dt_ffinish + '\'' +
                ", dt_fstart='" + dt_fstart + '\'' +
                ", dt_fmoney=" + dt_fmoney +
                ", dt_roi=" + dt_roi +
                ", dt_guaranteevalue=" + dt_guaranteevalue +
                '}';
    }
}