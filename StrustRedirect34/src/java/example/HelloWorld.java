package example;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;

/**
 * <code>Set welcome message.</code>
 */
public class HelloWorld extends ActionSupport implements ServletRequestAware {

    HttpServletRequest request;
    String message;   

    @Override
    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }
// getter and setter method of message

    @Override
    public String execute() throws Exception {
        setMessage("Welcome to Redirect Result in Struts2");
        request.setAttribute("name", "Reza");
        request.setAttribute("city", "Dhaka");
        
        return SUCCESS;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
