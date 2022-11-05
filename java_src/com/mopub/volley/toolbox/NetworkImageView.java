package com.mopub.volley.toolbox;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
/* loaded from: classes3.dex */
public class NetworkImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private String f4701a;
    private int b;
    private int c;
    private ImageLoader d;
    private ImageLoader.ImageContainer e;

    public NetworkImageView(Context context) {
        this(context, null);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setImageUrl(String str, ImageLoader imageLoader) {
        this.f4701a = str;
        this.d = imageLoader;
        a(false);
    }

    public void setDefaultImageResId(int i) {
        this.b = i;
    }

    public void setErrorImageResId(int i) {
        this.c = i;
    }

    void a(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4 = true;
        int i = 0;
        int width = getWidth();
        int height = getHeight();
        if (getLayoutParams() != null) {
            z3 = getLayoutParams().width == -2;
            z2 = getLayoutParams().height == -2;
        } else {
            z2 = false;
            z3 = false;
        }
        if (!z3 || !z2) {
            z4 = false;
        }
        if (width != 0 || height != 0 || z4) {
            if (TextUtils.isEmpty(this.f4701a)) {
                if (this.e != null) {
                    this.e.cancelRequest();
                    this.e = null;
                }
                a();
                return;
            }
            if (this.e != null && this.e.getRequestUrl() != null) {
                if (!this.e.getRequestUrl().equals(this.f4701a)) {
                    this.e.cancelRequest();
                    a();
                } else {
                    return;
                }
            }
            int i2 = z3 ? 0 : width;
            if (!z2) {
                i = height;
            }
            this.e = this.d.get(this.f4701a, new AnonymousClass1(z), i2, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.volley.toolbox.NetworkImageView$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements ImageLoader.ImageListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f4702a;

        AnonymousClass1(boolean z) {
            this.f4702a = z;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (NetworkImageView.this.c != 0) {
                NetworkImageView.this.setImageResource(NetworkImageView.this.c);
            }
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(final ImageLoader.ImageContainer imageContainer, boolean z) {
            if (z && this.f4702a) {
                NetworkImageView.this.post(new Runnable() { // from class: com.mopub.volley.toolbox.NetworkImageView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1.this.onResponse(imageContainer, false);
                    }
                });
            } else if (imageContainer.getBitmap() == null) {
                if (NetworkImageView.this.b != 0) {
                    NetworkImageView.this.setImageResource(NetworkImageView.this.b);
                }
            } else {
                NetworkImageView.this.setImageBitmap(imageContainer.getBitmap());
            }
        }
    }

    private void a() {
        if (this.b != 0) {
            setImageResource(this.b);
        } else {
            setImageBitmap(null);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        a(true);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        if (this.e != null) {
            this.e.cancelRequest();
            setImageBitmap(null);
            this.e = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }
}
