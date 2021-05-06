package Model;

public class Note {
    private int idNote;
    private String title;
    private String content;
    private NoteType idNote_type;

    public Note(int idNote, String title, String content) {
        this.idNote = idNote;
        this.title = title;
        this.content = content;
    }

    public Note(int idNote, String title, String content, NoteType idNote_type) {
        this.idNote = idNote;
        this.title = title;
        this.content = content;
        this.idNote_type = idNote_type;
    }

    public Note(String title, String content) {
        this.title = title;
        this.content = content;
    }

    public Note(String title, String content, NoteType idNote_type) {
        this.title = title;
        this.content = content;
        this.idNote_type = idNote_type;
    }

    public int getIdNote() {
        return idNote;
    }

    public void setIdNote(int idNote) {
        this.idNote = idNote;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public NoteType getIdNote_type() {
        return idNote_type;
    }

    public void setIdNote_type(NoteType idNote_type) {
        this.idNote_type = idNote_type;
    }
}
