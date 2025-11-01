package books;

public class Book {
	private String ISBN;
	private String title;
	private String author;
	private String publisher;
	private int quantity;
	private double price;

	public Book(String iSBN, String title, String author, String publisher, int quantity, double price) {
		this.ISBN = iSBN;
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.quantity = quantity;
		this.price = price;
	}

	public String getISBN() {
		return ISBN;
	}

	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

}