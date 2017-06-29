package com.sd.domain;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMake {

    private int totalCount;
    private int startPage;
    private int endPage;
    private boolean prev;
    private boolean next;

    private int displayPageNum = 10;

    private int page = 1;               // Criteria
    private int perPageNum = 10;        // Criteria

    private String searchType;          // SearchCriteria
    private String searchWord;          // SearchCriteria

    public int getTotalCount() {
        return totalCount;
    }

    // pageMaker
    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;

        calcData();
    }

    // pageMaker
    private void calcData() {
        endPage = (int) (Math.ceil(getPage() / (double) displayPageNum) * displayPageNum);

        startPage = (endPage - displayPageNum) + 1;

        int tempEndPage = (int) (Math.ceil(totalCount / (double) getPerPageNum()));

        if (endPage > tempEndPage) {
            endPage = tempEndPage;
        }

        prev = startPage == 1 ? false : true;

        next = endPage * getPerPageNum() >= totalCount ? false : true;

    }

    public int getStartPage() {
        return startPage;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    public int getEndPage() {
        return endPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }

    public boolean isPrev() {
        return prev;
    }

    public void setPrev(boolean prev) {
        this.prev = prev;
    }

    public boolean isNext() {
        return next;
    }

    public void setNext(boolean next) {
        this.next = next;
    }

    public int getDisplayPageNum() {
        return displayPageNum;
    }

    public void setDisplayPageNum(int displayPageNum) {
        this.displayPageNum = displayPageNum;
    }

    public int getPage() {
        return page;
    }

    // Criteria
    // method for MyBatis SQL Mapper
    public int getPageStart() {

        return (this.page - 1) * perPageNum;
    }

    // Criteria
    public void setPage(int page) {
        if (page <= 0) {
            this.page = 1;
            return;
        }
        this.page = page;
    }

    // Criteria
    // method for MyBatis SQL Mapper
    public int getPerPageNum() {
        return this.perPageNum;
    }

    // Criteria
    public void setPerPageNum(int perPageNum) {

        if(perPageNum <= 0 || perPageNum > 100) {
            this.perPageNum = 10;
            return;
        }

        this.perPageNum = perPageNum;
    }

    // pageMaker
    public String makeQuery(int page) {

        UriComponents uriComponents =
                UriComponentsBuilder.newInstance()
                        .queryParam("page", page)
                        .queryParam("perPageNum", getPerPageNum())
                        .build();
        return uriComponents.toUriString();
    }

    // pageMaker
    public String makeSearch(int page) {

        UriComponents uriComponents =
                UriComponentsBuilder.newInstance()
                        .queryParam("page", page)
                        .queryParam("perPageNum", getPerPageNum())
                        .queryParam("searchType", getSearchType())
                        .queryParam("keyword", getSearchWord())
                        .build();
        return uriComponents.toUriString();
    }

    public String getSearchType() {
        return searchType;
    }

    public void setSearchType(String searchType) {
        this.searchType = searchType;
    }

    public String getSearchWord() {
        return searchWord;
    }

    public void setSearchWord(String searchWord) {
        this.searchWord = searchWord;
    }

    @Override
    public String toString() {
        return "PageMake{" +
                "totalCount=" + totalCount +
                ", startPage=" + startPage +
                ", endPage=" + endPage +
                ", prev=" + prev +
                ", next=" + next +
                ", displayPageNum=" + displayPageNum +
                ", page=" + page +
                ", perPageNum=" + perPageNum +
                ", searchType='" + searchType + '\'' +
                ", searchWord='" + searchWord + '\'' +
                '}';
    }
}