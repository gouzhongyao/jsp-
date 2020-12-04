package model;

public class Admin {
    private int y_id;        //用户id
    private String y_name;  //用户名
    private String mm;      //用户密码
    private int zhye;   //账户余额
    private String sjh;    //手机号

    public int getZhye() {
        return zhye;
    }

    public void setZhye(int zhye) {
        this.zhye = zhye;
    }

    public int getY_id() {
        return y_id;
    }

    public void setY_id(int y_id) {
        this.y_id = y_id;
    }

    public String getY_name() {
        return y_name;
    }

    public void setY_name(String y_name) {
        this.y_name = y_name;
    }

    public String getMm() {
        return mm;
    }

    public void setMm(String mm) {
        this.mm = mm;
    }


    public String getSjh() {
        return sjh;
    }

    public void setSjh(String sjh) {
        this.sjh = sjh;
    }
}
