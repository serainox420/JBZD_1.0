package com.facebook.ads.internal.view.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.ads.internal.util.s;
import com.facebook.ads.internal.util.u;
import com.google.android.gms.drive.DriveFile;
import java.util.List;
@TargetApi(19)
/* loaded from: classes.dex */
public class a extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private static final int f2262a = Color.rgb(224, 224, 224);
    private static final Uri b = Uri.parse("http://www.facebook.com");
    private static final View.OnTouchListener c = new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.a.a.1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            switch (motionEvent.getAction()) {
                case 0:
                    view.setBackgroundColor(a.d);
                    break;
                case 1:
                    view.setBackgroundColor(0);
                    break;
            }
            return false;
        }
    };
    private static final int d = Color.argb(34, 0, 0, 0);
    private ImageView e;
    private c f;
    private ImageView g;
    private InterfaceC0101a h;
    private String i;

    /* renamed from: com.facebook.ads.internal.view.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0101a {
        void a();
    }

    public a(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        float f = getResources().getDisplayMetrics().density;
        int i = (int) (50.0f * f);
        int i2 = (int) (f * 4.0f);
        setBackgroundColor(-1);
        setGravity(16);
        this.e = new ImageView(context);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        this.e.setScaleType(ImageView.ScaleType.CENTER);
        this.e.setImageBitmap(u.a(context, s.BROWSER_CLOSE));
        this.e.setOnTouchListener(c);
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.a.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (a.this.h != null) {
                    a.this.h.a();
                }
            }
        });
        addView(this.e, layoutParams);
        this.f = new c(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        layoutParams2.weight = 1.0f;
        this.f.setPadding(0, i2, 0, i2);
        addView(this.f, layoutParams2);
        this.g = new ImageView(context);
        ViewGroup.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(i, i);
        this.g.setScaleType(ImageView.ScaleType.CENTER);
        this.g.setOnTouchListener(c);
        this.g.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.a.a.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(a.this.i));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                a.this.getContext().startActivity(intent);
            }
        });
        addView(this.g, layoutParams3);
        setupDefaultNativeBrowser(context);
    }

    private void setupDefaultNativeBrowser(Context context) {
        Bitmap a2;
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", b), 65536);
        if (queryIntentActivities.size() == 0) {
            this.g.setVisibility(8);
            a2 = null;
        } else {
            a2 = (queryIntentActivities.size() != 1 || !"com.android.chrome".equals(queryIntentActivities.get(0).activityInfo.packageName)) ? u.a(context, s.BROWSER_LAUNCH_NATIVE) : u.a(context, s.BROWSER_LAUNCH_CHROME);
        }
        this.g.setImageBitmap(a2);
    }

    public void setListener(InterfaceC0101a interfaceC0101a) {
        this.h = interfaceC0101a;
    }

    public void setTitle(String str) {
        this.f.setTitle(str);
    }

    public void setUrl(String str) {
        this.i = str;
        this.f.setSubtitle(str);
        if (TextUtils.isEmpty(str)) {
            this.g.setEnabled(false);
            this.g.setColorFilter(new PorterDuffColorFilter(f2262a, PorterDuff.Mode.SRC_IN));
            return;
        }
        this.g.setEnabled(true);
        this.g.setColorFilter((ColorFilter) null);
    }
}
