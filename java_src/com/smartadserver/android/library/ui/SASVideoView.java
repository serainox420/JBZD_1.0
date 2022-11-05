package com.smartadserver.android.library.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class SASVideoView extends VideoView {

    /* renamed from: a  reason: collision with root package name */
    private int f5538a;
    private int b;
    private boolean c;
    private AudioManager d;
    private int e;
    private WeakReference<a> f;

    /* loaded from: classes3.dex */
    public interface a {
        void a(int i);
    }

    public SASVideoView(Context context) {
        super(context);
        this.f5538a = 0;
        this.b = 0;
        this.c = false;
        this.e = -1;
        e();
    }

    public SASVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5538a = 0;
        this.b = 0;
        this.c = false;
        this.e = -1;
        e();
    }

    public SASVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5538a = 0;
        this.b = 0;
        this.c = false;
        this.e = -1;
        e();
    }

    private void e() {
        this.d = (AudioManager) getContext().getSystemService("audio");
    }

    public void a(final int i, final int i2, int i3, int i4) {
        this.f5538a = i4;
        this.b = i3;
        post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASVideoView.1
            @Override // java.lang.Runnable
            public void run() {
                ((RelativeLayout.LayoutParams) SASVideoView.this.getLayoutParams()).setMargins(i, i2, 0, 0);
                SASVideoView.this.getHolder().setFixedSize(SASVideoView.this.b, SASVideoView.this.f5538a);
                SASVideoView.this.requestLayout();
                SASVideoView.this.invalidate();
            }
        });
    }

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(this.b, this.f5538a);
    }

    public void a() {
        this.e = getCurrentVolume();
        this.d.setStreamVolume(3, 0, 0);
    }

    public void setOnVideoViewVisibilityChangedListener(a aVar) {
        this.f = new WeakReference<>(aVar);
    }

    public a getOnVideoViewVisibilityChangedListener() {
        return this.f.get();
    }

    public int getCurrentVolume() {
        return this.d.getStreamVolume(3);
    }

    public void b() {
        if (this.e == 0) {
            this.e = 5;
        }
        this.d.setStreamVolume(3, this.e, 0);
        this.e = -1;
    }

    public boolean c() {
        return this.e != -1;
    }

    public void setMutedVolume(int i) {
        this.e = i;
    }

    public ProgressBar a(Context context, ViewGroup viewGroup) {
        ProgressBar progressBar = new ProgressBar(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13, 1);
        progressBar.setLayoutParams(layoutParams);
        viewGroup.addView(progressBar);
        return progressBar;
    }

    public ImageView a(Context context, ViewGroup viewGroup, View.OnClickListener onClickListener) {
        ImageView a2 = a(context, com.smartadserver.android.library.f.a.d, 9, 12);
        a2.setOnClickListener(onClickListener);
        viewGroup.addView(a2);
        return a2;
    }

    public ImageView b(Context context, ViewGroup viewGroup, View.OnClickListener onClickListener) {
        ImageView a2;
        if (getCurrentVolume() != 0) {
            a2 = a(context, com.smartadserver.android.library.f.a.g, 11, 12);
        } else {
            a();
            a2 = a(context, com.smartadserver.android.library.f.a.f, 11, 12);
        }
        a2.setOnClickListener(onClickListener);
        viewGroup.addView(a2);
        return a2;
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onWindowVisibilityChanged(int i) {
        a aVar;
        super.onWindowVisibilityChanged(i);
        if (this.f != null && (aVar = this.f.get()) != null) {
            aVar.a(i);
        }
    }

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        setOnVideoViewVisibilityChangedListener(null);
        super.onDetachedFromWindow();
    }

    public void d() {
        if (!this.c) {
            this.c = true;
            stopPlayback();
            f();
            if (this.e != -1) {
                b();
            }
        }
    }

    private void f() {
        if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
        }
    }

    public static ImageView a(Context context, Bitmap bitmap, int i, int i2) {
        ImageView imageView = new ImageView(context);
        imageView.setBackgroundColor(0);
        imageView.setImageBitmap(bitmap);
        float f = context.getResources().getDisplayMetrics().density / 2.5f;
        int round = Math.round((bitmap.getWidth() * f) / 6.0f);
        int round2 = Math.round((bitmap.getHeight() * f) / 6.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Math.round(bitmap.getWidth() * f) + (round * 2), Math.round(f * bitmap.getHeight()) + (round2 * 2));
        layoutParams.addRule(i2, 1);
        layoutParams.addRule(i, 1);
        imageView.setLayoutParams(layoutParams);
        imageView.setPadding(round, round2, round, round2);
        return imageView;
    }
}
