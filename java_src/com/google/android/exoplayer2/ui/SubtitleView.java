package com.google.android.exoplayer2.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.j;
import com.google.android.exoplayer2.util.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class SubtitleView extends View implements j.a {

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f3465a;
    private List<b> b;
    private int c;
    private float d;
    private boolean e;
    private com.google.android.exoplayer2.text.a f;
    private float g;

    public SubtitleView(Context context) {
        this(context, null);
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3465a = new ArrayList();
        this.c = 0;
        this.d = 0.0533f;
        this.e = true;
        this.f = com.google.android.exoplayer2.text.a.f3423a;
        this.g = 0.08f;
    }

    @Override // com.google.android.exoplayer2.text.j.a
    public void a(List<b> list) {
        setCues(list);
    }

    public void setCues(List<b> list) {
        if (this.b != list) {
            this.b = list;
            int size = list == null ? 0 : list.size();
            while (this.f3465a.size() < size) {
                this.f3465a.add(new a(getContext()));
            }
            invalidate();
        }
    }

    public void a() {
        setFractionalTextSize(((v.f3519a < 19 || isInEditMode()) ? 1.0f : getUserCaptionFontScaleV19()) * 0.0533f);
    }

    public void setFractionalTextSize(float f) {
        a(f, false);
    }

    public void a(float f, boolean z) {
        a(z ? 1 : 0, f);
    }

    private void a(int i, float f) {
        if (this.c != i || this.d != f) {
            this.c = i;
            this.d = f;
            invalidate();
        }
    }

    public void setApplyEmbeddedStyles(boolean z) {
        if (this.e != z) {
            this.e = z;
            invalidate();
        }
    }

    public void b() {
        setStyle((v.f3519a < 19 || isInEditMode()) ? com.google.android.exoplayer2.text.a.f3423a : getUserCaptionStyleV19());
    }

    public void setStyle(com.google.android.exoplayer2.text.a aVar) {
        if (this.f != aVar) {
            this.f = aVar;
            invalidate();
        }
    }

    public void setBottomPaddingFraction(float f) {
        if (this.g != f) {
            this.g = f;
            invalidate();
        }
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        float f;
        int size = this.b == null ? 0 : this.b.size();
        int top = getTop();
        int bottom = getBottom();
        int left = getLeft() + getPaddingLeft();
        int paddingTop = top + getPaddingTop();
        int right = getRight() + getPaddingRight();
        int paddingBottom = bottom - getPaddingBottom();
        if (paddingBottom > paddingTop && right > left) {
            if (this.c == 2) {
                f = this.d;
            } else {
                f = this.d * (this.c == 0 ? paddingBottom - paddingTop : bottom - top);
            }
            if (f > BitmapDescriptorFactory.HUE_RED) {
                for (int i = 0; i < size; i++) {
                    this.f3465a.get(i).a(this.b.get(i), this.e, this.f, f, this.g, canvas, left, paddingTop, right, paddingBottom);
                }
            }
        }
    }

    @TargetApi(19)
    private float getUserCaptionFontScaleV19() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).getFontScale();
    }

    @TargetApi(19)
    private com.google.android.exoplayer2.text.a getUserCaptionStyleV19() {
        return com.google.android.exoplayer2.text.a.a(((CaptioningManager) getContext().getSystemService("captioning")).getUserStyle());
    }
}
