package com.sd.controller;

import com.sd.util.MediaUtils;
import com.sd.util.uploadFileUtils;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.UUID;

@Controller
public class FileUploadController {

    public static final Logger logger =
            LoggerFactory.getLogger(FileUploadController.class);

    @Resource(name = "uploadPath")
    private String uploadPath;

    // 연습용
    @RequestMapping(value = "/uploadForm", method = RequestMethod.GET)
    public void uploadForm() {

    }

    // 연습용
    @RequestMapping(value = "/uploadForm", method = RequestMethod.POST)
    public String uploadForm(MultipartFile file, Model model) throws Exception {

        logger.info("lll~~~ originalName: " + file.getOriginalFilename() + " lll~~~");
        logger.info("lll~~~ size: " + file.getSize() + " lll~~~");
        logger.info("lll~~~ contentType: " + file.getContentType() + " lll~~~");

        String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());

        model.addAttribute("savedName", savedName);

        return "uploadResult";
    }

    private String uploadFile(String originalName, byte[] fileData) throws Exception {

        UUID uuid = UUID.randomUUID();

        String savedName = uuid.toString() + "_" + originalName;

        File target = new File(uploadPath, savedName);

        FileCopyUtils.copy(fileData, target);

        return savedName;
    }

    @RequestMapping(value = "/uploadAjax", method = RequestMethod.GET)
    public void uploadAjax() {

    }

    @ResponseBody
    @RequestMapping(value = "/uploadAjax",
            method = RequestMethod.POST,
            produces = "text/plain;charset=UTF-8")
    public ResponseEntity<String> uploadAjax(MultipartFile file) throws Exception {

        logger.info("lll~~~ originalName: " + file.getOriginalFilename() + " lll~~~");
        logger.info("lll~~~ size: " + file.getSize() + " lll~~~");
        logger.info("lll~~~ contentType: " + file.getContentType() + " lll~~~");

        return new ResponseEntity<>(
                uploadFileUtils.uploadFile(
                        uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.CREATED);

//        return new ResponseEntity<>(file.getOriginalFilename(), HttpStatus.CREATED);
    }

    @ResponseBody
    @RequestMapping("/displayFile")
    public ResponseEntity<byte[]> displayFile(String fileName) throws Exception {

        InputStream inputStream = null;
        ResponseEntity<byte[]> entity = null;

        logger.info("lll~~ File Name : " + fileName + " lll~~~");

        try {
            String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

            MediaType mediaType = MediaUtils.getMediaType(formatName);

            HttpHeaders httpHeaders = new HttpHeaders();

            inputStream = new FileInputStream(uploadPath + fileName);

            if (mediaType != null) {
                httpHeaders.setContentType(mediaType);
            } else {
                fileName = fileName.substring(fileName.indexOf("_") + 1);
                httpHeaders.setContentType(MediaType.APPLICATION_OCTET_STREAM);
                httpHeaders.add("Content-Disposition", "attachment; fileName=\"" +
                            new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");
            }
            entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(inputStream), httpHeaders, HttpStatus.CREATED);

        } catch (Exception exception) {
            exception.printStackTrace();
            entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);

        } finally {
            inputStream.close();
        }
        return entity;
    }

    @ResponseBody
    @RequestMapping(value = "/deleteFile", method = RequestMethod.POST)
    public ResponseEntity<String> deleteFile(String fileName) {

        logger.info("lll~~~ " + fileName + " lll~~~");

        String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

        MediaType mediaType = MediaUtils.getMediaType(formatName);

        if(mediaType != null) {

            String front = fileName.substring(0, 12);
            String end = fileName.substring(14);
            new File(uploadPath + (front + end).replace('/', File.separatorChar)).delete();
        }

        new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();

        return new ResponseEntity<String>("deleted", HttpStatus.OK);
    }



}