package pl.jbzd.core.ui.view.toggleswitch;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import pl.jbzd.R;
/* compiled from: ToggleSwitchButton.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private View f6130a;
    private TextView b;
    private View c;

    public a(Context context) {
        this(LayoutInflater.from(context).inflate(R.layout.view_toggle_switch_item, (ViewGroup) null));
    }

    public a(View view) {
        this.f6130a = view;
        this.b = (TextView) view.findViewById(R.id.text_view);
        this.c = view.findViewById(R.id.separator);
    }

    public View a() {
        return this.f6130a;
    }

    public TextView b() {
        return this.b;
    }

    public View c() {
        return this.c;
    }

    public void d() {
        c().setVisibility(0);
    }

    public void e() {
        c().setVisibility(4);
    }
}
