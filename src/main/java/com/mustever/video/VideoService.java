package com.mustever.video;

import com.mustever.common.model.Video;
import com.jfinal.plugin.activerecord.Page;

public class VideoService {
    private static final Video dao = new Video().dao();

    public Page<Video> paginate(int pageNumber, int pageSize) {
        return dao.paginate(pageNumber, pageSize, "select *", "from me_video order by id asc");
    }
}
