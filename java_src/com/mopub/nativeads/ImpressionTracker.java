package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes3.dex */
public class ImpressionTracker {

    /* renamed from: a  reason: collision with root package name */
    private final l f4578a;
    private final Map<View, ImpressionInterface> b;
    private final Map<View, k<ImpressionInterface>> c;
    private final Handler d;
    private final a e;
    private final l.b f;
    private l.d g;

    public ImpressionTracker(Context context) {
        this(new WeakHashMap(), new WeakHashMap(), new l.b(), new l(context), new Handler(Looper.getMainLooper()));
    }

    @VisibleForTesting
    ImpressionTracker(Map<View, ImpressionInterface> map, Map<View, k<ImpressionInterface>> map2, l.b bVar, l lVar, Handler handler) {
        this.b = map;
        this.c = map2;
        this.f = bVar;
        this.f4578a = lVar;
        this.g = new l.d() { // from class: com.mopub.nativeads.ImpressionTracker.1
            @Override // com.mopub.nativeads.l.d
            public void onVisibilityChanged(List<View> list, List<View> list2) {
                for (View view : list) {
                    ImpressionInterface impressionInterface = (ImpressionInterface) ImpressionTracker.this.b.get(view);
                    if (impressionInterface != null) {
                        k kVar = (k) ImpressionTracker.this.c.get(view);
                        if (kVar == null || !impressionInterface.equals(kVar.f4640a)) {
                            ImpressionTracker.this.c.put(view, new k(impressionInterface));
                        }
                    } else {
                        ImpressionTracker.this.removeView(view);
                    }
                }
                for (View view2 : list2) {
                    ImpressionTracker.this.c.remove(view2);
                }
                ImpressionTracker.this.a();
            }
        };
        this.f4578a.a(this.g);
        this.d = handler;
        this.e = new a();
    }

    public void addView(View view, ImpressionInterface impressionInterface) {
        if (this.b.get(view) != impressionInterface) {
            removeView(view);
            if (!impressionInterface.isImpressionRecorded()) {
                this.b.put(view, impressionInterface);
                this.f4578a.a(view, impressionInterface.getImpressionMinPercentageViewed());
            }
        }
    }

    public void removeView(View view) {
        this.b.remove(view);
        a(view);
        this.f4578a.a(view);
    }

    public void clear() {
        this.b.clear();
        this.c.clear();
        this.f4578a.a();
        this.d.removeMessages(0);
    }

    public void destroy() {
        clear();
        this.f4578a.b();
        this.g = null;
    }

    @VisibleForTesting
    void a() {
        if (!this.d.hasMessages(0)) {
            this.d.postDelayed(this.e, 250L);
        }
    }

    private void a(View view) {
        this.c.remove(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        private final ArrayList<View> b = new ArrayList<>();

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (Map.Entry entry : ImpressionTracker.this.c.entrySet()) {
                View view = (View) entry.getKey();
                k kVar = (k) entry.getValue();
                if (ImpressionTracker.this.f.a(kVar.b, ((ImpressionInterface) kVar.f4640a).getImpressionMinTimeViewed())) {
                    ((ImpressionInterface) kVar.f4640a).recordImpression(view);
                    ((ImpressionInterface) kVar.f4640a).setImpressionRecorded();
                    this.b.add(view);
                }
            }
            Iterator<View> it = this.b.iterator();
            while (it.hasNext()) {
                ImpressionTracker.this.removeView(it.next());
            }
            this.b.clear();
            if (!ImpressionTracker.this.c.isEmpty()) {
                ImpressionTracker.this.a();
            }
        }
    }
}
