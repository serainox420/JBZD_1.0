package com.mopub.nativeads;

import com.mopub.common.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class AdRendererRegistry {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<MoPubAdRenderer> f4575a = new ArrayList<>();

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        this.f4575a.add(moPubAdRenderer);
    }

    public int getAdRendererCount() {
        return this.f4575a.size();
    }

    public Iterable<MoPubAdRenderer> getRendererIterable() {
        return this.f4575a;
    }

    public int getViewTypeForAd(NativeAd nativeAd) {
        Preconditions.checkNotNull(nativeAd);
        for (int i = 0; i < this.f4575a.size(); i++) {
            if (nativeAd.getMoPubAdRenderer() == this.f4575a.get(i)) {
                return i + 1;
            }
        }
        return 0;
    }

    public MoPubAdRenderer getRendererForAd(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        Iterator<MoPubAdRenderer> it = this.f4575a.iterator();
        while (it.hasNext()) {
            MoPubAdRenderer next = it.next();
            if (next.supports(baseNativeAd)) {
                return next;
            }
        }
        return null;
    }

    public MoPubAdRenderer getRendererForViewType(int i) {
        try {
            return this.f4575a.get(i - 1);
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }
}
