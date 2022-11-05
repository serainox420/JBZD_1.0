package com.flurry.android.ads;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.flurry.sdk.de;
import com.flurry.sdk.i;
import com.flurry.sdk.km;
import com.flurry.sdk.m;
import com.millennialmedia.NativeAd;
import java.util.Map;
/* loaded from: classes2.dex */
public final class FlurryAdNativeAsset {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2400a = FlurryAdNativeAsset.class.getSimpleName();
    private de b;
    private int c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlurryAdNativeAsset(de deVar, int i) {
        if (deVar == null) {
            throw new IllegalArgumentException("NativeAsset cannot be null.");
        }
        this.b = deVar;
        this.c = i;
    }

    public final String getName() {
        return this.b.f2530a;
    }

    public final String getValue() {
        switch (this.b.b) {
            case STRING:
                return this.b.c;
            case IMAGE:
                Map<String, String> map = this.b.f;
                if (!((!this.b.f2530a.equals("secOrigImg") && !this.b.f2530a.equals("secHqImage") && !this.b.f2530a.equals("secImage")) || !map.containsKey("internalOnly") || !Boolean.parseBoolean(map.get("internalOnly")))) {
                    km.a(f2400a, "Cannot call getValue() this is video ad. Please look for video asset.");
                    return null;
                }
                m mVar = i.a().g;
                return m.a(this.b, this.c);
            case VIDEO:
                km.a(f2400a, "Cannot call getValue() on video type.");
                return null;
            default:
                return null;
        }
    }

    public final FlurryAdNativeAssetType getType() {
        switch (this.b.b) {
            case STRING:
                return FlurryAdNativeAssetType.TEXT;
            case IMAGE:
                return FlurryAdNativeAssetType.IMAGE;
            default:
                return null;
        }
    }

    public final void loadAssetIntoView(View view) {
        i.a().g.a(this.b, view, this.c);
    }

    public final View getAssetView(Context context) {
        View view = null;
        m mVar = i.a().g;
        de deVar = this.b;
        int i = this.c;
        if (context != null && deVar != null) {
            switch (m.AnonymousClass6.f3052a[deVar.b.ordinal()]) {
                case 1:
                    if (NativeAd.COMPONENT_ID_CALL_TO_ACTION.equals(deVar.f2530a) || "clickToCall".equals(deVar.f2530a)) {
                        view = new Button(context);
                        break;
                    } else {
                        view = new TextView(context);
                        break;
                    }
                    break;
                case 2:
                    view = new ImageView(context);
                    break;
            }
            mVar.a(deVar, view, i);
        }
        return view;
    }
}
