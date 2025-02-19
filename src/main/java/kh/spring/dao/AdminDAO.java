package kh.spring.dao;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.AdminUtilsDTO;
import kh.spring.dto.CertiDTO;
import kh.spring.dto.ChalDTO;
import kh.spring.dto.ChalImgDTO;

@Repository
public class AdminDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 관리자 페이지 메인에서 회원 수 출력.
	public int getMemberCount() {
		return mybatis.selectOne("Admin.getMemberCount");
	}
	
	// 관리자 페이지 메인에서 자유게시판 글 수 출력.
	public int getBoardCount() {
		return mybatis.selectOne("Admin.getBoardCount");
	}
	
	// 관리자 페이지 메인에서 챌린지 수 출력.
	public int getChalCount() {
		return mybatis.selectOne("Admin.getChalCount");
	}
	
	// 관리자 페이지 메인에서 등급 출력.
	public AdminUtilsDTO getGradeCount() {
		return mybatis.selectOne("Admin.getGradeCount");
	}
	
	// 관리자 페이지 메인에서 유저수 추이의 날짜 출력.
	public AdminUtilsDTO getDate() {
		return mybatis.selectOne("Admin.getDate");
	}
	
	// 관리자 페이지 메인에서 유저수 추이의 누적 가입자 수 출력.
	public AdminUtilsDTO getSignUpAccumCount(){
		return mybatis.selectOne("Admin.getSignUpAccumCount");
	}
	
	// 관리자 페이지 메인에서 유저수 추이의 일일 가입자 수 출력.
	public AdminUtilsDTO getSignUpDailyCount(){
		return mybatis.selectOne("Admin.getSignUpDailyCount");
	}
	
	// 관리자 페이지 메인에서 등급별 결제 수 출력.	
	public AdminUtilsDTO getPayCountByGrade(){
		return mybatis.selectOne("Admin.getPayCountByGrade");
	}
	
	// 관리자 페이지 챌린지 관리에서 챌린지 목록 출력.
	public List<ChalDTO> selectChalAll(int start, int end){
		Map<String,String> map = new HashMap<>();
		map.put("start", String.valueOf(start));
		map.put("end", String.valueOf(end));
		return mybatis.selectList("Admin.selectChalAll",map);
	}
	
	// 관리자 페이지 챌린지 관리에서 검색 시 챌린지 수 출력.
	public int getChalRecordCountSearch(String select, String keyword) {
		Map<String,String> map = new HashMap<>();
		map.put("select", select);
		map.put("keyword", keyword);
		return mybatis.selectOne("Admin.getChalRecordCountSearch",map);
	}
	
	// 관리자 페이지 챌린지 관리에서 검색 시 챌린지 목록 출력.
	public List<ChalDTO> selectChalAllSearch(int start, int end, String select, String keyword){
		Map<String,String> map = new HashMap<>();
		map.put("start", String.valueOf(start));
		map.put("end", String.valueOf(end));
		map.put("select", select);
		map.put("keyword", keyword);
		return mybatis.selectList("Admin.selectChalAllSearch",map);
	}
	
	// 관리자 페이지 챌린지 관리에서 챌린지 삭제.
	public int chalDelete(int seq){
		return mybatis.delete("Admin.chalDelete",seq);
	}
	
	// 관리자 페이지 챌린지 관리에서 갱신.
	public int chalRenew(int seq) {
		return mybatis.update("Admin.chalRenew",seq);
	}
	
	// 관리자 페이지 챌린지 관리에서 챌린지 상태 변경.
	public int updateChalStatus(int chalSeq, String chalStat){
		Map<String,String> map = new HashMap<>();
		map.put("chalSeq", String.valueOf(chalSeq));
		map.put("chalStat", chalStat);
		return mybatis.update("Admin.updateChalStatus",map);
	}
	
	// 관리자 페이지 챌린지 관리에서 챌린지 등록.
	public int insertChal(ChalDTO dto) throws ParseException {
		mybatis.insert("Admin.insertChal",dto);
		return dto.getChalSeq();
	}
	
	// 관리자 페이지 챌린지 관리에서 챌린지 등록시 이미지 업로드.	
	public int insertChalImg(String oriName, String sysName,int chalSeq) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("oriName", oriName);
		map.put("sysName", sysName);
		map.put("chalSeq", String.valueOf(chalSeq));
		return mybatis.insert("Admin.insertChalImg",map);
	}
	
	// chalSeq로 ChalImg테이블의 imgName 찾기.
	public ChalImgDTO findChalImgName(int chalSeq) {
		return mybatis.selectOne("Admin.findChalImgName",chalSeq);
	}
	
	// 관리자 페이지 챌린지 관리에서 chalSeq로 챌린지 찾기.
	public ChalDTO chalSearchBySeq(int chalSeq){
		return mybatis.selectOne("Admin.chalSearchBySeq",chalSeq);
	}
	
	// 관리자 페이지 챌린지 관리에서 챌린지 수정.
	public int modifyChal(ChalDTO dto) throws ParseException {
		mybatis.update("Admin.modifyChal",dto);
		return dto.getChalSeq();
	}
	
	// 관리자 페이지 챌린지 관리에서 챌린지 수정시 이미지 업로드.
	public int modifyChalImg(String oriName, String sysName,int chalSeq) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("oriName", oriName);
		map.put("sysName", sysName);
		map.put("chalSeq", String.valueOf(chalSeq));
		return mybatis.update("Admin.modifyChalImg",map);
	}
	
	//관리자 인증관리 페이지에서 인증 수 출력
	public int getCertiCount(){
		return mybatis.selectOne("Admin.getCertiCount");
	}
	
	// 관리자 페이지 인증 관리에서 챌린지 목록 출력.
	public List<CertiDTO> selectCertiAll(int start, int end){
		Map<String,String> map = new HashMap<>();
		map.put("start", String.valueOf(start));
		map.put("end", String.valueOf(end));
		return mybatis.selectList("Admin.selectCertiAll",map);
	}
	
	//관리자 페이지 인증 관리에서 삭제
	public int certiDelete(int seq) {
		return mybatis.update("Admin.certiDelete",seq);
	}
	
	// 관리자 인증 관리에서 검색 시 챌린지 수 출력.
	public int getCertiCountSearch(String select, String keyword) {
		Map<String,String> map = new HashMap<>();
		map.put("select", select);
		map.put("keyword", keyword);
		return mybatis.selectOne("Admin.getCertiCountSearch",map);
	}
	
	// 관리자 페이지 챌린지 관리에서 검색 시 챌린지 목록 출력.
	public List<CertiDTO> selectCertiAllSearch(int start, int end, String select, String keyword){
		Map<String,String> map = new HashMap<>();
		map.put("start", String.valueOf(start));
		map.put("end", String.valueOf(end));
		map.put("select", select);
		map.put("keyword", keyword);
		return mybatis.selectList("Admin.selectCertiAllSearch",map);
		}
}