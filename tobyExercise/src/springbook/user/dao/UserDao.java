package springbook.user.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.dao.EmptyResultDataAccessException;

import springbook.user.domain.User;

public class UserDao {
	private DataSource dataSource;
	
	private JdbcContext jdbcContext;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcContext = new JdbcContext();
		this.jdbcContext.setDataSource(dataSource);
		this.dataSource = dataSource;
	}

	public void createTable() throws SQLException{
		
		dataSource.getConnection().nativeSQL("CREATE TABLE USERS");
		
		
	}



	public void add(User user) throws SQLException {
		this.jdbcContext.workWithStatementStrategy(new StatementStrategy() {
			@Override
			public PreparedStatement makePreparedStatement(Connection c) throws SQLException {
				PreparedStatement ps = c.prepareStatement("insert into users(id,name,password)"
						+ " values(?,?,?)");
				ps.setString(1, user.getId()); 
				ps.setString(2, user.getName());
				ps.setString(3, user.getPassword());
				
				return ps;
			}
		});
	}
	
	public User get(String id) throws SQLException {
		Connection c= dataSource.getConnection();
		
		PreparedStatement ps = c.prepareStatement("select * from users where id = ?");
		
		ps.setString(1, id);
		
		ResultSet rs = ps.executeQuery();
		User user = null;
		if(rs.next()){
		user = new User();
		user.setId(rs.getString("id"));
		user.setName(rs.getString("name"));
		user.setPassword(rs.getString("password"));
		}
		
		rs.close();
		ps.close();
		c.close();
		
		if (user == null) throw new EmptyResultDataAccessException(1);

		
		return user;
		
	}
	
	public void deleteAll() throws SQLException{
		this.jdbcContext.workWithStatementStrategy(new StatementStrategy() {
				
				@Override
				public PreparedStatement makePreparedStatement(Connection c) throws SQLException {
					return c.prepareStatement("delete from users");
				}
			});
	}
	
	public int getCount() throws SQLException{
		try(
		Connection c = dataSource.getConnection();
		PreparedStatement ps = c.prepareStatement("select count(*) from users");
		ResultSet rs = ps.executeQuery();
		){
		
		rs.next();
		int count = rs.getInt(1);
		return count;
		}
	}
	
	public void jdbcContextWithStatmentStrategy(StatementStrategy stmt) throws SQLException{
		Connection c = null;
		PreparedStatement ps = null;
		
		try{
			c = dataSource.getConnection();
			ps = stmt.makePreparedStatement(c);
			ps.executeUpdate();
			
		}catch(SQLException e){
			throw e;
			
		}finally{
			if(ps != null) {try{ps.close();} catch(SQLException e){}}
			if(c != null){try{c.close();}catch(SQLException e){}}
		}
		
	}
	
}
 