package com.mustever.user;

import com.mustever.common.model.User;
import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

public class UserValidator extends Validator {

    protected void validate(Controller controller) {
        validateRequiredString("user.account", "accountMsg", "请填写账号!");
        validateRequiredString("user.password", "passwordMsg", "请填写密码!");
    }

    protected void handleError(Controller controller) {
        controller.keepModel(User.class);

        String actionKey = getActionKey();
        if (actionKey.equals("/user/save"))
            controller.render("register.html");
        else if (actionKey.equals("/user/update"))
            controller.render("edit.html");
    }
}
