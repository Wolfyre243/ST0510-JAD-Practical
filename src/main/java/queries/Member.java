package queries;

import java.sql.*;
import java.util.ArrayList;
import db.JDBC;

public class Member {
	private int id;
	private String name;

	public Member(int id, String name) {
		this.id = id;
		this.name = name;
	}

	public int getId() {
		return this.id;
	}

	public String getName() {
		return this.name;
	}

	public static Member[] getAllMembers() throws SQLException {
		Connection conn = JDBC.connect();
		String sql = "SELECT * FROM member ORDER BY id ASC";
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		ArrayList<Member> members = new ArrayList<>();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
			members.add(new Member(id, name));
		}
		rs.close();
		stmt.close();
		return members.toArray(new Member[0]);
	}
	
	public static Member getById(int id) throws SQLException {
		Connection conn = JDBC.connect();
		String sql = "SELECT * FROM member WHERE id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		Member member = null;
		if (rs.next()) {
			String name = rs.getString("name");
			member = new Member(id, name);
		}
		rs.close();
		stmt.close();
		return member;
	}
	
	public static int updateMember(int id, String newName) throws SQLException {
		Connection conn = JDBC.connect();
		String sql = "UPDATE member SET name = ? WHERE id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, newName);
		stmt.setInt(2, id);
		int affectedRows = stmt.executeUpdate();
		stmt.close();
		
		// Return rows affected to ensure update was successful
		return affectedRows;
	}
	
}