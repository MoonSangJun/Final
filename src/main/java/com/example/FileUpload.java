package com.example;

import com.example.BoardVO;
import com.example.BoardDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

public class FileUpload {
    public BoardVO uploadPhoto(HttpServletRequest request){
        String filename = "";
        int sizeLimit = 15*1024*1024;

        String realPath = request.getServletContext().getRealPath("upload");

        File dir = new File(realPath);
        if(!dir.exists()) dir.mkdirs();

        BoardVO one = null;
        MultipartRequest multipartRequest = null;
        try{
            multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
            filename = multipartRequest.getFilesystemName("image");
            one = new BoardVO();
            String seq = multipartRequest.getParameter("seq");
            if(seq != null && !seq.equals("")) one.setSeq(Integer.parseInt(seq));
            one.setPurpose(multipartRequest.getParameter("purpose"));
            one.setNickname(multipartRequest.getParameter("nickname"));
            one.setDuedate(multipartRequest.getParameter("duedate"));
            one.setPersonnel(multipartRequest.getParameter("personnel"));
            one.setApply(multipartRequest.getParameter("apply"));
            one.setIntroduce(multipartRequest.getParameter("introduce"));
            one.setInquire(multipartRequest.getParameter("inquire"));
            one.setManager(multipartRequest.getParameter("manager"));
            one.setQualifications(multipartRequest.getParameter("qualifications"));
            one.setInterview(multipartRequest.getParameter("interview"));



            if(seq != null && !seq.equals("")){
                BoardDAO dao = new BoardDAO();
                String oldfilename = dao.getPhotoFilename(Integer.parseInt(seq));
                if(filename != null && oldfilename != null) FileUpload.deleteFile(request, oldfilename);
                else if(filename == null && oldfilename != null) filename = oldfilename;
            }
            one.setImage(filename);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return one;
    }
    public static void deleteFile(HttpServletRequest request, String filename){
        String filePath = request.getServletContext().getRealPath("upload");

        File f = new File(filePath + "/" + filename);
        if(f.exists()) f.delete();
    }
}
