package Bean;

public class BookBean {
	private int id;
    private String title;
    private String author;
    private String genre;
    private int yearOfPublication;

    // Default Constructor
    
    public BookBean() {}

    // Parameterized Constructor
    public BookBean(int id, String title, String author, String genre, int yearOfPublication) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.genre = genre;
        this.yearOfPublication = yearOfPublication;
    }

    // Getters and Setters
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getYearOfPublication() {
        return yearOfPublication;
    }

    public void setYearOfPublication(int yearOfPublication) {
        this.yearOfPublication = yearOfPublication;
    }
}


