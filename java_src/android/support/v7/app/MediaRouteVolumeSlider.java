package android.support.v7.app;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.v7.appcompat.R;
import android.support.v7.widget.AppCompatSeekBar;
import android.util.AttributeSet;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MediaRouteVolumeSlider extends AppCompatSeekBar {

    /* renamed from: a  reason: collision with root package name */
    private final float f562a;
    private boolean b;
    private Drawable c;
    private int d;

    public MediaRouteVolumeSlider(Context context) {
        this(context, null);
    }

    public MediaRouteVolumeSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.seekBarStyle);
    }

    public MediaRouteVolumeSlider(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f562a = t.a(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.AppCompatSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int i = isEnabled() ? 255 : (int) (255.0f * this.f562a);
        this.c.setColorFilter(this.d, PorterDuff.Mode.SRC_IN);
        this.c.setAlpha(i);
        getProgressDrawable().setColorFilter(this.d, PorterDuff.Mode.SRC_IN);
        getProgressDrawable().setAlpha(i);
    }

    @Override // android.widget.AbsSeekBar
    public void setThumb(Drawable drawable) {
        this.c = drawable;
        super.setThumb(this.b ? null : this.c);
    }

    public void a(boolean z) {
        if (this.b != z) {
            this.b = z;
            super.setThumb(this.b ? null : this.c);
        }
    }

    public void a(int i) {
        if (this.d != i) {
            if (Color.alpha(i) != 255) {
                Log.e("MediaRouteVolumeSlider", "Volume slider color cannot be translucent: #" + Integer.toHexString(i));
            }
            this.d = i;
        }
    }
}
