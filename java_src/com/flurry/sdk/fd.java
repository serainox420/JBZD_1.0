package com.flurry.sdk;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.flurry.sdk.eg;
import com.flurry.sdk.ey;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class fd {
    private static final String d = fd.class.getName();
    private static final int i = lw.b(5);
    private static final int j = lw.b(10);
    private static final int k = lw.b(15);

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f2666a;
    RelativeLayout b = null;
    Dialog c;
    private ImageView e;
    private EditText f;
    private EditText g;
    private TextView h;
    private List<String> l;
    private boolean m;
    private ey n;
    private int o;
    private int p;
    private String q;
    private String r;

    public fd(ey eyVar, List<String> list) {
        this.m = false;
        this.n = null;
        this.m = eyVar.b().equals(ey.a.IMAGE_POST);
        this.n = eyVar;
        this.l = list;
        DisplayMetrics c = lw.c();
        this.o = c.widthPixels;
        this.p = c.heightPixels;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final Context context, ViewGroup viewGroup) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setBackgroundColor(-1);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        linearLayout.setOrientation(1);
        viewGroup.addView(linearLayout);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setBackgroundColor(Color.parseColor("#36465d"));
        linearLayout.addView(relativeLayout, new RelativeLayout.LayoutParams(-1, lw.b(50)));
        Button button = new Button(context);
        button.setText(eg.b());
        button.setTextColor(-1);
        button.setTextSize(2, 17.0f);
        button.setPadding(k, j, j, j);
        button.setGravity(17);
        button.setBackgroundColor(0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams.addRule(9);
        relativeLayout.addView(button, layoutParams);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fd.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                fd.this.c.dismiss();
                eh.a(ei.kPostCancelled, fd.this.n.e, "Post cancelled.");
            }
        });
        ImageView imageView = new ImageView(context);
        imageView.setPadding(0, j, 0, j);
        imageView.setImageBitmap(hi.d());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams2.addRule(13);
        relativeLayout.addView(imageView, layoutParams2);
        Button button2 = new Button(context);
        button2.setText(eg.a());
        button2.setTextColor(-1);
        button2.setTextSize(2, 17.0f);
        button2.setPadding(k, j, j, j);
        button2.setGravity(17);
        button2.setBackgroundColor(0);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams3.addRule(11);
        relativeLayout.addView(button2, layoutParams3);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fd.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                fd.this.c.dismiss();
                if (fd.this.m) {
                    if (!TextUtils.isEmpty(fd.this.f.getText().toString())) {
                        ((ex) fd.this.n).f2637a = fd.this.f.getText().toString();
                    }
                } else if (!TextUtils.isEmpty(fd.this.g.getText().toString())) {
                    ((fa) fd.this.n).f2649a = fd.this.g.getText().toString();
                }
                fd.this.n.d = fd.this.h.getText().toString();
                final ey eyVar = fd.this.n;
                eyVar.f = new ProgressDialog(context);
                eyVar.f.setProgressStyle(0);
                eyVar.f.setCancelable(true);
                eyVar.f.setCanceledOnTouchOutside(false);
                eyVar.c = System.currentTimeMillis();
                lt.a().a(eyVar.k);
                eyVar.f.show();
                jy.a().b(new ma() { // from class: com.flurry.sdk.ey.1
                    @Override // com.flurry.sdk.ma
                    public final void a() {
                        Map<String, String> a2 = eyVar.a();
                        if (a2.get("data") != null) {
                            ey.a(eyVar, a2);
                        } else {
                            ey.b(eyVar, a2);
                        }
                    }
                });
            }
        });
        if (this.m) {
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(0);
            linearLayout.addView(linearLayout2, new RelativeLayout.LayoutParams(-1, this.p / 4));
            ex exVar = (ex) this.n;
            this.f = new EditText(context);
            this.f.setTextSize(2, 16.0f);
            this.f.setTextColor(Color.parseColor("#444444"));
            this.f.setBackgroundColor(0);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
            layoutParams4.weight = 2.0f;
            layoutParams4.setMargins(0, i, i, i);
            linearLayout2.addView(this.f, layoutParams4);
            if (TextUtils.isEmpty(this.q)) {
                if (TextUtils.isEmpty(exVar.f2637a)) {
                    this.f.setHint(eg.d());
                } else {
                    this.f.setText(exVar.f2637a);
                }
            } else {
                this.f.setText(this.q);
            }
            ImageView imageView2 = new ImageView(context);
            imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -1);
            layoutParams5.weight = 1.0f;
            layoutParams5.setMargins(0, k, j, k);
            linearLayout2.addView(imageView2, layoutParams5);
            jy.a().c.post(new eg.a(exVar.b, imageView2));
        } else {
            LinearLayout linearLayout3 = new LinearLayout(context);
            linearLayout3.setOrientation(1);
            linearLayout.addView(linearLayout3, new RelativeLayout.LayoutParams(-1, -2));
            fa faVar = (fa) this.n;
            this.g = new EditText(context);
            this.g.setTextSize(2, 16.0f);
            this.g.setTextColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
            this.g.setBackgroundColor(0);
            this.g.setGravity(16);
            this.g.setPadding(j, j, 0, j);
            if (TextUtils.isEmpty(this.r)) {
                if (!TextUtils.isEmpty(faVar.f2649a)) {
                    this.g.setText(faVar.f2649a);
                } else {
                    this.g.setHint(eg.e());
                }
            } else {
                this.g.setText(this.r);
            }
            linearLayout3.addView(this.g, new LinearLayout.LayoutParams(-1, -2));
            View view = new View(context);
            view.setBackgroundColor(-7829368);
            linearLayout3.addView(view, new LinearLayout.LayoutParams(-1, lw.b(1)));
            EditText editText = new EditText(context);
            editText.setTextSize(2, 16.0f);
            editText.setTextColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
            editText.setPadding(j, j, 0, j);
            editText.setBackgroundColor(0);
            editText.setGravity(16);
            editText.setText(faVar.b);
            editText.setLines(3);
            editText.setFocusable(false);
            linearLayout3.addView(editText, new LinearLayout.LayoutParams(-1, -2));
        }
        String str = this.l.get(0);
        View view2 = new View(context);
        view2.setBackgroundColor(-7829368);
        linearLayout.addView(view2, new LinearLayout.LayoutParams(-1, lw.b(1)));
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        linearLayout.addView(relativeLayout2, new LinearLayout.LayoutParams(-1, lw.b(55)));
        this.e = new ImageView(context);
        this.e.setId(100);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(lw.b(36), lw.b(36));
        layoutParams6.addRule(15);
        layoutParams6.setMargins(j, 0, j, 0);
        relativeLayout2.addView(this.e, layoutParams6);
        en.a().a(str, this.e);
        this.h = new TextView(context);
        this.h.setText(str);
        this.h.setTextSize(2, 16.0f);
        this.h.setGravity(17);
        this.h.setTextColor(Color.parseColor("#444444"));
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams7.addRule(1, 100);
        relativeLayout2.addView(this.h, layoutParams7);
        ImageView imageView3 = new ImageView(context);
        imageView3.setImageBitmap(hi.e());
        imageView3.setPadding(j, j, j, j);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(lw.b(36), lw.b(36));
        layoutParams8.setMargins(j, 0, i, 0);
        layoutParams8.addRule(11);
        layoutParams8.addRule(15);
        relativeLayout2.addView(imageView3, layoutParams8);
        imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fd.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                if (fd.this.m) {
                    fd.this.q = fd.this.f.getText().toString();
                } else {
                    fd.this.r = fd.this.g.getText().toString();
                }
                fd.this.f2666a.removeAllViews();
                fd.a(fd.this, context, fd.this.f2666a);
            }
        });
    }

    static /* synthetic */ void a(fd fdVar, final Context context, ViewGroup viewGroup) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setBackgroundColor(-1);
        linearLayout.setOrientation(1);
        viewGroup.addView(linearLayout, new LinearLayout.LayoutParams(-1, -2));
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setBackgroundColor(Color.parseColor("#36465d"));
        linearLayout.addView(relativeLayout, new LinearLayout.LayoutParams(-1, lw.b(50)));
        ImageButton imageButton = new ImageButton(context);
        imageButton.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageButton.setId(103);
        imageButton.setImageBitmap(hi.f());
        imageButton.setBackgroundColor(0);
        imageButton.setPadding(j, j, k, j);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(lw.b(36), lw.b(36));
        layoutParams.setMargins(i, 0, i, 0);
        layoutParams.addRule(15);
        layoutParams.addRule(9);
        relativeLayout.addView(imageButton, layoutParams);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.fd.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                fd.this.f2666a.removeAllViews();
                fd.this.a(context, fd.this.f2666a);
            }
        });
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setText(eg.c());
        textView.setTextSize(2, 17.0f);
        textView.setTextColor(-1);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams2.addRule(1, 103);
        relativeLayout.addView(textView, layoutParams2);
        ImageView imageView = new ImageView(context);
        imageView.setPadding(0, j, 0, j);
        imageView.setImageBitmap(hi.d());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams3.addRule(13);
        relativeLayout.addView(imageView, layoutParams3);
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<String>(context, fdVar.l) { // from class: com.flurry.sdk.fd.6
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public final View getView(int i2, View view, ViewGroup viewGroup2) {
                LinearLayout linearLayout2 = view;
                if (view == null) {
                    LinearLayout linearLayout3 = new LinearLayout(context);
                    linearLayout3.setOrientation(0);
                    linearLayout3.setBackgroundColor(-1);
                    linearLayout3.setPadding(fd.j, fd.j, fd.j, fd.j);
                    linearLayout3.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
                    ImageView imageView2 = new ImageView(context);
                    imageView2.setId(101);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(lw.b(30), lw.b(30));
                    layoutParams4.setMargins(fd.i, 0, fd.k, 0);
                    linearLayout3.addView(imageView2, layoutParams4);
                    TextView textView2 = new TextView(context);
                    textView2.setId(102);
                    textView2.setTextColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                    textView2.setTextSize(2, 16.0f);
                    textView2.setGravity(17);
                    linearLayout3.addView(textView2, new LinearLayout.LayoutParams(-2, -1));
                    linearLayout2 = linearLayout3;
                }
                en.a().a((String) fd.this.l.get(i2), (ImageView) linearLayout2.findViewById(101));
                ((TextView) linearLayout2.findViewById(102)).setText((CharSequence) fd.this.l.get(i2));
                return linearLayout2;
            }
        };
        ListView listView = new ListView(context);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        linearLayout.addView(listView, new LinearLayout.LayoutParams(-1, fdVar.p / 3));
        listView.setAdapter((ListAdapter) arrayAdapter);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.flurry.sdk.fd.7
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
                fd.this.f2666a.removeAllViews();
                fd.this.a(context, fd.this.f2666a);
                fd.this.h.setText((CharSequence) fd.this.l.get(i2));
                en.a().a((String) fd.this.l.get(i2), fd.this.e);
            }
        });
    }
}
