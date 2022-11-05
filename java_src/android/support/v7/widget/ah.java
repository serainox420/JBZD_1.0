package android.support.v7.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
/* compiled from: RecyclerViewAccessibilityDelegate.java */
/* loaded from: classes.dex */
public class ah extends android.support.v4.view.a {

    /* renamed from: a  reason: collision with root package name */
    final RecyclerView f866a;
    final android.support.v4.view.a c = new android.support.v4.view.a() { // from class: android.support.v7.widget.ah.1
        @Override // android.support.v4.view.a
        public void a(View view, android.support.v4.view.a.c cVar) {
            super.a(view, cVar);
            if (!ah.this.b() && ah.this.f866a.getLayoutManager() != null) {
                ah.this.f866a.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, cVar);
            }
        }

        @Override // android.support.v4.view.a
        public boolean a(View view, int i, Bundle bundle) {
            if (super.a(view, i, bundle)) {
                return true;
            }
            if (!ah.this.b() && ah.this.f866a.getLayoutManager() != null) {
                return ah.this.f866a.getLayoutManager().performAccessibilityActionForItem(view, i, bundle);
            }
            return false;
        }
    };

    public ah(RecyclerView recyclerView) {
        this.f866a = recyclerView;
    }

    boolean b() {
        return this.f866a.hasPendingAdapterUpdates();
    }

    @Override // android.support.v4.view.a
    public boolean a(View view, int i, Bundle bundle) {
        if (super.a(view, i, bundle)) {
            return true;
        }
        if (!b() && this.f866a.getLayoutManager() != null) {
            return this.f866a.getLayoutManager().performAccessibilityAction(i, bundle);
        }
        return false;
    }

    @Override // android.support.v4.view.a
    public void a(View view, android.support.v4.view.a.c cVar) {
        super.a(view, cVar);
        cVar.b((CharSequence) RecyclerView.class.getName());
        if (!b() && this.f866a.getLayoutManager() != null) {
            this.f866a.getLayoutManager().onInitializeAccessibilityNodeInfo(cVar);
        }
    }

    @Override // android.support.v4.view.a
    public void a(View view, AccessibilityEvent accessibilityEvent) {
        super.a(view, accessibilityEvent);
        accessibilityEvent.setClassName(RecyclerView.class.getName());
        if ((view instanceof RecyclerView) && !b()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
            }
        }
    }

    public android.support.v4.view.a c() {
        return this.c;
    }
}
