package com.moat.analytics.mobile.aol;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.aol.base.annotation.NonNull;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
import com.moat.analytics.mobile.aol.base.functional.Optional;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes3.dex */
class WebViewHoundImpl implements WebViewHound {
    private static final int MAX_HUNT_STEPS = 100;
    private static final String TAG = "MoatWebViewHound";

    @Override // com.moat.analytics.mobile.aol.WebViewHound
    @NonNull
    public Optional<WebView> sniff(ViewGroup viewGroup) throws MoatException {
        if (viewGroup instanceof WebView) {
            return Optional.of((WebView) viewGroup);
        }
        LinkedList linkedList = new LinkedList();
        linkedList.add(viewGroup);
        HashSet hashSet = new HashSet();
        int i = 0;
        WebView webView = null;
        while (!linkedList.isEmpty() && i < 100) {
            int i2 = i + 1;
            Iterator<View> it = new IterableViewGroup((ViewGroup) linkedList.poll()).iterator();
            while (true) {
                if (it.hasNext()) {
                    View next = it.next();
                    if (next instanceof WebView) {
                        if (webView == null) {
                            webView = (WebView) next;
                        } else {
                            Log.e(TAG, "Ambiguous ad container: multiple WebViews reside within it.");
                            webView = null;
                            break;
                        }
                    }
                    if (next instanceof ViewGroup) {
                        ViewGroup viewGroup2 = (ViewGroup) next;
                        if (!hashSet.contains(viewGroup2)) {
                            hashSet.add(viewGroup2);
                            linkedList.add(viewGroup2);
                        }
                    }
                }
            }
            i = i2;
        }
        return Optional.ofNullable(webView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class IterableViewGroup implements Iterable<View> {
        private final ViewGroup viewGroup;

        private IterableViewGroup(ViewGroup viewGroup) {
            this.viewGroup = viewGroup;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public class ViewGroupIterator implements Iterator<View> {
            private int cursor;

            private ViewGroupIterator() {
                this.cursor = -1;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.cursor + 1 < IterableViewGroup.this.viewGroup.getChildCount();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            /* renamed from: next */
            public View mo550next() {
                this.cursor++;
                return IterableViewGroup.this.viewGroup.getChildAt(this.cursor);
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Not implemented. Under development.");
            }
        }

        @Override // java.lang.Iterable
        public Iterator<View> iterator() {
            return new ViewGroupIterator();
        }
    }
}
