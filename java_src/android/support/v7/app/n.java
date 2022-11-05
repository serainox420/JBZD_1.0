package android.support.v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.support.v7.media.g;
import android.support.v7.mediarouter.R;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* compiled from: MediaRouteChooserDialog.java */
/* loaded from: classes.dex */
public class n extends k {

    /* renamed from: a  reason: collision with root package name */
    private final android.support.v7.media.g f587a;
    private final a b;
    private TextView c;
    private android.support.v7.media.f d;
    private ArrayList<g.C0043g> e;
    private b f;
    private ListView g;
    private boolean h;
    private long i;
    private final Handler j;

    public n(Context context) {
        this(context, 0);
    }

    public n(Context context, int i) {
        super(t.a(context, i), i);
        this.d = android.support.v7.media.f.b;
        this.j = new Handler() { // from class: android.support.v7.app.n.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        n.this.b((List) message.obj);
                        return;
                    default:
                        return;
                }
            }
        };
        this.f587a = android.support.v7.media.g.a(getContext());
        this.b = new a();
    }

    public void a(android.support.v7.media.f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (!this.d.equals(fVar)) {
            this.d = fVar;
            if (this.h) {
                this.f587a.a(this.b);
                this.f587a.a(fVar, this.b, 1);
            }
            c();
        }
    }

    public void a(List<g.C0043g> list) {
        int size = list.size();
        while (true) {
            int i = size - 1;
            if (size > 0) {
                if (!a(list.get(i))) {
                    list.remove(i);
                    size = i;
                } else {
                    size = i;
                }
            } else {
                return;
            }
        }
    }

    public boolean a(g.C0043g c0043g) {
        return !c0043g.o() && c0043g.g() && c0043g.a(this.d);
    }

    @Override // android.support.v7.app.k, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.c.setText(charSequence);
    }

    @Override // android.support.v7.app.k, android.app.Dialog
    public void setTitle(int i) {
        this.c.setText(i);
    }

    @Override // android.support.v7.app.k, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mr_chooser_dialog);
        this.e = new ArrayList<>();
        this.f = new b(getContext(), this.e);
        this.g = (ListView) findViewById(R.id.mr_chooser_list);
        this.g.setAdapter((ListAdapter) this.f);
        this.g.setOnItemClickListener(this.f);
        this.g.setEmptyView(findViewById(16908292));
        this.c = (TextView) findViewById(R.id.mr_chooser_title);
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        getWindow().setLayout(s.a(getContext()), -2);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.h = true;
        this.f587a.a(this.d, this.b, 1);
        c();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.h = false;
        this.f587a.a(this.b);
        this.j.removeMessages(1);
        super.onDetachedFromWindow();
    }

    public void c() {
        if (this.h) {
            ArrayList arrayList = new ArrayList(this.f587a.a());
            a(arrayList);
            Collections.sort(arrayList, c.f591a);
            if (SystemClock.uptimeMillis() - this.i >= 300) {
                b(arrayList);
                return;
            }
            this.j.removeMessages(1);
            this.j.sendMessageAtTime(this.j.obtainMessage(1, arrayList), this.i + 300);
        }
    }

    void b(List<g.C0043g> list) {
        this.i = SystemClock.uptimeMillis();
        this.e.clear();
        this.e.addAll(list);
        this.f.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaRouteChooserDialog.java */
    /* loaded from: classes.dex */
    public final class b extends ArrayAdapter<g.C0043g> implements AdapterView.OnItemClickListener {
        private final LayoutInflater b;
        private final Drawable c;
        private final Drawable d;
        private final Drawable e;
        private final Drawable f;

        public b(Context context, List<g.C0043g> list) {
            super(context, 0, list);
            this.b = LayoutInflater.from(context);
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.mediaRouteDefaultIconDrawable, R.attr.mediaRouteTvIconDrawable, R.attr.mediaRouteSpeakerIconDrawable, R.attr.mediaRouteSpeakerGroupIconDrawable});
            this.c = obtainStyledAttributes.getDrawable(0);
            this.d = obtainStyledAttributes.getDrawable(1);
            this.e = obtainStyledAttributes.getDrawable(2);
            this.f = obtainStyledAttributes.getDrawable(3);
            obtainStyledAttributes.recycle();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return getItem(i).g();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            boolean z = true;
            if (view == null) {
                view = this.b.inflate(R.layout.mr_chooser_list_item, viewGroup, false);
            }
            g.C0043g item = getItem(i);
            TextView textView = (TextView) view.findViewById(R.id.mr_chooser_route_name);
            TextView textView2 = (TextView) view.findViewById(R.id.mr_chooser_route_desc);
            textView.setText(item.d());
            String e = item.e();
            if (item.i() != 2 && item.i() != 1) {
                z = false;
            }
            if (z && !TextUtils.isEmpty(e)) {
                textView.setGravity(80);
                textView2.setVisibility(0);
                textView2.setText(e);
            } else {
                textView.setGravity(16);
                textView2.setVisibility(8);
                textView2.setText("");
            }
            view.setEnabled(item.g());
            ImageView imageView = (ImageView) view.findViewById(R.id.mr_chooser_route_icon);
            if (imageView != null) {
                imageView.setImageDrawable(a(item));
            }
            return view;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            g.C0043g item = getItem(i);
            if (item.g()) {
                item.v();
                n.this.dismiss();
            }
        }

        private Drawable a(g.C0043g c0043g) {
            Uri f = c0043g.f();
            if (f != null) {
                try {
                    Drawable createFromStream = Drawable.createFromStream(getContext().getContentResolver().openInputStream(f), null);
                    if (createFromStream != null) {
                        return createFromStream;
                    }
                } catch (IOException e) {
                    Log.w("MediaRouteChooserDialog", "Failed to load " + f, e);
                }
            }
            return b(c0043g);
        }

        private Drawable b(g.C0043g c0043g) {
            switch (c0043g.n()) {
                case 1:
                    return this.d;
                case 2:
                    return this.e;
                default:
                    if (c0043g instanceof g.f) {
                        return this.f;
                    }
                    return this.c;
            }
        }
    }

    /* compiled from: MediaRouteChooserDialog.java */
    /* loaded from: classes.dex */
    private final class a extends g.a {
        a() {
        }

        @Override // android.support.v7.media.g.a
        public void onRouteAdded(android.support.v7.media.g gVar, g.C0043g c0043g) {
            n.this.c();
        }

        @Override // android.support.v7.media.g.a
        public void onRouteRemoved(android.support.v7.media.g gVar, g.C0043g c0043g) {
            n.this.c();
        }

        @Override // android.support.v7.media.g.a
        public void onRouteChanged(android.support.v7.media.g gVar, g.C0043g c0043g) {
            n.this.c();
        }

        @Override // android.support.v7.media.g.a
        public void onRouteSelected(android.support.v7.media.g gVar, g.C0043g c0043g) {
            n.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MediaRouteChooserDialog.java */
    /* loaded from: classes.dex */
    public static final class c implements Comparator<g.C0043g> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f591a = new c();

        c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(g.C0043g c0043g, g.C0043g c0043g2) {
            return c0043g.d().compareToIgnoreCase(c0043g2.d());
        }
    }
}
