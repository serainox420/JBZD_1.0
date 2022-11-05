package com.mopub.mraid;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.StateListDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import com.mopub.mobileads.BaseVideoViewController;
/* loaded from: classes3.dex */
public class MraidVideoViewController extends BaseVideoViewController {

    /* renamed from: a  reason: collision with root package name */
    private final VideoView f4567a;
    private ImageButton b;
    private int c;
    private int d;

    public MraidVideoViewController(Context context, Bundle bundle, Bundle bundle2, BaseVideoViewController.BaseVideoViewControllerListener baseVideoViewControllerListener) {
        super(context, null, baseVideoViewControllerListener);
        this.f4567a = new VideoView(context);
        this.f4567a.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.mopub.mraid.MraidVideoViewController.1
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                MraidVideoViewController.this.b.setVisibility(0);
                MraidVideoViewController.this.b(true);
            }
        });
        this.f4567a.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.mopub.mraid.MraidVideoViewController.2
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                MraidVideoViewController.this.b.setVisibility(0);
                MraidVideoViewController.this.a(false);
                return false;
            }
        });
        this.f4567a.setVideoPath(bundle.getString(BaseVideoPlayerActivity.VIDEO_URL));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void a() {
        super.a();
        this.d = Dips.asIntPixels(50.0f, h());
        this.c = Dips.asIntPixels(8.0f, h());
        i();
        this.b.setVisibility(8);
        this.f4567a.start();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected VideoView b() {
        return this.f4567a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void e() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void c() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void d() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void a(Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void a(Configuration configuration) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.BaseVideoViewController
    public void f() {
    }

    private void i() {
        this.b = new ImageButton(h());
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842919}, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.createDrawable(h()));
        stateListDrawable.addState(new int[]{16842919}, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.createDrawable(h()));
        this.b.setImageDrawable(stateListDrawable);
        this.b.setBackgroundDrawable(null);
        this.b.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.mraid.MraidVideoViewController.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MraidVideoViewController.this.g().onFinish();
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.d, this.d);
        layoutParams.addRule(11);
        layoutParams.setMargins(this.c, 0, this.c, 0);
        getLayout().addView(this.b, layoutParams);
    }
}
