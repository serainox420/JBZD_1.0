package com.facebook.ads.internal.view.d.b;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes.dex */
public class e extends m {
    private final Context b;
    private final String c;
    private final TextView d;
    private final String e;
    private final Paint f;
    private final RectF g;

    public e(Context context, String str, String str2, String str3) {
        super(context);
        this.b = context;
        this.c = str;
        this.e = str2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.d = new TextView(getContext());
        this.d.setTextColor(-3355444);
        this.d.setTextSize(16.0f);
        this.d.setPadding((int) (displayMetrics.density * 6.0f), (int) (displayMetrics.density * 4.0f), (int) (displayMetrics.density * 6.0f), (int) (displayMetrics.density * 4.0f));
        this.f = new Paint();
        this.f.setStyle(Paint.Style.FILL);
        this.f.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.f.setAlpha(178);
        this.g = new RectF();
        setBackgroundColor(0);
        this.d.setText(str3);
        addView(this.d, new RelativeLayout.LayoutParams(-2, -2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.ads.internal.view.d.b.m
    public void a(final com.facebook.ads.internal.view.m mVar) {
        this.d.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.d.b.e.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    mVar.getEventBus().a((r<s, q>) new com.facebook.ads.internal.view.d.a.a(Uri.parse(e.this.c)));
                    com.facebook.ads.internal.util.h.a(e.this.b, Uri.parse(e.this.c), e.this.e);
                } catch (ActivityNotFoundException e) {
                    Log.e("LearnMorePlugin", "Error while opening " + e.this.c, e);
                }
            }
        });
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.g.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
        canvas.drawRoundRect(this.g, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.f);
        super.onDraw(canvas);
    }
}
