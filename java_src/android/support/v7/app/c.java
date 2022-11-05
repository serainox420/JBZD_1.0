package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.app.AlertController;
import android.support.v7.appcompat.R;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;
/* compiled from: AlertDialog.java */
/* loaded from: classes.dex */
public class c extends k implements DialogInterface {

    /* renamed from: a  reason: collision with root package name */
    final AlertController f573a;

    /* JADX INFO: Access modifiers changed from: protected */
    public c(Context context, int i) {
        super(context, a(context, i));
        this.f573a = new AlertController(getContext(), this, getWindow());
    }

    static int a(Context context, int i) {
        if (i < 16777216) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
            return typedValue.resourceId;
        }
        return i;
    }

    @Override // android.support.v7.app.k, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f573a.a(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.k, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f573a.a();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f573a.a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f573a.b(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    /* compiled from: AlertDialog.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final AlertController.a f574a;
        private final int b;

        public a(Context context) {
            this(context, c.a(context, 0));
        }

        public a(Context context, int i) {
            this.f574a = new AlertController.a(new ContextThemeWrapper(context, c.a(context, i)));
            this.b = i;
        }

        public Context a() {
            return this.f574a.f538a;
        }

        public a a(CharSequence charSequence) {
            this.f574a.f = charSequence;
            return this;
        }

        public a a(View view) {
            this.f574a.g = view;
            return this;
        }

        public a a(Drawable drawable) {
            this.f574a.d = drawable;
            return this;
        }

        public a a(DialogInterface.OnKeyListener onKeyListener) {
            this.f574a.r = onKeyListener;
            return this;
        }

        public a a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            this.f574a.t = listAdapter;
            this.f574a.u = onClickListener;
            return this;
        }

        public c b() {
            c cVar = new c(this.f574a.f538a, this.b);
            this.f574a.a(cVar.f573a);
            cVar.setCancelable(this.f574a.o);
            if (this.f574a.o) {
                cVar.setCanceledOnTouchOutside(true);
            }
            cVar.setOnCancelListener(this.f574a.p);
            cVar.setOnDismissListener(this.f574a.q);
            if (this.f574a.r != null) {
                cVar.setOnKeyListener(this.f574a.r);
            }
            return cVar;
        }
    }
}
