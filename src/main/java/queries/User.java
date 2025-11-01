package queries;

import java.sql.*;
import db.JDBC;

public class User {
	private int userId;
	private String loginId;
	private String password;
	private String userRole;

	public User(Integer userId, String loginId, String password, String userRole) {
		this.loginId = loginId;
		this.password = password;
	}

	public String getLoginId() {
		return this.loginId;
	}
	
	public int getUserId() {
		return this.userId;
	}
	
	public String getUserRole() {
		return this.userRole;
	}

	public Boolean checkPassword(String pw) {
		return pw.equals(this.password);
	}

	public static User getUserByLoginId(String loginId) throws SQLException {
		Connection conn = JDBC.connect();
		String sql = "SELECT * FROM users WHERE login_id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, loginId);
		ResultSet rs = stmt.executeQuery();
		User user = null;
		if (rs.next()) {
			int userId = rs.getInt("userId");
			String password = rs.getString("password");
			String userRole = rs.getString("userRole");
			
			user = new User(userId, loginId, password, userRole);
		}
		rs.close();
		stmt.close();
		return user;
	}

}