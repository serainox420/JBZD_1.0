package com.amazon.device.ads;

import android.app.Activity;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.amazon.device.ads.AdActivity;
import com.amazon.device.ads.AdVideoPlayer;
/* loaded from: classes.dex */
class VideoActionHandler implements AdActivity.AdActivityAdapter {
    private Activity activity;
    private RelativeLayout layout;
    private AdVideoPlayer player;

    VideoActionHandler(AdVideoPlayer adVideoPlayer, Activity activity) {
        this.player = adVideoPlayer;
        this.activity = activity;
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onCreate() {
        Bundle extras = this.activity.getIntent().getExtras();
        this.layout = new RelativeLayout(this.activity);
        this.layout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.activity.setContentView(this.layout);
        initPlayer(extras);
        this.player.playVideo();
    }

    private void setPlayerListener(AdVideoPlayer adVideoPlayer) {
        adVideoPlayer.setListener(new AdVideoPlayer.AdVideoPlayerListener() { // from class: com.amazon.device.ads.VideoActionHandler.1
            @Override // com.amazon.device.ads.AdVideoPlayer.AdVideoPlayerListener
            public void onError() {
                VideoActionHandler.this.activity.finish();
            }

            @Override // com.amazon.device.ads.AdVideoPlayer.AdVideoPlayerListener
            public void onComplete() {
                VideoActionHandler.this.activity.finish();
            }
        });
    }

    private void initPlayer(Bundle bundle) {
        this.player = new AdVideoPlayer(this.activity);
        this.player.setPlayData(bundle.getString("url"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.player.setLayoutParams(layoutParams);
        this.player.setViewGroup(this.layout);
        setPlayerListener(this.player);
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onPause() {
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onResume() {
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onStop() {
        if (this.player != null) {
            this.player.releasePlayer();
            this.player = null;
        }
        this.activity.finish();
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onDestroy() {
        if (this.player != null) {
            this.player.releasePlayer();
            this.player = null;
        }
        this.activity.finish();
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void preOnCreate() {
        this.activity.requestWindowFeature(1);
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public boolean onBackPressed() {
        return false;
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onWindowFocusChanged() {
    }
}
