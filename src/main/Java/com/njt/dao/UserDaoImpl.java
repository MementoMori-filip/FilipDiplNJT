package com.njt.dao;

import com.njt.model.User;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {

    @Override
    @SuppressWarnings("deprecation")
    public void deleteUserById(int id) {
        Query query = getSession().createSQLQuery("DELETE from korisnik where id = :user_id");
        query.setInteger("user_id", id);
        query.executeUpdate();
    }

    @Override
    public User findUserByName(String name) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("username", name));

        return (User) criteria.uniqueResult();
    }
}
