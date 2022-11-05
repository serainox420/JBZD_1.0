package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import com.facebook.ads.internal.view.d.a.n;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class h extends m {
    private final a b;
    private final int c;
    private final String d;
    private final String e;
    private final AtomicBoolean f;
    private final s<n> g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends TextView {

        /* renamed from: a  reason: collision with root package name */
        private final Paint f2308a;
        private final Paint b;
        private final RectF c;

        public a(Context context) {
            super(context);
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            setBackgroundColor(0);
            setTextColor(-3355444);
            setPadding((int) (displayMetrics.density * 9.0f), (int) (displayMetrics.density * 5.0f), (int) (displayMetrics.density * 9.0f), (int) (displayMetrics.density * 5.0f));
            setTextSize(18.0f);
            this.f2308a = new Paint();
            this.f2308a.setStyle(Paint.Style.STROKE);
            this.f2308a.setColor(-10066330);
            this.f2308a.setStrokeWidth(1.0f);
            this.f2308a.setAntiAlias(true);
            this.b = new Paint();
            this.b.setStyle(Paint.Style.FILL);
            this.b.setColor(-1895825408);
            this.c = new RectF();
        }

        @Override // android.widget.TextView, android.view.View
        protected void onDraw(Canvas canvas) {
            if (getText().length() == 0) {
                return;
            }
            int width = getWidth();
            int height = getHeight();
            this.c.set(0, 0, width, height);
            canvas.drawRoundRect(this.c, 6.0f, 6.0f, this.b);
            this.c.set(2, 2, width - 2, height - 2);
            canvas.drawRoundRect(this.c, 6.0f, 6.0f, this.f2308a);
            super.onDraw(canvas);
        }
    }

    public h(Context context, int i, String str, String str2) {
        super(context);
        this.g = new s<n>() { // from class: com.facebook.ads.internal.view.d.b.h.1
            @Override // com.facebook.ads.internal.g.s
            public Class<n> a() {
                return n.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(n nVar) {
                if (h.this.f.get()) {
                    return;
                }
                int currentPosition = h.this.c - (h.this.getVideoView().getCurrentPosition() / 1000);
                if (currentPosition > 0) {
                    h.this.b.setText(h.this.d + ' ' + currentPosition);
                    return;
                }
                h.this.b.setText(h.this.e);
                h.this.f.set(true);
            }
        };
        this.c = i;
        this.d = str;
        this.e = str2;
        this.f = new AtomicBoolean(false);
        this.b = new a(context);
        this.b.setText(this.d + ' ' + i);
        addView(this.b, new RelativeLayout.LayoutParams(-2, -2));
    }

    @Override // com.facebook.ads.internal.view.d.b.m
    public void a(final com.facebook.ads.internal.view.m mVar) {
        mVar.getEventBus().a((r<s, q>) this.g);
        this.b.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.d.b.h.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!h.this.f.get()) {
                    Log.i("SkipPlugin", "User clicked skip before the ads is allowed to skip.");
                } else {
                    mVar.f();
                }
            }
        });
    }

    public boolean a() {
        return this.f.get();
    }
}
