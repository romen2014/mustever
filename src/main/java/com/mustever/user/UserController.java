package com.mustever.user;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.ActiveRecordException;
import com.mustever.common.model.User;
import com.mustever.common.model.api.Message;

@Before(UserInterceptor.class)
public class UserController extends Controller {
    static UserService service = new UserService();

    public void index(){
        setAttr("page", service.paginate(getParaToInt(0, 1), 10));
        render("user.html");
    }

    /**
     * 用户注册模拟页面跳转
     */
    public void register(){}

    /**
     * 用户注册
     */
    @Before(UserValidator.class)
    public void save(){
        try {
            service.save(getBean(User.class));
            Message msg = new Message();
            msg.setCode(1);
            msg.setMsg("注册成功");
            renderJson(msg);
        } catch (ActiveRecordException e) {
            Message msg = new Message();
            msg.setCode(2);
            msg.setMsg("用户名/邮箱/手机号已存在");
            renderJson(msg);
        } catch (Exception e){
            e.printStackTrace();
            renderJson(new Message());
        }
//        redirect("/user");
    }

    /**
     * 删除用户
     * 测试结束后应关闭此接口
     */
    public void delete(){
        service.deleteById(getParaToInt());
        redirect("/user");
    }

    /**
     * 用户修改密码模拟页面跳转
     */
    public void changePwd(){
        User user = service.findById(getParaToInt());
//        实际接口
//        renderJson(user);
//        测试页面
        user.setPassword(null);
        setAttr("user", user);
    }

    public void update(){
        try {
            service.update(getBean(User.class));
            Message msg = new Message();
            msg.setCode(1);
            msg.setMsg("修改成功");
            renderJson(msg);
        } catch (Exception e){
            e.printStackTrace();
            renderJson(new Message());
        }
    }

    /**
     * 用户登录模拟页面跳转
     */
    public void login(){}

    /**
     * 用户登录
     */
    @Before(UserValidator.class)
    public void find(){
        User user = getBean(User.class);
        user = service.findOne(user.getAccount(), user.getPassword());
        if(null == user){
            Message msg = new Message();
            msg.setCode(2);
            msg.setMsg("用户名/邮箱/手机号或密码错误");
            renderJson(msg);
        }else{
            user.setPassword(null);
            renderJson(user);
//            Token token = new Token(user.getId().toString(),3600L);
//            renderJson(token.hashCode());
        }
    }
}
