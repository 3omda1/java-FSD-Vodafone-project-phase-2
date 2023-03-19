package entity;

public class Class {
	private int id;
	private String starting_day;
	private String ending_day;
	private String time;
	private int subid;
	private int teachID;
	
	public Class() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Class(int id, String starting_day, String ending_day, String time, int subid, int teachID) {
		super();
		this.id = id;
		this.starting_day = starting_day;
		this.ending_day = ending_day;
		this.time = time;
		this.subid = subid;
		this.teachID = teachID;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStarting_day() {
		return starting_day;
	}

	public void setStarting_day(String starting_day) {
		this.starting_day = starting_day;
	}

	public String getEnding_day() {
		return ending_day;
	}

	public void setEnding_day(String ending_day) {
		this.ending_day = ending_day;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getSubid() {
		return subid;
	}

	public void setSubid(int subid) {
		this.subid = subid;
	}

	public int getTeachID() {
		return teachID;
	}

	public void setTeachID(int teachID) {
		this.teachID = teachID;
	}

	@Override
	public String toString() {
		return "Class [id=" + id + ", starting_day=" + starting_day + ", ending_day=" + ending_day + ", time=" + time
				+ ", subid=" + subid + ", teachID=" + teachID + "]";
	}
	
	
	
	
	
}
