package Model;

public class NoteType {
    private int idNote_type;
    private String nameNote;
    private String descriptionNote;

    public NoteType(int idNote_type, String nameNote, String descriptionNote) {
        this.idNote_type = idNote_type;
        this.nameNote = nameNote;
        this.descriptionNote = descriptionNote;
    }

    public NoteType(int idNote_type) {
        this.idNote_type = idNote_type;
    }

    public NoteType(String nameNote, String descriptionNote) {
        this.nameNote = nameNote;
        this.descriptionNote = descriptionNote;
    }

    public int getIdNote_type() {
        return idNote_type;
    }

    public void setIdNote_type(int idNote_type) {
        this.idNote_type = idNote_type;
    }

    public String getNameNote() {
        return nameNote;
    }

    public void setNameNote(String nameNote) {
        this.nameNote = nameNote;
    }

    public String getDescriptionNote() {
        return descriptionNote;
    }

    public void setDescriptionNote(String descriptionNote) {
        this.descriptionNote = descriptionNote;
    }
}
