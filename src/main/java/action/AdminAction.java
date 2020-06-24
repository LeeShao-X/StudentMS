package action;

import PO.Admin;
import com.opensymphony.xwork2.ActionSupport;
import dao.HbnUtils;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import java.util.Map;

public class AdminAction extends ActionSupport implements SessionAware {

    private String username;
    private String password;
    private Map<String, Object> session;
    private Session hbnSession;


    @Override
    public void setSession(Map<String, Object> session) { this.session = session; }

    @Override
    public  String execute() throws Exception{
        String hql = "from Admin where username=?0 and password=?1";
        System.out.println(hql);
        //HQL查询验证身份
        hbnSession = HbnUtils.getSession();
        System.out.println(this.username + ' ' + this.password);

        hbnSession.beginTransaction();
        Admin admin = (Admin)hbnSession.createQuery(hql)
                .setParameter(0, this.getUsername())
                .setParameter(1, this.getPassword())
                .uniqueResult();
        System.out.println(admin);
        hbnSession.getTransaction().commit();
        if(admin == null) {
            System.out.println("admin is null");
            return "login";
        } else {
            session.put("adminUsername",admin.getUsername());
            System.out.println("adminUsername is :"+admin.getUsername());
            return "success";
        }
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public  Session getHbnSession() { return hbnSession; }

    public  void  setHbnSession(Session hbnSession) { this.hbnSession = hbnSession; }
}
