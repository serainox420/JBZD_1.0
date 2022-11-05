package android.support.v4.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
/* compiled from: LayoutInflaterCompatBase.java */
@TargetApi(9)
/* loaded from: classes.dex */
class k {

    /* compiled from: LayoutInflaterCompatBase.java */
    /* loaded from: classes.dex */
    static class a implements LayoutInflater.Factory {

        /* renamed from: a  reason: collision with root package name */
        final n f466a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(n nVar) {
            this.f466a = nVar;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.f466a.a(null, str, context, attributeSet);
        }

        public String toString() {
            return getClass().getName() + "{" + this.f466a + "}";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(LayoutInflater layoutInflater, n nVar) {
        layoutInflater.setFactory(nVar != null ? new a(nVar) : null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n a(LayoutInflater layoutInflater) {
        LayoutInflater.Factory factory = layoutInflater.getFactory();
        if (factory instanceof a) {
            return ((a) factory).f466a;
        }
        return null;
    }
}
