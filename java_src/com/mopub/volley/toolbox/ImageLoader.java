package com.mopub.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.mopub.volley.Request;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes3.dex */
public class ImageLoader {

    /* renamed from: a  reason: collision with root package name */
    private final RequestQueue f4692a;
    private final ImageCache c;
    private Runnable g;
    private int b = 100;
    private final HashMap<String, a> d = new HashMap<>();
    private final HashMap<String, a> e = new HashMap<>();
    private final Handler f = new Handler(Looper.getMainLooper());

    /* loaded from: classes3.dex */
    public interface ImageCache {
        Bitmap getBitmap(String str);

        void putBitmap(String str, Bitmap bitmap);
    }

    /* loaded from: classes3.dex */
    public interface ImageListener extends Response.ErrorListener {
        void onResponse(ImageContainer imageContainer, boolean z);
    }

    public ImageLoader(RequestQueue requestQueue, ImageCache imageCache) {
        this.f4692a = requestQueue;
        this.c = imageCache;
    }

    public static ImageListener getImageListener(final ImageView imageView, final int i, final int i2) {
        return new ImageListener() { // from class: com.mopub.volley.toolbox.ImageLoader.1
            @Override // com.mopub.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                if (i2 != 0) {
                    imageView.setImageResource(i2);
                }
            }

            @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageContainer imageContainer, boolean z) {
                if (imageContainer.getBitmap() != null) {
                    imageView.setImageBitmap(imageContainer.getBitmap());
                } else if (i != 0) {
                    imageView.setImageResource(i);
                }
            }
        };
    }

    public boolean isCached(String str, int i, int i2) {
        a();
        return this.c.getBitmap(a(str, i, i2)) != null;
    }

    public ImageContainer get(String str, ImageListener imageListener) {
        return get(str, imageListener, 0, 0);
    }

    public ImageContainer get(String str, ImageListener imageListener, int i, int i2) {
        a();
        String a2 = a(str, i, i2);
        Bitmap bitmap = this.c.getBitmap(a2);
        if (bitmap != null) {
            ImageContainer imageContainer = new ImageContainer(bitmap, str, null, null);
            imageListener.onResponse(imageContainer, true);
            return imageContainer;
        }
        ImageContainer imageContainer2 = new ImageContainer(null, str, a2, imageListener);
        imageListener.onResponse(imageContainer2, true);
        a aVar = this.d.get(a2);
        if (aVar != null) {
            aVar.addContainer(imageContainer2);
            return imageContainer2;
        }
        Request<Bitmap> a3 = a(str, i, i2, a2);
        this.f4692a.add(a3);
        this.d.put(a2, new a(a3, imageContainer2));
        return imageContainer2;
    }

    protected Request<Bitmap> a(String str, int i, int i2, final String str2) {
        return new ImageRequest(str, new Response.Listener<Bitmap>() { // from class: com.mopub.volley.toolbox.ImageLoader.2
            @Override // com.mopub.volley.Response.Listener
            public void onResponse(Bitmap bitmap) {
                ImageLoader.this.a(str2, bitmap);
            }
        }, i, i2, Bitmap.Config.RGB_565, new Response.ErrorListener() { // from class: com.mopub.volley.toolbox.ImageLoader.3
            @Override // com.mopub.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                ImageLoader.this.a(str2, volleyError);
            }
        });
    }

    public void setBatchedResponseDelay(int i) {
        this.b = i;
    }

    protected void a(String str, Bitmap bitmap) {
        this.c.putBitmap(str, bitmap);
        a remove = this.d.remove(str);
        if (remove == null) {
            return;
        }
        remove.c = bitmap;
        a(str, remove);
    }

    protected void a(String str, VolleyError volleyError) {
        a remove = this.d.remove(str);
        if (remove != null) {
            remove.setError(volleyError);
            a(str, remove);
        }
    }

    /* loaded from: classes3.dex */
    public class ImageContainer {
        private Bitmap b;
        private final ImageListener c;
        private final String d;
        private final String e;

        public ImageContainer(Bitmap bitmap, String str, String str2, ImageListener imageListener) {
            this.b = bitmap;
            this.e = str;
            this.d = str2;
            this.c = imageListener;
        }

        public void cancelRequest() {
            if (this.c != null) {
                a aVar = (a) ImageLoader.this.d.get(this.d);
                if (aVar == null) {
                    a aVar2 = (a) ImageLoader.this.e.get(this.d);
                    if (aVar2 != null) {
                        aVar2.removeContainerAndCancelIfNecessary(this);
                        if (aVar2.e.size() == 0) {
                            ImageLoader.this.e.remove(this.d);
                        }
                    }
                } else if (aVar.removeContainerAndCancelIfNecessary(this)) {
                    ImageLoader.this.d.remove(this.d);
                }
            }
        }

        public Bitmap getBitmap() {
            return this.b;
        }

        public String getRequestUrl() {
            return this.e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a {
        private final Request<?> b;
        private Bitmap c;
        private VolleyError d;
        private final LinkedList<ImageContainer> e = new LinkedList<>();

        public a(Request<?> request, ImageContainer imageContainer) {
            this.b = request;
            this.e.add(imageContainer);
        }

        public void setError(VolleyError volleyError) {
            this.d = volleyError;
        }

        public VolleyError getError() {
            return this.d;
        }

        public void addContainer(ImageContainer imageContainer) {
            this.e.add(imageContainer);
        }

        public boolean removeContainerAndCancelIfNecessary(ImageContainer imageContainer) {
            this.e.remove(imageContainer);
            if (this.e.size() == 0) {
                this.b.cancel();
                return true;
            }
            return false;
        }
    }

    private void a(String str, a aVar) {
        this.e.put(str, aVar);
        if (this.g == null) {
            this.g = new Runnable() { // from class: com.mopub.volley.toolbox.ImageLoader.4
                @Override // java.lang.Runnable
                public void run() {
                    for (a aVar2 : ImageLoader.this.e.values()) {
                        Iterator it = aVar2.e.iterator();
                        while (it.hasNext()) {
                            ImageContainer imageContainer = (ImageContainer) it.next();
                            if (imageContainer.c != null) {
                                if (aVar2.getError() == null) {
                                    imageContainer.b = aVar2.c;
                                    imageContainer.c.onResponse(imageContainer, false);
                                } else {
                                    imageContainer.c.onErrorResponse(aVar2.getError());
                                }
                            }
                        }
                    }
                    ImageLoader.this.e.clear();
                    ImageLoader.this.g = null;
                }
            };
            this.f.postDelayed(this.g, this.b);
        }
    }

    private void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("ImageLoader must be invoked from the main thread.");
        }
    }

    private static String a(String str, int i, int i2) {
        return new StringBuilder(str.length() + 12).append("#W").append(i).append("#H").append(i2).append(str).toString();
    }
}
