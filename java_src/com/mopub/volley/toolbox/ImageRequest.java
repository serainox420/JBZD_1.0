package com.mopub.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.ParseError;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
/* loaded from: classes3.dex */
public class ImageRequest extends Request<Bitmap> {
    private static final Object e = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final Response.Listener<Bitmap> f4699a;
    private final Bitmap.Config b;
    private final int c;
    private final int d;

    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i, int i2, Bitmap.Config config, Response.ErrorListener errorListener) {
        super(0, str, errorListener);
        setRetryPolicy(new DefaultRetryPolicy(1000, 2, 2.0f));
        this.f4699a = listener;
        this.b = config;
        this.c = i;
        this.d = i2;
    }

    @Override // com.mopub.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.LOW;
    }

    private static int b(int i, int i2, int i3, int i4) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (i == 0) {
            return (int) ((i2 / i4) * i3);
        }
        if (i2 != 0) {
            double d = i4 / i3;
            if (i * d > i2) {
                return (int) (i2 / d);
            }
            return i;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    public Response<Bitmap> a(NetworkResponse networkResponse) {
        Response<Bitmap> error;
        synchronized (e) {
            try {
                error = b(networkResponse);
            } catch (OutOfMemoryError e2) {
                VolleyLog.e("Caught OOM for %d byte image, url=%s", Integer.valueOf(networkResponse.data.length), getUrl());
                error = Response.error(new ParseError(e2));
            }
        }
        return error;
    }

    private Response<Bitmap> b(NetworkResponse networkResponse) {
        Bitmap bitmap;
        byte[] bArr = networkResponse.data;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.c == 0 && this.d == 0) {
            options.inPreferredConfig = this.b;
            bitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            int b = b(this.c, this.d, i, i2);
            int b2 = b(this.d, this.c, i2, i);
            options.inJustDecodeBounds = false;
            options.inSampleSize = a(i, i2, b, b2);
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (decodeByteArray == null || (decodeByteArray.getWidth() <= b && decodeByteArray.getHeight() <= b2)) {
                bitmap = decodeByteArray;
            } else {
                bitmap = Bitmap.createScaledBitmap(decodeByteArray, b, b2, true);
                decodeByteArray.recycle();
            }
        }
        if (bitmap == null) {
            return Response.error(new ParseError(networkResponse));
        }
        return Response.success(bitmap, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public void deliverResponse(Bitmap bitmap) {
        this.f4699a.onResponse(bitmap);
    }

    static int a(int i, int i2, int i3, int i4) {
        float f = 1.0f;
        while (f * 2.0f <= Math.min(i / i3, i2 / i4)) {
            f *= 2.0f;
        }
        return (int) f;
    }
}
