package android.support.v7.view.menu;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.view.d;
import android.support.v7.view.menu.k;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MenuItemWrapperJB.java */
@TargetApi(16)
@RestrictTo
/* loaded from: classes.dex */
public class l extends k {
    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Context context, android.support.v4.d.a.b bVar) {
        super(context, bVar);
    }

    @Override // android.support.v7.view.menu.k
    k.a a(ActionProvider actionProvider) {
        return new a(this.f710a, actionProvider);
    }

    /* compiled from: MenuItemWrapperJB.java */
    /* loaded from: classes.dex */
    class a extends k.a implements ActionProvider.VisibilityListener {
        d.b c;

        public a(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // android.support.v4.view.d
        public View a(MenuItem menuItem) {
            return this.f723a.onCreateActionView(menuItem);
        }

        @Override // android.support.v4.view.d
        public boolean c() {
            return this.f723a.overridesItemVisibility();
        }

        @Override // android.support.v4.view.d
        public boolean d() {
            return this.f723a.isVisible();
        }

        @Override // android.support.v4.view.d
        public void e() {
            this.f723a.refreshVisibility();
        }

        @Override // android.support.v4.view.d
        public void a(d.b bVar) {
            this.c = bVar;
            ActionProvider actionProvider = this.f723a;
            if (bVar == null) {
                this = null;
            }
            actionProvider.setVisibilityListener(this);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            if (this.c != null) {
                this.c.a(z);
            }
        }
    }
}
