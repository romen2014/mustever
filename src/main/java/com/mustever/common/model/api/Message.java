package com.mustever.common.model.api;

public class Message {
    private int code;
    private String msg;

    public Message(){
        this.code = 0;
        this.msg = "系统异常，请联系管理员。";
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
