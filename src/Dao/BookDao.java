package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Bean.BookBean;
import dbconnection.DBConnection;

public class BookDao {

	private Connection getConnection() throws SQLException {
		return DBConnection.getConnection();
	}

	public List<BookBean> getAllBooks() throws SQLException {
		List<BookBean> books = new ArrayList<>();
		String query = "SELECT * FROM books";
		try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				BookBean book = new BookBean();
				book.setId(rs.getInt("id"));
				book.setTitle(rs.getString("title"));
				book.setAuthor(rs.getString("author"));
				book.setGenre(rs.getString("genre"));
				book.setYearOfPublication(rs.getInt("year_of_publication"));
				books.add(book);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new SQLException("Error retrieving books from the database", e);
		}
		return books;
	}

	public void addBook(BookBean book) throws SQLException {
		Connection conn = null;
		PreparedStatement ps = null;

		try {
			conn = getConnection();
			String query = "INSERT INTO books (title, author, genre, year_of_publication) VALUES (?, ?, ?, ?)";
			ps = conn.prepareStatement(query);
			ps.setString(1, book.getTitle());
			ps.setString(2, book.getAuthor());
			ps.setString(3, book.getGenre());
			ps.setInt(4, book.getYearOfPublication());

			int rowsAffected = ps.executeUpdate();
			System.out.println("Rows affected: " + rowsAffected);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new SQLException("Error adding book to the database", e);
		} finally {
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		}
	}

	public boolean updateBook(BookBean book) {
		String query = "UPDATE books SET title = ?, author = ?, genre = ?, year_of_publication = ? WHERE id = ?";
		try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {
			stmt.setString(1, book.getTitle());
			stmt.setString(2, book.getAuthor());
			stmt.setString(3, book.getGenre());
			stmt.setInt(4, book.getYearOfPublication());
			stmt.setInt(5, book.getId());
			return stmt.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteBook(int id) {
		String query = "DELETE FROM books WHERE id = ?";
		try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {
			stmt.setInt(1, id);
			return stmt.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
}
