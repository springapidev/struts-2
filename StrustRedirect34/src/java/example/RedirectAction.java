package example;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Rajaul Islam
 */
public class RedirectAction extends ActionSupport implements ServletRequestAware {

    HttpServletRequest request;

    @Override
    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }

    @Override
    public String execute() throws Exception {
        request.setAttribute("id", "10001");
        request.setAttribute("name", "Shamim Atik");
        return SUCCESS;
    }
    
    
    
}
