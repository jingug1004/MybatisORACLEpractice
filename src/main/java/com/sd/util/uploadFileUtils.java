package com.sd.util;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

public class uploadFileUtils {

    public static final Logger logger =
            LoggerFactory.getLogger(uploadFileUtils.class);

    public static String uploadFile(String uploadPath,
                                    String originalName,
                                    byte[] fileData) throws Exception {

        UUID uuid = UUID.randomUUID();

        String savedName = uuid.toString() + "_" + originalName;

        String savedPath = calculatePath(uploadPath);

        File target = new File(uploadPath + savedPath, savedName);

        FileCopyUtils.copy(fileData, target);

        String formatName = originalName.substring(originalName.lastIndexOf(".") + 1);

        String uploadedFileName = null;

        if (MediaUtils.getMediaType(formatName) != null) {
            uploadedFileName = makeThumbnail(uploadPath, savedPath, savedName);
        } else {
            uploadedFileName = makeIcon(uploadPath, savedPath, savedName);
        }

        return uploadedFileName;

    }

    // '/년/월/일'에 맞는 폴더를 생성.
    private static String calculatePath(String uploadPath) {

        Calendar calendar = Calendar.getInstance();

        String yearPath = File.separator + calendar.get(Calendar.YEAR);

        String monthPath = yearPath + File.separator +
                new DecimalFormat("00").format(calendar.get(Calendar.MONTH) + 1);

        String datePath = monthPath + File.separator +
                new DecimalFormat("00").format(calendar.get(Calendar.DATE));

        makeDirectory(uploadPath, yearPath, monthPath, datePath);

        logger.info("lll~~~ " + datePath + " lll~~~");

        return datePath;

    }

    private static void makeDirectory(String uploadPath, String... paths) {

        if (new File(paths[paths.length - 1]).exists()) {
            return;
        }

        for (String path : paths) {

            File directoryPath = new File(uploadPath + path);

            if (!directoryPath.exists()) {
                directoryPath.mkdir();
            }
        }
    }

    private static String makeIcon(String uploadPath,
                                   String path,
                                   String fileName) throws Exception {

        String iconName = uploadPath + path + File.separator + fileName;

        return iconName.substring(uploadPath.length()).replace(File.separatorChar, '/');
    }

    private static String makeThumbnail(String uploadPath,
                                        String path,
                                        String fileName) throws IOException {

        // BufferedImage는 실제 이미지가 아닌 메모리상의 이미지를 의미하는 객체.
        BufferedImage sourceImg =
                ImageIO.read(new File(uploadPath + path, fileName));

        BufferedImage destinationImg =
                Scalr.resize(sourceImg,
                        Scalr.Method.AUTOMATIC,
                        Scalr.Mode.FIT_TO_HEIGHT,
                        100);

        String thumbnailName =
                uploadPath + path + File.separator + "s_" + fileName;

        File newFile = new File(thumbnailName);

        String formatName =
                fileName.substring(fileName.lastIndexOf(".") + 1);

        ImageIO.write(destinationImg, formatName.toUpperCase(), newFile);

        return thumbnailName.substring(uploadPath.length())
                .replace(File.separatorChar, '/');
    }
}