package DTO;

public class VideoDTO {

	private int video_id;
	private String user_id;
	private int note_id;
	private String video_filename;
	private int play_name;
	private String upload_name;
	private String video_memo;
	
	
	public VideoDTO(int video_id, String user_id, int note_id, String video_filename, int play_name, String upload_name,
			String video_memo) {
		super();
		this.video_id = video_id;
		this.user_id = user_id;
		this.note_id = note_id;
		this.video_filename = video_filename;
		this.play_name = play_name;
		this.upload_name = upload_name;
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

	public int getPlay_name() {
		return play_name;
	}

	public void setPlay_name(int play_name) {
		this.play_name = play_name;
	}

	public String getUpload_name() {
		return upload_name;
	}

	public void setUpload_name(String upload_name) {
		this.upload_name = upload_name;
	}

	public String getVideo_memo() {
		return video_memo;
	}

	public void setVideo_memo(String video_memo) {
		this.video_memo = video_memo;
	}
	
	
}
