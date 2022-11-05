package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class NativeImageHelper {

    /* loaded from: classes3.dex */
    public interface ImageListener {
        void onImagesCached();

        void onImagesFailedToCache(NativeErrorCode nativeErrorCode);
    }

    public static void preCacheImages(Context context, List<String> list, final ImageListener imageListener) {
        ImageLoader imageLoader = Networking.getImageLoader(context);
        final AtomicInteger atomicInteger = new AtomicInteger(list.size());
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ImageLoader.ImageListener imageListener2 = new ImageLoader.ImageListener() { // from class: com.mopub.nativeads.NativeImageHelper.1
            @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                if (imageContainer.getBitmap() != null && atomicInteger.decrementAndGet() == 0 && !atomicBoolean.get()) {
                    imageListener.onImagesCached();
                }
            }

            @Override // com.mopub.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                MoPubLog.d("Failed to download a native ads image:", volleyError);
                boolean andSet = atomicBoolean.getAndSet(true);
                atomicInteger.decrementAndGet();
                if (!andSet) {
                    imageListener.onImagesFailedToCache(NativeErrorCode.IMAGE_DOWNLOAD_FAILURE);
                }
            }
        };
        for (String str : list) {
            if (TextUtils.isEmpty(str)) {
                atomicBoolean.set(true);
                imageListener.onImagesFailedToCache(NativeErrorCode.IMAGE_DOWNLOAD_FAILURE);
                return;
            }
            imageLoader.get(str, imageListener2);
        }
    }

    public static void loadImageView(String str, final ImageView imageView) {
        if (Preconditions.NoThrow.checkNotNull(imageView, "Cannot load image into null ImageView")) {
            if (!Preconditions.NoThrow.checkNotNull(str, "Cannot load image with null url")) {
                imageView.setImageDrawable(null);
            } else {
                Networking.getImageLoader(imageView.getContext()).get(str, new ImageLoader.ImageListener() { // from class: com.mopub.nativeads.NativeImageHelper.2
                    @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
                    public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                        if (!z) {
                            MoPubLog.d("Image was not loaded immediately into your ad view. You should call preCacheImages as part of your custom event loading process.");
                        }
                        imageView.setImageBitmap(imageContainer.getBitmap());
                    }

                    @Override // com.mopub.volley.Response.ErrorListener
                    public void onErrorResponse(VolleyError volleyError) {
                        MoPubLog.d("Failed to load image.", volleyError);
                        imageView.setImageDrawable(null);
                    }
                });
            }
        }
    }
}
