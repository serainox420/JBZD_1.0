package com.facebook.ads.internal.view.c;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.facebook.ads.internal.a.b;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import com.facebook.ads.internal.view.d.b.m;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.HashMap;
/* loaded from: classes.dex */
public class a extends m {
    private final String b;
    private final Paint c;
    private final RectF d;
    private final Paint e;

    public a(Context context, String str, String str2) {
        super(context);
        this.b = str;
        TextView textView = new TextView(context);
        textView.setTextColor(-3355444);
        textView.setTextSize(16.0f);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        setPadding((int) (displayMetrics.density * 10.0f), (int) (displayMetrics.density * 9.0f), (int) (displayMetrics.density * 10.0f), (int) (displayMetrics.density * 9.0f));
        textView.setText(str2);
        addView(textView);
        this.c = new Paint();
        this.c.setStyle(Paint.Style.FILL);
        this.c.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.c.setAlpha(178);
        this.d = new RectF();
        this.e = new Paint();
        this.e.setStyle(Paint.Style.STROKE);
        this.e.setColor(-6710887);
        this.e.setStrokeWidth(displayMetrics.density * 1.0f);
        this.e.setAntiAlias(true);
        setBackgroundColor(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.ads.internal.view.d.b.m
    public void a(final com.facebook.ads.internal.view.m mVar) {
        setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.c.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    Uri parse = Uri.parse(a.this.b);
                    mVar.getEventBus().a((r<s, q>) new com.facebook.ads.internal.view.d.a.a(parse));
                    com.facebook.ads.internal.a.a a2 = b.a(a.this.getContext(), "", parse, new HashMap());
                    if (a2 == null) {
                        return;
                    }
                    a2.b();
                } catch (ActivityNotFoundException e) {
                    Log.e(String.valueOf(a.class), "Error while opening " + a.this.b, e);
                } catch (Exception e2) {
                    Log.e(String.valueOf(a.class), "Error executing action", e2);
                }
            }
        });
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f = getContext().getResources().getDisplayMetrics().density;
        this.d.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
        canvas.drawRoundRect(this.d, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.c);
        this.d.set(2.0f, 2.0f, getWidth() - 2, getHeight() - 2);
        canvas.drawRoundRect(this.d, 6.0f * f, f * 6.0f, this.e);
        super.onDraw(canvas);
    }
}
