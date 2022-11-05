package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.request.ImageRequest;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public class SettableProducerContext extends BaseProducerContext {
    public SettableProducerContext(ImageRequest imageRequest, String str, ProducerListener producerListener, Object obj, ImageRequest.RequestLevel requestLevel, boolean z, boolean z2, Priority priority) {
        super(imageRequest, str, producerListener, obj, requestLevel, z, z2, priority);
    }

    public void setIsPrefetch(boolean z) {
        BaseProducerContext.callOnIsPrefetchChanged(setIsPrefetchNoCallbacks(z));
    }

    public void setIsIntermediateResultExpected(boolean z) {
        BaseProducerContext.callOnIsIntermediateResultExpectedChanged(setIsIntermediateResultExpectedNoCallbacks(z));
    }

    public void setPriority(Priority priority) {
        BaseProducerContext.callOnPriorityChanged(setPriorityNoCallbacks(priority));
    }
}
