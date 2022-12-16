package com.example;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

@Repository
public class BoardDAO {

    private final String P_SELECT = "select * from Recuiting where seq=? ";

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    @Autowired
    SqlSession sqlSession;


    public int insertBoard(BoardVO vo){
        int result = sqlSession.insert("Board.insertBoard",vo);
        return result;
    }

    public int updateBoard(BoardVO vo){
        int result = sqlSession.update("Board.updateBoard",vo);
        return result;
    }


    public int deleteBoard(int id){
        int result = sqlSession.delete("Board.deleteBoard",id);
        return result;
    }

    public BoardVO getBoard(int seq){
        BoardVO one = sqlSession.selectOne("Board.getBoard",seq);
        return one;
    }

    public List<BoardVO> getBoardList(){
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }

    public  String getPhotoFilename(int sid){
        String filename=null;

        try{
            conn = DataSourceTest.getConnection();
            stmt = conn.prepareStatement(P_SELECT);
            stmt.setInt(1,sid);
            rs = stmt.executeQuery();
            if(rs.next()){
                filename = rs.getString("photo");

            }
            rs.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("======> JDBC로 getPhotoFilename() 기능처리");
        return filename;
    }
}
