package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.SeekBar;
/* loaded from: classes.dex */
public class AppCompatSeekBar extends SeekBar {

    /* renamed from: a  reason: collision with root package name */
    private k f770a;

    public AppCompatSeekBar(Context context) {
        this(context, null);
    }

    public AppCompatSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.seekBarStyle);
    }

    public AppCompatSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f770a = new k(this);
        this.f770a.a(attributeSet, i);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f770a.a(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.f770a.c();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    @TargetApi(11)
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f770a.b();
    }
}
