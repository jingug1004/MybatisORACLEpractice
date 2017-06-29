package com.sd.domain;

import java.util.Date;

public class BoardVO {

    private int IDX;
    private int PARENT_IDX;
    private String TITLE;
    private String CONTENTS;
    private int HIT_CNT;
    private String DEL_GB;
    private Date CREA_DTM;
    private String CREA_ID;

    private String[] files;

    public String[] getFiles() {
        return files;
    }

    public void setFiles(String[] files) {
        this.files = files;
    }

    public int getIDX() {
        return IDX;
    }

    public void setIDX(int IDX) {
        this.IDX = IDX;
    }

    public int getPARENT_IDX() {
        return PARENT_IDX;
    }

    public void setPARENT_IDX(int PARENT_IDX) {
        this.PARENT_IDX = PARENT_IDX;
    }

    public String getTITLE() {
        return TITLE;
    }

    public void setTITLE(String TITLE) {
        this.TITLE = TITLE;
    }

    public String getCONTENTS() {
        return CONTENTS;
    }

    public void setCONTENTS(String CONTENTS) {
        this.CONTENTS = CONTENTS;
    }

    public int getHIT_CNT() {
        return HIT_CNT;
    }

    public void setHIT_CNT(int HIT_CNT) {
        this.HIT_CNT = HIT_CNT;
    }

    public String getDEL_GB() {
        return DEL_GB;
    }

    public void setDEL_GB(String DEL_GB) {
        this.DEL_GB = DEL_GB;
    }

    public Date getCREA_DTM() {
        return CREA_DTM;
    }

    public void setCREA_DTM(Date CREA_DTM) {
        this.CREA_DTM = CREA_DTM;
    }

    public String getCREA_ID() {
        return CREA_ID;
    }

    public void setCREA_ID(String CREA_ID) {
        this.CREA_ID = CREA_ID;
    }

    @Override
    public String toString() {
        return "BoardVO{" +
                "IDX=" + IDX +
                ", PARENT_IDX=" + PARENT_IDX +
                ", TITLE='" + TITLE + '\'' +
                ", CONTENTS='" + CONTENTS + '\'' +
                ", HIT_CNT=" + HIT_CNT +
                ", DEL_GB='" + DEL_GB + '\'' +
                ", CREA_DTM=" + CREA_DTM +
                ", CREA_ID='" + CREA_ID + '\'' +
                '}';
    }
}