package action;

import PO.Student;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.HbnUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import java.util.Map;

public class StudentLogin extends ActionSupport implements SessionAware {

    private String sno;
    private String password;
    private Map<String, Object> session;
    private Session hbnSession;

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public Session getHbnSession() {
        return hbnSession;
    }

    public void setHbnSession(Session hbnSession) {
        this.hbnSession = hbnSession;
    }

    @Override
    public  String execute() throws Exception{
        String hql = "from Student where sno=?0 and password=?1";
        System.out.println(hql);
        //HQL查询验证身份
        hbnSession = HbnUtils.getSession();
        System.out.println(this.sno + ' ' + this.password);

        hbnSession.beginTransaction();
        Student student = (Student) hbnSession.createQuery(hql)
                .setParameter(0, this.getSno())
                .setParameter(1, this.getPassword())
                .uniqueResult();
        System.out.println(student);
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        hbnSession.getTransaction().commit();
        if(student == null) {
            System.out.println("student is null");
            return "login";
        } else {
            session.put("studentUsername",student.getName());
            session.put("studentSid",student.getSno());
            session.put("studentSex",student.getSex());
            session.put("studentAge",student.getAge());
            session.put("studentUn",student.getUniversity());
            session.put("studentDept",student.getDepartment());
            session.put("studentMa",student.getMajor());
            session.put("studentG",student.getGrade());
            System.out.println("studentUsername is :"+student.getName());
            return "success";
        }
    }
}
