package com.limn.update.server.bean;

import java.util.List;

public class FileServerListVo extends ResponseVo {

    List<FileServerVo> fileServerVoList;

    public List<FileServerVo> getFileServerVoList() {
        return fileServerVoList;
    }

    public void setFileServerVoList(List<FileServerVo> fileServerVoList) {
        this.fileServerVoList = fileServerVoList;
    }
}
