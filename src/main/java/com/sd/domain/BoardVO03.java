package com.sd.domain;

import java.util.Date;

public class BoardVO03 {

    private int dummynum;
    private String dummytitle;
    private String dummywriter;
    private Date dummydate;

    public int getDummynum() {
        return dummynum;
    }

    public void setDummynum(int dummynum) {
        this.dummynum = dummynum;
    }

    public String getDummytitle() {
        return dummytitle;
    }

    public void setDummytitle(String dummytitle) {
        this.dummytitle = dummytitle;
    }

    public String getDummywriter() {
        return dummywriter;
    }

    public void setDummywriter(String dummywriter) {
        this.dummywriter = dummywriter;
    }

    public Date getDummydate() {
        return dummydate;
    }

    public void setDummydate(Date dummydate) {
        this.dummydate = dummydate;
    }

    @Override
    public String toString() {
        return "BoardVO03{" +
                "dummynum=" + dummynum +
                ", dummytitle='" + dummytitle + '\'' +
                ", dummywriter='" + dummywriter + '\'' +
                ", dummydate=" + dummydate +
                '}';
    }
}