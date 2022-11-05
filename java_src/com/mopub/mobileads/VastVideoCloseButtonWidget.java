package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.CloseButtonDrawable;
import com.mopub.mobileads.resource.DrawableConstants;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
/* loaded from: classes.dex */
public class VastVideoCloseButtonWidget extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private TextView f4475a;
    private ImageView b;
    private final ImageLoader c;
    private CloseButtonDrawable d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;

    public VastVideoCloseButtonWidget(Context context) {
        super(context);
        setId((int) Utils.generateUniqueId());
        this.e = Dips.dipsToIntPixels(16.0f, context);
        this.g = Dips.dipsToIntPixels(5.0f, context);
        this.h = Dips.dipsToIntPixels(46.0f, context);
        this.f = Dips.dipsToIntPixels(7.0f, context);
        this.d = new CloseButtonDrawable();
        this.c = Networking.getImageLoader(context);
        a();
        b();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.h);
        layoutParams.addRule(11);
        setLayoutParams(layoutParams);
    }

    private void a() {
        this.b = new ImageView(getContext());
        this.b.setId((int) Utils.generateUniqueId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.h, this.h);
        layoutParams.addRule(11);
        this.b.setImageDrawable(this.d);
        this.b.setPadding(this.g, this.g + this.e, this.g + this.e, this.g);
        addView(this.b, layoutParams);
    }

    private void b() {
        this.f4475a = new TextView(getContext());
        this.f4475a.setSingleLine();
        this.f4475a.setEllipsize(TextUtils.TruncateAt.END);
        this.f4475a.setTextColor(-1);
        this.f4475a.setTextSize(20.0f);
        this.f4475a.setTypeface(DrawableConstants.CloseButton.TEXT_TYPEFACE);
        this.f4475a.setText("");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.addRule(0, this.b.getId());
        this.f4475a.setPadding(0, this.e, 0, 0);
        layoutParams.setMargins(0, 0, this.f, 0);
        addView(this.f4475a, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        if (this.f4475a != null) {
            this.f4475a.setText(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(final String str) {
        this.c.get(str, new ImageLoader.ImageListener() { // from class: com.mopub.mobileads.VastVideoCloseButtonWidget.1
            @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                Bitmap bitmap = imageContainer.getBitmap();
                if (bitmap != null) {
                    VastVideoCloseButtonWidget.this.b.setImageBitmap(bitmap);
                } else {
                    MoPubLog.d(String.format("%s returned null bitmap", str));
                }
            }

            @Override // com.mopub.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                MoPubLog.d("Failed to load image.", volleyError);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnTouchListenerToContent(View.OnTouchListener onTouchListener) {
        this.b.setOnTouchListener(onTouchListener);
        this.f4475a.setOnTouchListener(onTouchListener);
    }

    @VisibleForTesting
    @Deprecated
    ImageView getImageView() {
        return this.b;
    }

    @VisibleForTesting
    @Deprecated
    void setImageView(ImageView imageView) {
        this.b = imageView;
    }

    @VisibleForTesting
    @Deprecated
    TextView getTextView() {
        return this.f4475a;
    }
}
