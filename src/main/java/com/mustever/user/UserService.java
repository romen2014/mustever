package com.mustever.user;

import com.jfinal.plugin.activerecord.ActiveRecordException;
import com.jfinal.plugin.activerecord.Page;
import com.mustever.common.model.User;

public class UserService {
    private static final User dao = new User().dao();

    public boolean save(User user) throws ActiveRecordException {
        return user.save();
    }

    public void deleteById(int id) {
        dao.deleteById(id);
    }

    public boolean update(User user){
        return user.update();
    }

    public User findOne(String account, String password){
        return dao.findFirst("select * from me_user where account=? and password=?", account, password);
    }

    public User findById(int id) {
        return dao.findById(id);
    }

    public Page<User> paginate(int pageNumber, int pageSize) {
        return dao.paginate(pageNumber, pageSize, "select *", "from me_user order by id asc");
    }
}
