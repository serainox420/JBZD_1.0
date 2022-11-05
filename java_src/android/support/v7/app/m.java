package android.support.v7.app;

import android.support.v7.media.g;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
/* compiled from: MediaRouteActionProvider.java */
/* loaded from: classes.dex */
public class m extends android.support.v4.view.d {

    /* renamed from: a  reason: collision with root package name */
    private final android.support.v7.media.g f585a;
    private final a b;
    private android.support.v7.media.f c;
    private r d;
    private MediaRouteButton e;

    public void a(android.support.v7.media.f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (!this.c.equals(fVar)) {
            if (!this.c.c()) {
                this.f585a.a(this.b);
            }
            if (!fVar.c()) {
                this.f585a.a(fVar, (g.a) this.b);
            }
            this.c = fVar;
            j();
            if (this.e != null) {
                this.e.setRouteSelector(fVar);
            }
        }
    }

    public MediaRouteButton i() {
        return new MediaRouteButton(a());
    }

    @Override // android.support.v4.view.d
    public View b() {
        if (this.e != null) {
            Log.e("MediaRouteActionProvider", "onCreateActionView: this ActionProvider is already associated with a menu item. Don't reuse MediaRouteActionProvider instances! Abandoning the old menu item...");
        }
        this.e = i();
        this.e.setCheatSheetEnabled(true);
        this.e.setRouteSelector(this.c);
        this.e.setDialogFactory(this.d);
        this.e.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
        return this.e;
    }

    @Override // android.support.v4.view.d
    public boolean f() {
        if (this.e != null) {
            return this.e.a();
        }
        return false;
    }

    @Override // android.support.v4.view.d
    public boolean c() {
        return true;
    }

    @Override // android.support.v4.view.d
    public boolean d() {
        return this.f585a.a(this.c, 1);
    }

    void j() {
        e();
    }

    /* compiled from: MediaRouteActionProvider.java */
    /* loaded from: classes.dex */
    private static final class a extends g.a {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<m> f586a;

        @Override // android.support.v7.media.g.a
        public void onRouteAdded(android.support.v7.media.g gVar, g.C0043g c0043g) {
            a(gVar);
        }

        @Override // android.support.v7.media.g.a
        public void onRouteRemoved(android.support.v7.media.g gVar, g.C0043g c0043g) {
            a(gVar);
        }

        @Override // android.support.v7.media.g.a
        public void onRouteChanged(android.support.v7.media.g gVar, g.C0043g c0043g) {
            a(gVar);
        }

        @Override // android.support.v7.media.g.a
        public void onProviderAdded(android.support.v7.media.g gVar, g.e eVar) {
            a(gVar);
        }

        @Override // android.support.v7.media.g.a
        public void onProviderRemoved(android.support.v7.media.g gVar, g.e eVar) {
            a(gVar);
        }

        @Override // android.support.v7.media.g.a
        public void onProviderChanged(android.support.v7.media.g gVar, g.e eVar) {
            a(gVar);
        }

        private void a(android.support.v7.media.g gVar) {
            m mVar = this.f586a.get();
            if (mVar != null) {
                mVar.j();
            } else {
                gVar.a(this);
            }
        }
    }
}
