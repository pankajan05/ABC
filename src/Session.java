/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Pankajan05
 */
public class Session {
    private int id;
    private String lecturer1;
    private String lecturer2;
    private String SubjectCode;
    private String SubjectName;
    private String GroupId;
    private String Tag;
    private int StudentNo;
    private double duration;
    private String room;

    public Session(int id, String lecturer1, String lecturer2, String SubjectCode, String SubjectName, String GroupId, String Tag, int StudentNo, double duration, String room) {
        this.id = id;
        this.lecturer1 = lecturer1;
        this.lecturer2 = lecturer2;
        this.SubjectCode = SubjectCode;
        this.SubjectName = SubjectName;
        this.GroupId = GroupId;
        this.Tag = Tag;
        this.StudentNo = StudentNo;
        this.duration = duration;
        this.room = room;
    }

    public Session() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLecturer1() {
        return lecturer1;
    }

    public void setLecturer1(String lecturer1) {
        this.lecturer1 = lecturer1;
    }

    public String getLecturer2() {
        return lecturer2;
    }

    public void setLecturer2(String lecturer2) {
        this.lecturer2 = lecturer2;
    }

    public String getSubjectCode() {
        return SubjectCode;
    }

    public void setSubjectCode(String SubjectCode) {
        this.SubjectCode = SubjectCode;
    }

    public String getGroupId() {
        return GroupId;
    }

    public void setGroupId(String GroupId) {
        this.GroupId = GroupId;
    }

    public String getTag() {
        return Tag;
    }

    public void setTag(String Tag) {
        this.Tag = Tag;
    }

    public int getStudentNo() {
        return StudentNo;
    }

    public void setStudentNo(int StudentNo) {
        this.StudentNo = StudentNo;
    }

    public double getDuration() {
        return duration;
    }

    public void setDuration(double duration) {
        this.duration = duration;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    @Override
    public String toString() {
        return "<html>Session{" + " " + lecturer1 + ", " + lecturer2 + ",<br>" + SubjectCode + ", " + SubjectName + ",<br>" +
                GroupId + ", " + Tag + ", " + StudentNo + ", " + duration + ", <br>" + room + "}</html>";
    }
    
    
    
    
}
