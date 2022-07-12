package login;
 
public class UserDto {
    private String accountname;
    private String accountid;
    private String accountpassword;
    private int roleid;
 
    public String getName() {
        return accountname;
    }
    public String getUserid() {
        return accountid;
    }
    public String getPassword() {
        return accountpassword;
    }
 
    public int getRole() {
        return roleid;
    }
    
    public void setName(String accountname) {
        this.accountname = accountname;
    }
    public void setUserid(String accountid) {
        this.accountid = accountid;
    }
    public void setPassword(String accountpassword) {
        this.accountpassword = accountpassword;
    }
 
    public void setRole(int roleid) {
        this.roleid = roleid;
    }
}