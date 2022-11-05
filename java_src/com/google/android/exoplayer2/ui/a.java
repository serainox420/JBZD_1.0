package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.util.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
/* compiled from: SubtitlePainter.java */
/* loaded from: classes2.dex */
final class a {
    private int A;
    private int B;
    private int C;
    private int D;
    private StaticLayout E;
    private int F;
    private int G;
    private int H;
    private Rect I;

    /* renamed from: a  reason: collision with root package name */
    private final RectF f3466a = new RectF();
    private final float b;
    private final float c;
    private final float d;
    private final float e;
    private final float f;
    private final float g;
    private final TextPaint h;
    private final Paint i;
    private CharSequence j;
    private Layout.Alignment k;
    private Bitmap l;
    private float m;
    private int n;
    private int o;
    private float p;
    private int q;
    private float r;
    private boolean s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;
    private float y;
    private float z;

    public a(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.g = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        int round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.b = round;
        this.c = round;
        this.d = round;
        this.e = round;
        this.h = new TextPaint();
        this.h.setAntiAlias(true);
        this.h.setSubpixelText(true);
        this.i = new Paint();
        this.i.setAntiAlias(true);
        this.i.setStyle(Paint.Style.FILL);
    }

    public void a(b bVar, boolean z, com.google.android.exoplayer2.text.a aVar, float f, float f2, Canvas canvas, int i, int i2, int i3, int i4) {
        boolean z2 = bVar.c == null;
        CharSequence charSequence = null;
        Bitmap bitmap = null;
        int i5 = DrawableConstants.CtaButton.BACKGROUND_COLOR;
        if (z2) {
            charSequence = bVar.f3432a;
            if (!TextUtils.isEmpty(charSequence)) {
                i5 = bVar.j ? bVar.k : aVar.d;
                if (!z) {
                    charSequence = charSequence.toString();
                    i5 = aVar.d;
                }
            } else {
                return;
            }
        } else {
            bitmap = bVar.c;
        }
        if (a(this.j, charSequence) && v.a(this.k, bVar.b) && this.l == bitmap && this.m == bVar.d && this.n == bVar.e && v.a(Integer.valueOf(this.o), Integer.valueOf(bVar.f)) && this.p == bVar.g && v.a(Integer.valueOf(this.q), Integer.valueOf(bVar.h)) && this.r == bVar.i && this.s == z && this.t == aVar.b && this.u == aVar.c && this.v == i5 && this.x == aVar.e && this.w == aVar.f && v.a(this.h.getTypeface(), aVar.g) && this.y == f && this.z == f2 && this.A == i && this.B == i2 && this.C == i3 && this.D == i4) {
            a(canvas, z2);
            return;
        }
        this.j = charSequence;
        this.k = bVar.b;
        this.l = bitmap;
        this.m = bVar.d;
        this.n = bVar.e;
        this.o = bVar.f;
        this.p = bVar.g;
        this.q = bVar.h;
        this.r = bVar.i;
        this.s = z;
        this.t = aVar.b;
        this.u = aVar.c;
        this.v = i5;
        this.x = aVar.e;
        this.w = aVar.f;
        this.h.setTypeface(aVar.g);
        this.y = f;
        this.z = f2;
        this.A = i;
        this.B = i2;
        this.C = i3;
        this.D = i4;
        if (z2) {
            a();
        } else {
            b();
        }
        a(canvas, z2);
    }

    private void a() {
        int i;
        int i2;
        int i3;
        int round;
        int i4 = this.C - this.A;
        int i5 = this.D - this.B;
        this.h.setTextSize(this.y);
        int i6 = (int) ((this.y * 0.125f) + 0.5f);
        int i7 = i4 - (i6 * 2);
        if (this.r != Float.MIN_VALUE) {
            i7 = (int) (i7 * this.r);
        }
        if (i7 <= 0) {
            Log.w("SubtitlePainter", "Skipped drawing subtitle cue (insufficient space)");
            return;
        }
        Layout.Alignment alignment = this.k == null ? Layout.Alignment.ALIGN_CENTER : this.k;
        this.E = new StaticLayout(this.j, this.h, i7, alignment, this.f, this.g, true);
        int height = this.E.getHeight();
        int lineCount = this.E.getLineCount();
        int i8 = 0;
        int i9 = 0;
        while (i9 < lineCount) {
            int max = Math.max((int) Math.ceil(this.E.getLineWidth(i9)), i8);
            i9++;
            i8 = max;
        }
        if (this.r == Float.MIN_VALUE || i8 >= i7) {
            i7 = i8;
        }
        int i10 = i7 + (i6 * 2);
        if (this.p != Float.MIN_VALUE) {
            int round2 = Math.round(i4 * this.p) + this.A;
            if (this.q == 2) {
                round2 -= i10;
            } else if (this.q == 1) {
                round2 = ((round2 * 2) - i10) / 2;
            }
            int max2 = Math.max(round2, this.A);
            i = Math.min(max2 + i10, this.C);
            i2 = max2;
        } else {
            int i11 = (i4 - i10) / 2;
            i = i11 + i10;
            i2 = i11;
        }
        int i12 = i - i2;
        if (i12 <= 0) {
            Log.w("SubtitlePainter", "Skipped drawing subtitle cue (invalid horizontal positioning)");
            return;
        }
        if (this.m != Float.MIN_VALUE) {
            if (this.n == 0) {
                round = Math.round(i5 * this.m) + this.B;
            } else {
                int lineBottom = this.E.getLineBottom(0) - this.E.getLineTop(0);
                if (this.m >= BitmapDescriptorFactory.HUE_RED) {
                    round = Math.round(lineBottom * this.m) + this.B;
                } else {
                    round = Math.round(lineBottom * (this.m + 1.0f)) + this.D;
                }
            }
            if (this.o == 2) {
                round -= height;
            } else if (this.o == 1) {
                round = ((round * 2) - height) / 2;
            }
            if (round + height > this.D) {
                round = this.D - height;
            } else if (round < this.B) {
                round = this.B;
            }
            i3 = round;
        } else {
            i3 = (this.D - height) - ((int) (i5 * this.z));
        }
        this.E = new StaticLayout(this.j, this.h, i12, alignment, this.f, this.g, true);
        this.F = i2;
        this.G = i3;
        this.H = i6;
    }

    private void b() {
        float f;
        int i = this.C - this.A;
        int i2 = this.D - this.B;
        float f2 = this.A + (i * this.p);
        float f3 = (i2 * this.m) + this.B;
        int round = Math.round(i * this.r);
        int round2 = Math.round(round * (this.l.getHeight() / this.l.getWidth()));
        if (this.o == 2) {
            f2 -= round;
        } else if (this.o == 1) {
            f2 -= round / 2;
        }
        int round3 = Math.round(f2);
        if (this.q == 2) {
            f = f3 - round2;
        } else {
            f = this.q == 1 ? f3 - (round2 / 2) : f3;
        }
        int round4 = Math.round(f);
        this.I = new Rect(round3, round4, round + round3, round2 + round4);
    }

    private void a(Canvas canvas, boolean z) {
        if (z) {
            a(canvas);
        } else {
            b(canvas);
        }
    }

    private void a(Canvas canvas) {
        StaticLayout staticLayout = this.E;
        if (staticLayout != null) {
            int save = canvas.save();
            canvas.translate(this.F, this.G);
            if (Color.alpha(this.v) > 0) {
                this.i.setColor(this.v);
                canvas.drawRect(-this.H, BitmapDescriptorFactory.HUE_RED, staticLayout.getWidth() + this.H, staticLayout.getHeight(), this.i);
            }
            if (Color.alpha(this.u) > 0) {
                this.i.setColor(this.u);
                int lineCount = staticLayout.getLineCount();
                float lineTop = staticLayout.getLineTop(0);
                for (int i = 0; i < lineCount; i++) {
                    this.f3466a.left = staticLayout.getLineLeft(i) - this.H;
                    this.f3466a.right = staticLayout.getLineRight(i) + this.H;
                    this.f3466a.top = lineTop;
                    this.f3466a.bottom = staticLayout.getLineBottom(i);
                    lineTop = this.f3466a.bottom;
                    canvas.drawRoundRect(this.f3466a, this.b, this.b, this.i);
                }
            }
            if (this.x == 1) {
                this.h.setStrokeJoin(Paint.Join.ROUND);
                this.h.setStrokeWidth(this.c);
                this.h.setColor(this.w);
                this.h.setStyle(Paint.Style.FILL_AND_STROKE);
                staticLayout.draw(canvas);
            } else if (this.x == 2) {
                this.h.setShadowLayer(this.d, this.e, this.e, this.w);
            } else if (this.x == 3 || this.x == 4) {
                boolean z = this.x == 3;
                int i2 = z ? -1 : this.w;
                int i3 = z ? this.w : -1;
                float f = this.d / 2.0f;
                this.h.setColor(this.t);
                this.h.setStyle(Paint.Style.FILL);
                this.h.setShadowLayer(this.d, -f, -f, i2);
                staticLayout.draw(canvas);
                this.h.setShadowLayer(this.d, f, f, i3);
            }
            this.h.setColor(this.t);
            this.h.setStyle(Paint.Style.FILL);
            staticLayout.draw(canvas);
            this.h.setShadowLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
            canvas.restoreToCount(save);
        }
    }

    private void b(Canvas canvas) {
        canvas.drawBitmap(this.l, (Rect) null, this.I, (Paint) null);
    }

    private static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }
}
