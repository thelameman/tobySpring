package springbook.user.dao;

import java.sql.SQLException;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;
import org.junit.Test;
import org.junit.runner.JUnitCore;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.dao.EmptyResultDataAccessException;

import springbook.user.domain.User;

public class UserDaoTest {

	@Test
	public void addAndGet() throws SQLException {
		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");

		UserDao dao = context.getBean("userDao", UserDao.class);

		User user = new User("gyumee", "�ڼ�ö", "springno1");
		User user2 = new User("leegw700", "�̱��", "springno2");

		dao.deleteAll();
		assertThat(dao.getCount(), is(0));

		dao.add(user);
		dao.add(user2);

		assertThat(dao.getCount(), is(2));

		User userget1 = dao.get(user.getId());
		assertThat(userget1.getName(), is(user.getName()));
		assertThat(userget1.getPassword(), is(user.getPassword()));

		User userget2 = dao.get(user2.getId());
		assertThat(userget2.getName(), is(user2.getName()));
		assertThat(userget2.getPassword(), is(user2.getPassword()));

	}

	@Test
	public void count() throws SQLException {
		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");

		UserDao dao = context.getBean("userDao", UserDao.class);

		User user = new User("gyumee", "�ڼ�ö", "springno1");
		User user2 = new User("leegw700", "�̱��", "springno2");
		User user3 = new User("bumjin", "�ڹ���", "springno3");

		dao.deleteAll();
		assertThat(dao.getCount(), is(0));

		dao.add(user);
		assertThat(dao.getCount(), is(1));

		dao.add(user2);
		assertThat(dao.getCount(), is(2));

		dao.add(user3);
		assertThat(dao.getCount(), is(3));

	}

	@Test(expected=EmptyResultDataAccessException.class)
	public void getYserFailure() throws SQLException {
		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");

		UserDao dao = context.getBean("userDao", UserDao.class);
		
		dao.deleteAll();
		assertThat(dao.getCount(), is(0));
		
		dao.get("unknown_id");
	}

	public static void main(String[] args) {
		JUnitCore.main("springbook.user.dao.UserDaoTest");
	}
}