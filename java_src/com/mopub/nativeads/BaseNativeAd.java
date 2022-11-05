package com.mopub.nativeads;

import android.view.View;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes3.dex */
public abstract class BaseNativeAd {

    /* renamed from: a  reason: collision with root package name */
    private final Set<String> f4577a = new HashSet();
    private final Set<String> b = new HashSet();
    private NativeEventListener c;

    /* loaded from: classes3.dex */
    public interface NativeEventListener {
        void onAdClicked();

        void onAdImpressed();
    }

    public abstract void clear(View view);

    public abstract void destroy();

    public abstract void prepare(View view);

    public void setNativeEventListener(NativeEventListener nativeEventListener) {
        this.c = nativeEventListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a() {
        if (this.c != null) {
            this.c.onAdImpressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b() {
        if (this.c != null) {
            this.c.onAdClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Object obj) throws ClassCastException {
        if (!(obj instanceof JSONArray)) {
            throw new ClassCastException("Expected impression trackers of type JSONArray.");
        }
        JSONArray jSONArray = (JSONArray) obj;
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                addImpressionTracker(jSONArray.getString(i));
            } catch (JSONException e) {
                MoPubLog.d("Unable to parse impression trackers.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(Object obj) throws ClassCastException {
        if (!(obj instanceof JSONArray)) {
            throw new ClassCastException("Expected click trackers of type JSONArray.");
        }
        JSONArray jSONArray = (JSONArray) obj;
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                addClickTracker(jSONArray.getString(i));
            } catch (JSONException e) {
                MoPubLog.d("Unable to parse click trackers.");
            }
        }
    }

    public final void addImpressionTracker(String str) {
        if (Preconditions.NoThrow.checkNotNull(str, "impressionTracker url is not allowed to be null")) {
            this.f4577a.add(str);
        }
    }

    public final void addClickTracker(String str) {
        if (Preconditions.NoThrow.checkNotNull(str, "clickTracker url is not allowed to be null")) {
            this.b.add(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> c() {
        return new HashSet(this.f4577a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> d() {
        return new HashSet(this.b);
    }
}
