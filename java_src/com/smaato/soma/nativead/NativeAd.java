package com.smaato.soma.nativead;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.view.Display;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.MediaView;
import com.flurry.android.AdCreative;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smaato.soma.AdType;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.AdReceiveFailed;
import com.smaato.soma.internal.c.e;
import com.smaato.soma.internal.requests.settings.UserSettings;
import com.smaato.soma.l;
import com.smaato.soma.mediation.CSMAdFormat;
import com.smaato.soma.mediation.n;
import com.smaato.soma.mediation.t;
import com.smaato.soma.p;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class NativeAd implements com.smaato.soma.c {
    static String b = AdCreative.kAlignmentRight;
    static String c = AdCreative.kAlignmentLeft;
    private RelativeLayout A;
    private com.smaato.soma.c C;
    private TextView D;
    private Context F;

    /* renamed from: a  reason: collision with root package name */
    HorizontalScrollView f5211a;
    private ImageView f;
    private ImageView g;
    private MediaView h;
    private TextView i;
    private TextView j;
    private RatingBar k;
    private d t;
    @Deprecated
    private WeakReference<n> w;
    private Button x;
    private AtomicInteger y;
    private UserSettings d = new UserSettings();
    private com.smaato.soma.d e = new com.smaato.soma.d();
    private boolean l = false;
    private boolean m = false;
    private int n = 70;
    private int o = 70;
    private int p = 20;
    private int q = 15;
    private int r = 15;
    private int s = 5;
    private ArrayList<ImageView> u = null;
    private Vector<String> v = null;
    private NativeType z = NativeType.ALL;
    private final String B = "NATIVE";
    private boolean E = true;

    /* loaded from: classes3.dex */
    public enum NativeType {
        APP_WALL,
        CONTENT_WALL,
        NEWS_FEED,
        CHAT_LIST,
        CAROUSEL,
        CONTENT_STREAM,
        ALL
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(ViewGroup viewGroup);

        void a(ErrorCode errorCode, String str);
    }

    private void a(boolean z) {
        this.l = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        this.m = z;
    }

    @Deprecated
    public void a(WeakReference<n> weakReference) {
        this.w = weakReference;
    }

    public RelativeLayout a() {
        return this.A;
    }

    private void a(NativeType nativeType, p pVar, RelativeLayout relativeLayout) {
        try {
            switch (nativeType) {
                case APP_WALL:
                    b(nativeType, pVar, relativeLayout);
                    break;
                case CHAT_LIST:
                    b(nativeType, pVar, relativeLayout);
                    break;
                case NEWS_FEED:
                    b(nativeType, pVar, relativeLayout);
                    break;
                case CONTENT_WALL:
                    a(pVar, relativeLayout);
                    break;
                case CONTENT_STREAM:
                    b(nativeType, pVar, relativeLayout);
                    break;
                case CAROUSEL:
                    b(nativeType, pVar, relativeLayout);
                    break;
                default:
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("NATIVE", "Sent NativeAdType is not recognized!", 1, DebugCategory.ERROR));
                    break;
            }
        } catch (Exception e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("NATIVE", "Problem in creating Dynamic createNativeLayout()", 1, DebugCategory.ERROR));
        }
    }

    private void a(final p pVar, RelativeLayout relativeLayout) {
        this.g = new ImageView(this.F);
        if (pVar.n().e() != null) {
            new c(this.g).execute(pVar.n().e());
            this.g.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.nativead.NativeAd.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (pVar.n().f() != null) {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(pVar.n().f()));
                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                        NativeAd.this.F.startActivity(intent);
                    }
                }
            });
            b(this.g);
            relativeLayout.addView(this.g);
        }
        if (c(pVar) && a() != null) {
            pVar.n().j().registerViewForInteraction(a());
        }
    }

    private void b(NativeType nativeType, final p pVar, RelativeLayout relativeLayout) {
        boolean z;
        boolean z2;
        RelativeLayout relativeLayout2;
        float f = this.F.getResources().getDisplayMetrics().density;
        int i = (int) (this.n * f);
        int i2 = (int) (f * this.o);
        if (nativeType.equals(NativeType.CAROUSEL) || nativeType.equals(NativeType.APP_WALL) || nativeType.equals(NativeType.CONTENT_STREAM) || nativeType.equals(NativeType.CHAT_LIST)) {
            a(nativeType, pVar, relativeLayout, i, i2);
        }
        if (c(pVar) && a() != null && (nativeType.equals(NativeType.NEWS_FEED) || nativeType.equals(NativeType.CONTENT_STREAM))) {
            a(nativeType, pVar, relativeLayout, i, i2, true);
            z = b(pVar);
        } else {
            if (nativeType.equals(NativeType.NEWS_FEED) || nativeType.equals(NativeType.CONTENT_STREAM)) {
                a(nativeType, pVar, relativeLayout, i, i2, false);
            }
            z = false;
        }
        if (!nativeType.equals(NativeType.CAROUSEL)) {
            z2 = z;
            relativeLayout2 = null;
        } else {
            RelativeLayout relativeLayout3 = new RelativeLayout(this.F);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(9);
            if (this.f != null && this.f.getId() > 0) {
                layoutParams.addRule(3, this.f.getId());
            }
            relativeLayout3.setLayoutParams(layoutParams);
            relativeLayout3.setId(this.y.incrementAndGet());
            if (c(pVar) && a() != null) {
                a(nativeType, pVar, relativeLayout, i, i2, true);
                z = b(pVar);
            } else {
                b(pVar, relativeLayout3);
            }
            relativeLayout.addView(relativeLayout3);
            z2 = z;
            relativeLayout2 = relativeLayout3;
        }
        RelativeLayout relativeLayout4 = new RelativeLayout(this.F);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        if ((nativeType.equals(NativeType.CAROUSEL) || nativeType.equals(NativeType.APP_WALL) || nativeType.equals(NativeType.CONTENT_STREAM) || nativeType.equals(NativeType.CHAT_LIST)) && this.f != null) {
            layoutParams2.addRule(1, this.f.getId());
        } else if (nativeType.equals(NativeType.NEWS_FEED) && this.g != null) {
            layoutParams2.addRule(1, this.g.getId());
        }
        relativeLayout4.setLayoutParams(layoutParams2);
        b(nativeType, pVar);
        if (this.i != null) {
            relativeLayout4.addView(this.i);
        }
        if (nativeType.equals(NativeType.CAROUSEL) || nativeType.equals(NativeType.APP_WALL) || nativeType.equals(NativeType.NEWS_FEED) || nativeType.equals(NativeType.CONTENT_STREAM)) {
            a(nativeType, pVar);
            if (this.k != null) {
                relativeLayout4.addView(this.k);
            }
        } else if (nativeType.equals(NativeType.CHAT_LIST)) {
            c(nativeType, pVar);
            relativeLayout4.addView(this.j);
        }
        relativeLayout.addView(relativeLayout4);
        if (nativeType.equals(NativeType.APP_WALL) || nativeType.equals(NativeType.NEWS_FEED)) {
            a(nativeType, pVar, relativeLayout, null);
        } else if (nativeType.equals(NativeType.CONTENT_STREAM) || nativeType.equals(NativeType.CAROUSEL)) {
            RelativeLayout relativeLayout5 = new RelativeLayout(this.F);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams3.addRule(12);
            if (nativeType.equals(NativeType.CONTENT_STREAM)) {
                if (this.g != null && this.g.getId() > 0) {
                    layoutParams3.addRule(3, this.g.getId());
                }
            } else if (nativeType.equals(NativeType.CAROUSEL)) {
                if (relativeLayout2 != null && relativeLayout2.getId() > 0) {
                    layoutParams3.addRule(3, relativeLayout2.getId());
                } else if (this.f != null && this.f.getId() > 0) {
                    layoutParams3.addRule(3, this.f.getId());
                }
            }
            relativeLayout5.setLayoutParams(layoutParams3);
            if (nativeType.equals(NativeType.CONTENT_STREAM)) {
                a(nativeType, pVar, relativeLayout, relativeLayout5);
            }
            c(nativeType, pVar);
            relativeLayout5.addView(this.j);
            if (z2 && this.h != null && relativeLayout5 != null && relativeLayout5.getLayoutParams() != null) {
                RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) relativeLayout5.getLayoutParams();
                layoutParams4.addRule(3, this.h.getId());
                relativeLayout5.setLayoutParams(layoutParams4);
            }
            relativeLayout.addView(relativeLayout5);
        }
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.nativead.NativeAd.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(pVar.n().f()));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                NativeAd.this.F.startActivity(intent);
            }
        });
    }

    private void b(final p pVar, RelativeLayout relativeLayout) {
        int i;
        Display defaultDisplay = ((WindowManager) this.F.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT > 12) {
            ((WindowManager) this.F.getSystemService("window")).getDefaultDisplay().getSize(point);
            i = point.x;
        } else if (Build.VERSION.SDK_INT >= 13) {
            i = 350;
        } else {
            i = defaultDisplay.getWidth();
        }
        this.f5211a = new HorizontalScrollView(this.F);
        this.f5211a.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        this.f5211a.setHorizontalScrollBarEnabled(false);
        this.f5211a.setVerticalScrollBarEnabled(false);
        a aVar = new a();
        aVar.a(pVar.n().f());
        final GestureDetector gestureDetector = new GestureDetector(this.F, aVar);
        this.u = new ArrayList<>();
        Vector<String> a2 = pVar.n().a();
        LinearLayout linearLayout = new LinearLayout(this.F);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setOrientation(0);
        if (a2 != null && a2.size() > 0) {
            if (a2.size() > 1) {
                i = (int) (i * 0.9d);
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, -2);
            Iterator<String> it = a2.iterator();
            while (it.hasNext()) {
                String next = it.next();
                ImageView imageView = new ImageView(this.F);
                if (next != null) {
                    new c(imageView).execute(next);
                }
                imageView.setLayoutParams(layoutParams);
                imageView.setAdjustViewBounds(true);
                if (Build.VERSION.SDK_INT > 15) {
                    imageView.setCropToPadding(false);
                }
                this.u.add(imageView);
                linearLayout.addView(imageView);
            }
        }
        this.f5211a.addView(linearLayout);
        this.f5211a.setOnTouchListener(new View.OnTouchListener() { // from class: com.smaato.soma.nativead.NativeAd.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return gestureDetector.onTouchEvent(motionEvent);
            }
        });
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.nativead.NativeAd.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(pVar.n().f()));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                NativeAd.this.F.startActivity(intent);
            }
        });
        relativeLayout.addView(this.f5211a);
    }

    private void a(NativeType nativeType, p pVar, RelativeLayout relativeLayout, int i, int i2, boolean z) {
        this.g = new ImageView(this.F);
        this.g.setAdjustViewBounds(true);
        if (Build.VERSION.SDK_INT > 15) {
            this.g.setCropToPadding(false);
        }
        if (pVar.n().e() != null) {
            new c(this.g).execute(pVar.n().e());
        }
        RelativeLayout.LayoutParams layoutParams = null;
        if (nativeType.equals(NativeType.NEWS_FEED)) {
            layoutParams = new RelativeLayout.LayoutParams(i, i2);
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (nativeType.equals(NativeType.CONTENT_STREAM) || (z && nativeType.equals(NativeType.CAROUSEL))) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(9);
            if (this.f != null && this.f.getId() > 0) {
                layoutParams.addRule(3, this.f.getId());
            }
        }
        this.g.setLayoutParams(layoutParams);
        this.g.setId(this.y.incrementAndGet());
        b(this.g);
        relativeLayout.addView(this.g);
    }

    private void a(NativeType nativeType, p pVar, RelativeLayout relativeLayout, int i, int i2) {
        this.f = new ImageView(this.F);
        this.f.setAdjustViewBounds(true);
        if (Build.VERSION.SDK_INT > 15) {
            this.f.setCropToPadding(false);
        }
        if (pVar.n().d() != null) {
            new c(this.f).execute(pVar.n().d());
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        this.f.setLayoutParams(layoutParams);
        this.f.setId(this.y.incrementAndGet());
        a(this.f);
        relativeLayout.addView(this.f);
    }

    private void a(NativeType nativeType, p pVar) {
        this.k = new RatingBar(this.F, null, 16842877);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, this.i.getId());
        this.k.setLayoutParams(layoutParams);
        this.k.setNumStars(this.s);
        this.k.setIsIndicator(true);
        if (pVar.n().h() > BitmapDescriptorFactory.HUE_RED) {
            this.k.setRating(pVar.n().h());
        }
        a(this.k);
    }

    private void b(NativeType nativeType, p pVar) {
        this.i = new TextView(this.F);
        if (pVar.n().b() != null) {
            this.i.setText(pVar.n().b());
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        this.i.setLayoutParams(layoutParams);
        this.i.setTextSize(this.p);
        this.i.setId(this.y.incrementAndGet());
        a(this.i);
    }

    private void c(NativeType nativeType, p pVar) {
        this.j = new TextView(this.F);
        if (pVar.n().c() != null) {
            this.j.setText(pVar.n().c());
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(9);
        if (nativeType.equals(NativeType.CONTENT_STREAM)) {
            layoutParams.addRule(10);
            if (this.x != null && this.x.getId() > 0) {
                layoutParams.addRule(0, this.x.getId());
            }
        } else if (nativeType.equals(NativeType.CHAT_LIST) && this.i != null && this.i.getId() > 0) {
            layoutParams.addRule(3, this.i.getId());
        }
        this.j.setLayoutParams(layoutParams);
        this.j.setTextSize(this.q);
        this.j.setId(this.y.incrementAndGet());
        b(this.j);
    }

    private void a(NativeType nativeType, final p pVar, RelativeLayout relativeLayout, RelativeLayout relativeLayout2) {
        this.x = new Button(this.F);
        this.x.setTextSize(this.r);
        if (pVar.n().g() != null) {
            this.x.setText(pVar.n().g());
        } else {
            this.x.setText("Click here");
        }
        if (pVar.n().f() != null) {
            this.x.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.nativead.NativeAd.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(pVar.n().f()));
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    NativeAd.this.F.startActivity(intent);
                }
            });
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.addRule(12);
        if (nativeType.equals(NativeType.CONTENT_STREAM)) {
            this.x.setId(this.y.incrementAndGet());
            this.x.setLayoutParams(layoutParams);
            relativeLayout2.addView(this.x);
        } else {
            this.x.setLayoutParams(layoutParams);
            relativeLayout.addView(this.x);
        }
        a(this.x);
    }

    public final NativeAd a(RatingBar ratingBar) {
        this.k = ratingBar;
        return this;
    }

    public final NativeAd a(ImageView imageView) {
        this.f = imageView;
        return this;
    }

    public final NativeAd b(ImageView imageView) {
        this.g = imageView;
        return this;
    }

    public final NativeAd a(Button button) {
        this.x = button;
        return this;
    }

    public final NativeAd a(TextView textView) {
        this.i = textView;
        return this;
    }

    public final NativeAd b(TextView textView) {
        this.j = textView;
        return this;
    }

    @Override // com.smaato.soma.c
    public void onReceiveAd(final com.smaato.soma.b bVar, final p pVar) throws AdReceiveFailed {
        new l<Void>() { // from class: com.smaato.soma.nativead.NativeAd.4
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (pVar != null) {
                    NativeAd.this.v = null;
                    NativeAd.this.v = new Vector();
                    if (pVar.n() != null && pVar.n().i() != null) {
                        NativeAd.this.v = pVar.n().i();
                    }
                    if (NativeAd.this.C != null) {
                        NativeAd.this.C.onReceiveAd(bVar, pVar);
                    }
                    if (pVar.k() != ErrorCode.NO_ERROR || pVar.d() != AdType.NATIVE) {
                        if (NativeAd.this.d() != null) {
                            NativeAd.this.d().a(ErrorCode.GENERAL_ERROR, ErrorCode.getStringForValue(ErrorCode.GENERAL_ERROR));
                        }
                    } else {
                        try {
                            if (NativeAd.this.z != null && !NativeAd.this.z.equals(NativeType.ALL)) {
                                NativeAd.this.d(pVar);
                            } else {
                                NativeAd.this.a(pVar);
                            }
                        } catch (Exception e) {
                        }
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("NATIVE", "Ad available", 1, DebugCategory.DEBUG));
                        if (NativeAd.this.c(pVar) && NativeAd.this.a() != null) {
                            pVar.n().j().unregisterView();
                            pVar.n().j().registerViewForInteraction(NativeAd.this.a());
                        }
                    }
                }
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d(p pVar) {
        RelativeLayout relativeLayout;
        try {
            if (this.F != null) {
                relativeLayout = new RelativeLayout(this.F);
                try {
                    relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
                    a(this.z, pVar, relativeLayout);
                    a(relativeLayout);
                } catch (RuntimeException e) {
                    if (d() != null) {
                        d().a(ErrorCode.GENERAL_ERROR, "ERROR in NativeTypeLayoutBuilding");
                    }
                    if (d() != null) {
                    }
                } catch (Exception e2) {
                    if (d() != null) {
                        d().a(ErrorCode.GENERAL_ERROR, "ERROR in NativeTypeLayoutBuilding");
                    }
                    if (d() != null) {
                    }
                }
            } else {
                if (d() != null) {
                    d().a(ErrorCode.GENERAL_ERROR, "mContext is null");
                }
                relativeLayout = null;
            }
        } catch (RuntimeException e3) {
            relativeLayout = null;
        } catch (Exception e4) {
            relativeLayout = null;
        }
        if (d() != null) {
            d().a(relativeLayout);
        }
    }

    protected void a(p pVar) {
        if (pVar != null) {
            b bVar = new b();
            if (pVar.n() != null && pVar.n().f() != null) {
                bVar.a(pVar.n().f());
            }
            if (this.f != null && pVar.n().d() != null) {
                new c(this.f).execute(pVar.n().d());
                this.f.setOnClickListener(bVar);
            }
            if (this.j != null && pVar.n().c() != null) {
                this.j.setText(pVar.n().c());
                this.j.setOnClickListener(bVar);
            }
            if (this.i != null && pVar.n().b() != null) {
                this.i.setText(pVar.n().b());
                this.i.setOnClickListener(bVar);
            }
            if (this.x != null && pVar.n().g() != null && pVar.n().f() != null) {
                this.x.setText(pVar.n().g());
                this.x.setOnClickListener(bVar);
            }
            if (this.k != null && pVar.n().h() > BitmapDescriptorFactory.HUE_RED) {
                this.k.setIsIndicator(true);
                this.k.setRating(pVar.n().h());
                this.k.setOnClickListener(bVar);
            }
            if (pVar != null && pVar.b() && pVar.c() != null && pVar.c() == CSMAdFormat.NATIVE) {
                if (b(pVar) && this.h != null) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.x.getLayoutParams();
                    layoutParams.addRule(3, this.h.getId());
                    this.x.setLayoutParams(layoutParams);
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.k.getLayoutParams();
                    layoutParams2.addRule(3, this.h.getId());
                    this.k.setLayoutParams(layoutParams2);
                }
                if (pVar.n() != null && pVar.n().i() != null && pVar.n().i().size() > 0) {
                    new e().execute(pVar.n().i());
                }
                a(true);
            } else {
                if (this.g != null && pVar.n().e() != null) {
                    new c(this.g).execute(pVar.n().e());
                    this.g.setVisibility(0);
                    this.g.setOnClickListener(bVar);
                    try {
                        if (this.h != null) {
                            this.h.setVisibility(4);
                        }
                    } catch (Exception e) {
                    }
                }
                int id = this.g.getId();
                if (id < 1) {
                    if (this.y == null) {
                        this.y = new AtomicInteger(250);
                    }
                    id = this.y.incrementAndGet();
                    this.g.setId(id);
                }
                int i = id;
                RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.x.getLayoutParams();
                layoutParams3.addRule(3, i);
                this.x.setLayoutParams(layoutParams3);
                RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.k.getLayoutParams();
                layoutParams4.addRule(3, i);
                this.k.setLayoutParams(layoutParams4);
            }
            if (this.E) {
                b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        String f5221a;

        b() {
        }

        public void a(String str) {
            this.f5221a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f5221a != null) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.f5221a));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                NativeAd.this.F.startActivity(intent);
            }
            NativeAd.this.b(true);
        }
    }

    private void b() {
        try {
            c();
            this.A.addView(this.D);
        } catch (Exception e) {
        }
    }

    private void c() {
        if (this.D.getParent() != null) {
            ((ViewGroup) this.D.getParent()).removeView(this.D);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        this.D.setLayoutParams(layoutParams);
    }

    private void a(RelativeLayout relativeLayout) {
        try {
            c();
            relativeLayout.addView(this.D);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c extends AsyncTask<String, Void, Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        ImageView f5222a;

        public c(ImageView imageView) {
            this.f5222a = null;
            this.f5222a = imageView;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public Bitmap doInBackground(String... strArr) {
            String str = strArr[0];
            if (str == null) {
                return null;
            }
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setConnectTimeout(50000);
                httpURLConnection.setReadTimeout(50000);
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                InputStream inputStream = httpURLConnection.getInputStream();
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
                try {
                    inputStream.close();
                    return decodeStream;
                } catch (Exception e) {
                    return decodeStream;
                }
            } catch (Exception e2) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(Bitmap bitmap) {
            this.f5222a.setImageBitmap(bitmap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public d d() {
        return this.t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends GestureDetector.SimpleOnGestureListener {
        private String b = null;

        a() {
        }

        public void a(String str) {
            this.b = str;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            int b;
            if (motionEvent.getX() < motionEvent2.getX()) {
                b = b(NativeAd.c);
            } else {
                b = b(NativeAd.b);
            }
            if (NativeAd.this.f5211a != null && NativeAd.this.u != null) {
                NativeAd.this.f5211a.smoothScrollTo(((ImageView) NativeAd.this.u.get(b)).getLeft(), 0);
                return true;
            }
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (this.b != null) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.b));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                NativeAd.this.F.startActivity(intent);
                return false;
            }
            return false;
        }

        public int b(String str) {
            Rect rect = new Rect();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; NativeAd.this.u != null && i3 < NativeAd.this.u.size(); i3++) {
                if (((ImageView) NativeAd.this.u.get(i3)).getLocalVisibleRect(rect)) {
                    if (!str.equals(NativeAd.c)) {
                        if (!str.equals(NativeAd.b)) {
                            continue;
                        } else {
                            i++;
                            if (i == 2) {
                                return i3;
                            }
                            i2 = i3;
                        }
                    } else {
                        return i3;
                    }
                }
            }
            return i2;
        }
    }

    public boolean b(p pVar) {
        try {
            if (this.g != null && this.g.getLayoutParams() != null) {
                ViewGroup.LayoutParams layoutParams = this.g.getLayoutParams();
                int i = layoutParams.width;
                int i2 = layoutParams.height;
                if (i < 0) {
                    i = com.smaato.soma.internal.requests.settings.a.a().g();
                }
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i, (int) (i / 1.778d));
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    layoutParams2.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                }
                if (layoutParams instanceof RelativeLayout.LayoutParams) {
                    int[] rules = ((RelativeLayout.LayoutParams) layoutParams).getRules();
                    for (int i3 = 0; i3 < rules.length; i3++) {
                        layoutParams2.addRule(i3, rules[i3]);
                    }
                    this.g.setVisibility(4);
                } else {
                    this.g.setVisibility(8);
                }
                if (this.h != null) {
                    e();
                }
                this.h = new MediaView(this.F);
                ViewGroup viewGroup = (ViewGroup) this.g.getParent();
                viewGroup.addView(this.h, viewGroup.indexOfChild(this.g) + 1, layoutParams2);
                if (this.g.getId() > 0) {
                    this.h.setId(this.g.getId());
                } else {
                    if (this.y == null) {
                        this.y = new AtomicInteger(250);
                    }
                    this.h.setId(this.y.incrementAndGet());
                }
                this.h.setVisibility(0);
                this.h.setNativeAd(pVar.n().j());
                if (a() != null) {
                    pVar.n().j().registerViewForInteraction(a());
                }
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    private void e() {
        try {
            this.h.removeAllViews();
            t.a(this.h);
            this.h = null;
            System.gc();
        } catch (Exception e) {
        }
    }

    public boolean c(p pVar) {
        if (pVar != null) {
            try {
                if (pVar.n() == null || pVar.n().j() == null || pVar.c() == null) {
                    return false;
                }
                return pVar.c() == CSMAdFormat.NATIVE;
            } catch (Exception e) {
                return false;
            }
        }
        return false;
    }
}
