package com.mopub.network;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.support.v4.f.g;
import android.webkit.WebView;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.DeviceUtils;
import com.mopub.volley.toolbox.BasicNetwork;
import com.mopub.volley.toolbox.DiskBasedCache;
import com.mopub.volley.toolbox.ImageLoader;
import java.io.File;
/* loaded from: classes3.dex */
public class Networking {
    private static volatile MoPubRequestQueue b;
    private static volatile String c;
    private static volatile MaxWidthImageLoader d;

    /* renamed from: a  reason: collision with root package name */
    private static final String f4659a = System.getProperty("http.agent");
    private static boolean e = false;

    public static MoPubRequestQueue getRequestQueue() {
        return b;
    }

    public static MoPubRequestQueue getRequestQueue(Context context) {
        MoPubRequestQueue moPubRequestQueue = b;
        if (moPubRequestQueue == null) {
            synchronized (Networking.class) {
                moPubRequestQueue = b;
                if (moPubRequestQueue == null) {
                    BasicNetwork basicNetwork = new BasicNetwork(new RequestQueueHttpStack(getUserAgent(context.getApplicationContext()), new PlayServicesUrlRewriter(ClientMetadata.getInstance(context).getDeviceId(), context), CustomSSLSocketFactory.getDefault(10000)));
                    File file = new File(context.getCacheDir().getPath() + File.separator + "mopub-volley-cache");
                    moPubRequestQueue = new MoPubRequestQueue(new DiskBasedCache(file, (int) DeviceUtils.diskCacheSizeBytes(file, 10485760L)), basicNetwork);
                    b = moPubRequestQueue;
                    moPubRequestQueue.start();
                }
            }
        }
        return moPubRequestQueue;
    }

    public static ImageLoader getImageLoader(Context context) {
        MaxWidthImageLoader maxWidthImageLoader = d;
        if (maxWidthImageLoader == null) {
            synchronized (Networking.class) {
                maxWidthImageLoader = d;
                if (maxWidthImageLoader == null) {
                    MoPubRequestQueue requestQueue = getRequestQueue(context);
                    final g<String, Bitmap> gVar = new g<String, Bitmap>(DeviceUtils.memoryCacheSizeBytes(context)) { // from class: com.mopub.network.Networking.1
                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // android.support.v4.f.g
                        /* renamed from: a */
                        public int sizeOf(String str, Bitmap bitmap) {
                            return bitmap != null ? bitmap.getRowBytes() * bitmap.getHeight() : super.sizeOf(str, bitmap);
                        }
                    };
                    maxWidthImageLoader = new MaxWidthImageLoader(requestQueue, context, new ImageLoader.ImageCache() { // from class: com.mopub.network.Networking.2
                        @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
                        public Bitmap getBitmap(String str) {
                            return (Bitmap) g.this.get(str);
                        }

                        @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
                        public void putBitmap(String str, Bitmap bitmap) {
                            g.this.put(str, bitmap);
                        }
                    });
                    d = maxWidthImageLoader;
                }
            }
        }
        return maxWidthImageLoader;
    }

    public static String getUserAgent(Context context) {
        Preconditions.checkNotNull(context);
        String str = c;
        if (str == null) {
            synchronized (Networking.class) {
                str = c;
                if (str == null) {
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        try {
                            str = new WebView(context).getSettings().getUserAgentString();
                        } catch (Exception e2) {
                            str = f4659a;
                        }
                    } else {
                        str = f4659a;
                    }
                    c = str;
                }
            }
        }
        return str;
    }

    public static String getCachedUserAgent() {
        String str = c;
        if (str == null) {
            return f4659a;
        }
        return str;
    }

    @VisibleForTesting
    public static synchronized void clearForTesting() {
        synchronized (Networking.class) {
            b = null;
            d = null;
            c = null;
        }
    }

    @VisibleForTesting
    public static synchronized void setRequestQueueForTesting(MoPubRequestQueue moPubRequestQueue) {
        synchronized (Networking.class) {
            b = moPubRequestQueue;
        }
    }

    @VisibleForTesting
    public static synchronized void setImageLoaderForTesting(MaxWidthImageLoader maxWidthImageLoader) {
        synchronized (Networking.class) {
            d = maxWidthImageLoader;
        }
    }

    @VisibleForTesting
    public static synchronized void setUserAgentForTesting(String str) {
        synchronized (Networking.class) {
            c = str;
        }
    }

    public static void useHttps(boolean z) {
        e = z;
    }

    public static boolean useHttps() {
        return e;
    }

    public static String getScheme() {
        return useHttps() ? "https" : "http";
    }

    public static String getBaseUrlScheme() {
        return "http";
    }
}
