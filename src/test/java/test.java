import dao.HbnUtils;
import org.hibernate.Session;
import org.junit.Test;

public class test {
    @Test
    public void many(){
        Session session = HbnUtils.getSession();
    }

}
