package com.commit451.youtubeextractor;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;
/* compiled from: YouTube.java */
/* loaded from: classes.dex */
public interface b {
    @GET("get_video_info?el=info&ps=default&gl=US")
    Call<YouTubeExtractionResult> a(@Query("video_id") String str);
}
