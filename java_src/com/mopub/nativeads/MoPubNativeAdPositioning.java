package com.mopub.nativeads;

import com.mopub.common.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public final class MoPubNativeAdPositioning {

    /* loaded from: classes3.dex */
    public static class MoPubServerPositioning {
    }

    /* loaded from: classes3.dex */
    public static class MoPubClientPositioning {
        public static final int NO_REPEAT = Integer.MAX_VALUE;

        /* renamed from: a  reason: collision with root package name */
        private final ArrayList<Integer> f4597a = new ArrayList<>();
        private int b = Integer.MAX_VALUE;

        public MoPubClientPositioning addFixedPosition(int i) {
            int binarySearch;
            if (Preconditions.NoThrow.checkArgument(i >= 0) && (binarySearch = Collections.binarySearch(this.f4597a, Integer.valueOf(i))) < 0) {
                this.f4597a.add(binarySearch ^ (-1), Integer.valueOf(i));
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public List<Integer> a() {
            return this.f4597a;
        }

        public MoPubClientPositioning enableRepeatingPositions(int i) {
            boolean z = true;
            if (i <= 1) {
                z = false;
            }
            if (!Preconditions.NoThrow.checkArgument(z, "Repeating interval must be greater than 1")) {
                this.b = Integer.MAX_VALUE;
            } else {
                this.b = i;
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int b() {
            return this.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MoPubClientPositioning a(MoPubClientPositioning moPubClientPositioning) {
        Preconditions.checkNotNull(moPubClientPositioning);
        MoPubClientPositioning moPubClientPositioning2 = new MoPubClientPositioning();
        moPubClientPositioning2.f4597a.addAll(moPubClientPositioning.f4597a);
        moPubClientPositioning2.b = moPubClientPositioning.b;
        return moPubClientPositioning2;
    }

    public static MoPubClientPositioning clientPositioning() {
        return new MoPubClientPositioning();
    }

    public static MoPubServerPositioning serverPositioning() {
        return new MoPubServerPositioning();
    }
}
