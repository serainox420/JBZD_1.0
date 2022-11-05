package com.facebook.imagepipeline.producers;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import com.facebook.common.memory.PooledByteBufferFactory;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.IOException;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public class LocalResourceFetchProducer extends LocalFetchProducer {
    public static final String PRODUCER_NAME = "LocalResourceFetchProducer";
    private final Resources mResources;

    public LocalResourceFetchProducer(Executor executor, PooledByteBufferFactory pooledByteBufferFactory, Resources resources) {
        super(executor, pooledByteBufferFactory);
        this.mResources = resources;
    }

    @Override // com.facebook.imagepipeline.producers.LocalFetchProducer
    protected EncodedImage getEncodedImage(ImageRequest imageRequest) throws IOException {
        return getEncodedImage(this.mResources.openRawResource(getResourceId(imageRequest)), getLength(imageRequest));
    }

    private int getLength(ImageRequest imageRequest) {
        AssetFileDescriptor assetFileDescriptor;
        Throwable th;
        int i;
        try {
            assetFileDescriptor = this.mResources.openRawResourceFd(getResourceId(imageRequest));
        } catch (Resources.NotFoundException e) {
            assetFileDescriptor = null;
        } catch (Throwable th2) {
            assetFileDescriptor = null;
            th = th2;
        }
        try {
            i = (int) assetFileDescriptor.getLength();
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException e2) {
                }
            }
        } catch (Resources.NotFoundException e3) {
            i = -1;
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException e4) {
                }
            }
            return i;
        } catch (Throwable th3) {
            th = th3;
            if (assetFileDescriptor != null) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException e5) {
                }
            }
            throw th;
        }
        return i;
    }

    @Override // com.facebook.imagepipeline.producers.LocalFetchProducer
    protected String getProducerName() {
        return PRODUCER_NAME;
    }

    private static int getResourceId(ImageRequest imageRequest) {
        return Integer.parseInt(imageRequest.getSourceUri().getPath().substring(1));
    }
}
