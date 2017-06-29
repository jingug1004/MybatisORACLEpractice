function checkImageType(fileName) {

    var pattern = /jpg|gif|png|jpeg/i;

    return fileName.match(pattern);
}



function getFileInfo(fullName) {

    var fileName, imgsrc, getLink;

    var fileLink;

    if (checkImageType(fullName)) {
        imgsrc = "/displayFile?fileName=" + fullName;
        fileLink = fullName.substr(14);

        var front = fullName.substr(0, 12);
        var end = fullName.substr(14);

        getLink = "/displayFile?fileName=" + front + end;

    } else {
        imgsrc = "/resources/dist/img/file.png";
        fileLink = fullName.substr(12);
        getLink = "/displayFile?fileName=" + fullName;
    }

    fileName = fileLink.substr(fileLink.indexOf("_") + 1);

    return {
        fileName: fileName, imgsrc: imgsrc, getLink: getLink, fullName: fullName
    };
}



function getImageLink(fileName) {

    if (!checkImageType(fileName)) {
        return;
    }

    var front = fileName.substr(0, 12);
    var end = fileName.substr(14);

    return front + end;
}



function getOriginalName(fileName) {

    if (checkImageType(fileName)) {
        return;
    }

    var idx = fileName.indexOf("_") + 1;
    return fileName.substr(idx);
}


