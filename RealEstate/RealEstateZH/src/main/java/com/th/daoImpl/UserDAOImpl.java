package com.th.daoImpl;


import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Criteria;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.th.dao.UserDAO;
import com.th.common.EncryptUtil;
import com.th.bean.*;


public class UserDAOImpl implements UserDAO{

	private SessionFactory sessionFactory;       //定义SessionFactory		
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	public void add(User t) {
	
	}
	public void valid(String id, String valid) {
		
	}
	public int count() {
		return 0;
	}
	public User queryById(String id) {
		return null;
	}
	public void delete(User t) {
		
	}
	public List<User> FindPage(int pageNumber, int pageSize) {
		return null;
	}
	public void update(User t) {
		              	
	}
	
	
	//注册
	public User register(User user) {
		Session session = sessionFactory.getCurrentSession();
		//核对手机号码
		String hql = "from User where user_phone='"+user.getUser_phone()+"'";
		User u = (User)session.createQuery(hql).uniqueResult();	
		if(u == null){
			session.save(user);   //没有记录说明未注册则可以注册
			return user;
		}else{
			return null;        
		}
		
	}
	//检查登录用户
	public User checkLoginUser(User user) {
		Session session = sessionFactory.openSession();
		DetachedCriteria dc = DetachedCriteria.forClass(User.class);
		String pwd = EncryptUtil.md5Encrypt(user.getUser_pwd());  //同时加密
		dc.add(Restrictions.eq("user_phone",user.getUser_phone()));
		dc.add(Restrictions.eq("user_pwd",pwd));
		Criteria cri = dc.getExecutableCriteria(session);
		@SuppressWarnings("unchecked")
		List<User> userList = cri.list();          
		session.close();
		if(userList.size()>0)  
		{	
			return userList.get(0);       //存在该用户则获取它的全部信息
		}else
		{
			return null;     
		}
	}
	//新增修改资料
	public User addOrUpdate(User user,String user_id) {
		Session session = sessionFactory.getCurrentSession();		
		String sql = "update t_user set headicon='"+user.getHeadicon()+"',user_gender='"+user.getUser_gender()+"',user_name='"+user.getUser_name()+"',user_birthday='"+user.getUser_birthday()+"',user_email='"+user.getUser_email()+"',user_qq='"+user.getUser_qq()+"',user_wechat='"+user.getUser_wechat()+"' where user_id='"+user_id+"'";
		session.createSQLQuery(sql).executeUpdate(); 
		//重新获取修改后的user
		String hql = "from User where user_id='"+user_id+"'";
		User newUser = (User)session.createQuery(hql).uniqueResult();
		return newUser; 
	}
	//修改密码
	public void modifyPsd(User user, String user_phone) {
		Session session = sessionFactory.getCurrentSession();
		String pwd = EncryptUtil.md5Encrypt(user.getUser_pwd());  //同时加密
		String sql = "update t_user set user_pwd='"+pwd+"' where user_phone='"+user_phone+"'";
		session.createSQLQuery(sql).executeUpdate();   
	}        
	//忘记密码	
	public User checkPhone(User user) {
		//核对输入的手机号码
		Session session = sessionFactory.getCurrentSession();
		String hql = "from User where user_phone='"+user.getUser_phone()+"'";
		User u = (User)session.createQuery(hql).uniqueResult();	
		return u;
	}
	public void forgetPsd(User user) {
		Session session = sessionFactory.getCurrentSession();
		String pwd = EncryptUtil.md5Encrypt(user.getUser_pwd());  //同时加密
		String sql = "update t_user set user_pwd='"+pwd+"' where user_phone='"+user.getUser_phone()+"'";
		session.createSQLQuery(sql).executeUpdate();
	}
	
	
	
	
	
	
	
}
	


