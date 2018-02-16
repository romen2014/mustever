package com.mustever.video;

import com.jfinal.core.Controller;

public class VideoController extends Controller {

    static VideoService service = new VideoService();

    public void drum() {
        renderJson("videos", service.paginate(getParaToInt(0, 1), 10));
    }
}
