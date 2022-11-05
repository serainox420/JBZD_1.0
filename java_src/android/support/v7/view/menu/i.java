package android.support.v7.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.support.v7.app.c;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.o;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.gms.drive.MetadataChangeSet;
/* compiled from: MenuDialogHelper.java */
/* loaded from: classes.dex */
class i implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, o.a {

    /* renamed from: a  reason: collision with root package name */
    f f720a;
    private h b;
    private android.support.v7.app.c c;
    private o.a d;

    public i(h hVar) {
        this.b = hVar;
    }

    public void a(IBinder iBinder) {
        h hVar = this.b;
        c.a aVar = new c.a(hVar.e());
        this.f720a = new f(aVar.a(), R.layout.abc_list_menu_item_layout);
        this.f720a.a(this);
        this.b.a(this.f720a);
        aVar.a(this.f720a.d(), this);
        View o = hVar.o();
        if (o != null) {
            aVar.a(o);
        } else {
            aVar.a(hVar.n()).a(hVar.m());
        }
        aVar.a(this);
        this.c = aVar.b();
        this.c.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.c.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= MetadataChangeSet.INDEXABLE_TEXT_SIZE_LIMIT_BYTES;
        this.c.show();
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.c.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.b.b(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.b.performShortcut(i, keyEvent, 0);
    }

    public void a() {
        if (this.c != null) {
            this.c.dismiss();
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f720a.a(this.b, true);
    }

    @Override // android.support.v7.view.menu.o.a
    public void a(h hVar, boolean z) {
        if (z || hVar == this.b) {
            a();
        }
        if (this.d != null) {
            this.d.a(hVar, z);
        }
    }

    @Override // android.support.v7.view.menu.o.a
    public boolean a(h hVar) {
        if (this.d != null) {
            return this.d.a(hVar);
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.a((j) this.f720a.d().getItem(i), 0);
    }
}
