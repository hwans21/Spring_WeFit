package com.spring.wefit.diet.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.wefit.command.DietBoardVO;
import com.spring.wefit.commons.PageVO;

@Service
public interface IDietBoardService {
	
	//식단 글 등록
	void regist(DietBoardVO vo);
	
	//식단 글 목록
	List<DietBoardVO> getList(PageVO vo);
	
	//식단 총 게시물 수 (페이징 할 때)
	int getTotal(PageVO vo);
	
	//식단 글 상세보기
	DietBoardVO getContent(int dbNum);
	
	//식단 글 수정
	void update(DietBoardVO vo);
	
	//식단 글 삭제
	void delete (int dbNum);
	
	//식단게시판 조회수 수정
	void updateViewCount(int dbNum);
	
	//식단게시판 좋아요 했는지 확인
	int checkLovely(DietBoardVO vo);
	
	//식단게시판 좋아요 처리
	void insertLovely(DietBoardVO vo);
	
	//식단게시판 신고 했는지 확인
	int checkReport(DietBoardVO vo);
	
	//식단게시판 신고 처리
	void insertReport(DietBoardVO vo);

	//좋아요 카운트
	int countLovely(int dbNum);
	
	//좋아요 삭제
	void deleteLike(DietBoardVO vo);

	// 신고초기화
	   void reportReset(int dbNum);
	
	
	
}
