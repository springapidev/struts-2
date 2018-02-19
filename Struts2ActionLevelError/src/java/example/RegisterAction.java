package example;

/**
 *
 * @author Rajail Islam
 */
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

    private String name, password;

    @Override
    public void validate() {
        if (name.trim().length() < 1 || password.trim().length() < 1) {
            addActionError("Fields can't be blank");
        }
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

//getters and setters  
    @Override
    public String execute() {
//perform business logic here  
        return "success";
    }
}
