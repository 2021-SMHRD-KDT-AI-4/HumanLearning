package com;

public class NoteListDTO {

	private int video_id;
	private String user_id;
	private int note_id;
	private String video_filename;
	private int play_time;
	private String upload_time;
	private String video_memo;
	
	public NoteListDTO(int video_id, String user_id, int note_id, String video_filename, int play_time,
			String upload_time, String video_memo) {
	
		this.video_id = video_id;
		this.user_id = user_id;
		this.note_id = note_id;
		this.video_filename = video_filename;
		this.play_time = play_time;
		this.upload_time = upload_time;
		this.video_memo = video_memo;
	}

	public int getVideo_id() {
		return video_id;
	}

	public void setVideo_id(int video_id) {
		this.video_id = video_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getNote_id() {
		return note_id;
	}

	public void setNote_id(int note_id) {
		this.note_id = note_id;
	}

	public String getVideo_filename() {
		return video_filename;
	}

	public void setVideo_filename(String video_filename) {
		this.video_filename = video_filename;
	}

	public int getPlay_time() {
		return play_time;
	}

	public void setPlay_time(int play_time) {
		this.play_time = play_time;
	}

	public String getUpload_time() {
		return upload_time;
	}

	public void setUpload_time(String upload_time) {
		this.upload_time = upload_time;
	}

	public String getVideo_memo() {
		return video_memo;
	}

	public void setVideo_memo(String video_memo) {
		this.video_memo = video_memo;
	}
	
	
	
	
}
