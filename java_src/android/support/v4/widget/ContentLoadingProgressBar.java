package android.support.v4.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
/* loaded from: classes.dex */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: a  reason: collision with root package name */
    long f473a;
    boolean b;
    boolean c;
    boolean d;
    private final Runnable e;
    private final Runnable f;

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f473a = -1L;
        this.b = false;
        this.c = false;
        this.d = false;
        this.e = new Runnable() { // from class: android.support.v4.widget.ContentLoadingProgressBar.1
            @Override // java.lang.Runnable
            public void run() {
                ContentLoadingProgressBar.this.b = false;
                ContentLoadingProgressBar.this.f473a = -1L;
                ContentLoadingProgressBar.this.setVisibility(8);
            }
        };
        this.f = new Runnable() { // from class: android.support.v4.widget.ContentLoadingProgressBar.2
            @Override // java.lang.Runnable
            public void run() {
                ContentLoadingProgressBar.this.c = false;
                if (!ContentLoadingProgressBar.this.d) {
                    ContentLoadingProgressBar.this.f473a = System.currentTimeMillis();
                    ContentLoadingProgressBar.this.setVisibility(0);
                }
            }
        };
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    private void a() {
        removeCallbacks(this.e);
        removeCallbacks(this.f);
    }
}
