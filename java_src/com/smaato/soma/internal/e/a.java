package com.smaato.soma.internal.e;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.provider.MediaStore;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.monetization.internal.imai.db.ClickDatabaseManager;
import com.smaato.soma.AdType;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.CloseButtonBitmapFailed;
import com.smaato.soma.exception.PixelToDpFailed;
import com.smaato.soma.internal.c.c;
import com.smaato.soma.internal.c.d;
import com.smaato.soma.j;
import com.smaato.soma.l;
import com.smaato.soma.measurements.FraudesType;
import com.smaato.soma.p;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.TimeZone;
/* compiled from: CustomWebView.java */
/* loaded from: classes3.dex */
public class a extends WebView {
    private static int d = 0;
    private static boolean e = false;

    /* renamed from: a  reason: collision with root package name */
    private boolean f5015a;
    private GestureDetector b;
    private j c;
    private boolean f;
    private C0553a g;
    private p h;
    private long i;

    static /* synthetic */ int c() {
        int i = d;
        d = i - 1;
        return i;
    }

    static /* synthetic */ int d() {
        int i = d;
        d = i + 1;
        return i;
    }

    public a(Context context, p pVar, final j jVar) throws PixelToDpFailed, CloseButtonBitmapFailed {
        super(context);
        this.f5015a = false;
        this.f = false;
        this.i = 0L;
        this.c = jVar;
        this.h = pVar;
        setId(670);
        if (e) {
            f();
        }
        setOnTouchListener(new b(context) { // from class: com.smaato.soma.internal.e.a.1
            @Override // com.smaato.soma.internal.e.a.b
            public void a() {
                if (a.e) {
                    a.c();
                } else {
                    a.d();
                }
                c();
            }

            @Override // com.smaato.soma.internal.e.a.b
            public void b() {
                if (a.e) {
                    a.c();
                } else {
                    a.d();
                }
                c();
            }

            @Override // com.smaato.soma.internal.e.a.b, android.view.View.OnTouchListener
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                a.this.b.onTouchEvent(motionEvent);
                return new l<Boolean>() { // from class: com.smaato.soma.internal.e.a.1.1
                    @Override // com.smaato.soma.l
                    /* renamed from: a */
                    public Boolean b() throws Exception {
                        if (motionEvent.getAction() == 1 && !d()) {
                            if (c.a().a(view, motionEvent.getX(), motionEvent.getY())) {
                                ((a) view).setUserClicked(true);
                                view.setVerticalScrollBarEnabled(true);
                                view.setHorizontalScrollBarEnabled(true);
                                jVar.getBannerAnimatorHandler().sendMessage(jVar.getBannerAnimatorHandler().obtainMessage(101));
                            } else {
                                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA", "Click was outside the banner view, skipping expand ...", 1, DebugCategory.WARNING));
                                return true;
                            }
                        }
                        return Boolean.valueOf(motionEvent.getAction() == 2);
                    }

                    private boolean d() {
                        return a.this.i != 0 && System.currentTimeMillis() - a.this.i <= 2000;
                    }
                }.c().booleanValue();
            }

            private void c() {
                new l<Void>() { // from class: com.smaato.soma.internal.e.a.1.2
                    @Override // com.smaato.soma.l
                    /* renamed from: a */
                    public Void b() throws Exception {
                        if (a.d < 10 || a.e) {
                            if (a.d <= 0 && a.e) {
                                boolean unused = a.e = false;
                                ((ViewGroup) a.this.g.getParent()).removeView(a.this.g);
                                a.this.f = false;
                            }
                        } else {
                            a.this.f();
                            a.this.f = false;
                        }
                        a.this.i = System.currentTimeMillis();
                        return null;
                    }
                }.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        new l<Void>() { // from class: com.smaato.soma.internal.e.a.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                Context context = a.this.getContext();
                int a2 = d.a().a(context, 20);
                if (a.this.g == null) {
                    a.this.g = new C0553a(context);
                }
                a.this.g.setId(689);
                RelativeLayout relativeLayout = new RelativeLayout(context);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a2, a2);
                layoutParams.addRule(12);
                layoutParams.addRule(11);
                relativeLayout.addView(a.this.g, layoutParams);
                a.this.g.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.internal.e.a.2.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        a.this.a(view.getContext(), a.this.h);
                    }
                });
                a.this.addView(relativeLayout);
                boolean unused = a.e = true;
                return null;
            }
        }.c();
    }

    protected Uri getScreenShotUri() {
        return new l<Uri>() { // from class: com.smaato.soma.internal.e.a.3
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Uri b() throws Exception {
                Bitmap createBitmap = Bitmap.createBitmap(a.this.getWidth(), (int) (a.this.getScale() * a.this.getContentHeight()), Bitmap.Config.ARGB_8888);
                a.this.draw(new Canvas(createBitmap));
                return Uri.parse(MediaStore.Images.Media.insertImage(a.this.getContext().getContentResolver(), createBitmap, "sBitmapDrawableBitmapDrawablecreenshot" + System.currentTimeMillis(), (String) null));
            }
        }.c();
    }

    public boolean a() {
        return this.f5015a;
    }

    public void setUserClicked(boolean z) {
        this.f5015a = z;
    }

    /* compiled from: CustomWebView.java */
    /* renamed from: com.smaato.soma.internal.e.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0553a extends ImageView {
        public C0553a(Context context) throws CloseButtonBitmapFailed {
            super(context);
            new l<Void>() { // from class: com.smaato.soma.internal.e.a.a.1
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    C0553a.this.setImageBitmap(com.smaato.soma.b.a.a().b(C0553a.this.getResources(), C0553a.this.getContext()).getBitmap());
                    return null;
                }
            }.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CustomWebView.java */
    /* renamed from: com.smaato.soma.internal.e.a$4  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 extends l<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f5022a;
        final /* synthetic */ p b;

        AnonymousClass4(Context context, p pVar) {
            this.f5022a = context;
            this.b = pVar;
        }

        @Override // com.smaato.soma.l
        /* renamed from: a */
        public Void b() throws Exception {
            AlertDialog.Builder builder;
            if (a.this.c instanceof com.smaato.soma.interstitial.b) {
                builder = new AlertDialog.Builder(((com.smaato.soma.interstitial.b) a.this.c).getActivityContext());
            } else {
                builder = new AlertDialog.Builder(this.f5022a);
            }
            builder.setMessage("Do you want to inform Smaato about this ad ?\nAfter clicking on yes, and choosing the cause of the issue, an email will be automatically generated. The content of the email can be modified before sending it to the ad quality team.");
            builder.setCancelable(true);
            builder.setPositiveButton("Yes", new AnonymousClass1());
            builder.setNegativeButton("No", new DialogInterface.OnClickListener() { // from class: com.smaato.soma.internal.e.a.4.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CustomWebView.java */
        /* renamed from: com.smaato.soma.internal.e.a$4$1  reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 implements DialogInterface.OnClickListener {
            AnonymousClass1() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: CustomWebView.java */
            /* renamed from: com.smaato.soma.internal.e.a$4$1$1  reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            public class C05501 extends l<Void> {
                C05501() {
                }

                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    AlertDialog.Builder builder;
                    if (a.this.c instanceof com.smaato.soma.interstitial.b) {
                        builder = new AlertDialog.Builder(((com.smaato.soma.interstitial.b) a.this.c).getActivityContext());
                    } else {
                        builder = new AlertDialog.Builder(AnonymousClass4.this.f5022a);
                    }
                    builder.setTitle("Reason");
                    RadioGroup radioGroup = new RadioGroup(AnonymousClass4.this.f5022a);
                    final RadioButton radioButton = new RadioButton(AnonymousClass4.this.f5022a);
                    radioButton.setText("Contains provocative or suggestive imagery");
                    final RadioButton radioButton2 = new RadioButton(AnonymousClass4.this.f5022a);
                    radioButton2.setText("Is misleading (e.g. simulates a dialog or app component)");
                    final RadioButton radioButton3 = new RadioButton(AnonymousClass4.this.f5022a);
                    radioButton3.setText("Is shaky, flashing or flickering");
                    final RadioButton radioButton4 = new RadioButton(AnonymousClass4.this.f5022a);
                    radioButton4.setText("Contains inappropriate content");
                    final RadioButton radioButton5 = new RadioButton(AnonymousClass4.this.f5022a);
                    radioButton5.setText("Automatically triggers unwanted behavior (redirects/downloads)");
                    final RadioButton radioButton6 = new RadioButton(AnonymousClass4.this.f5022a);
                    radioButton6.setText("Automatically plays audio or video");
                    radioGroup.addView(radioButton);
                    radioGroup.addView(radioButton2);
                    radioGroup.addView(radioButton3);
                    radioGroup.addView(radioButton4);
                    radioGroup.addView(radioButton5);
                    radioGroup.addView(radioButton6);
                    builder.setView(radioGroup);
                    builder.setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.smaato.soma.internal.e.a.4.1.1.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            new l<Void>() { // from class: com.smaato.soma.internal.e.a.4.1.1.1.1
                                @Override // com.smaato.soma.l
                                /* renamed from: a */
                                public Void b() throws Exception {
                                    String str;
                                    if (radioButton.isChecked()) {
                                        str = "Contains provocative or suggestive imagery";
                                    } else if (radioButton2.isChecked()) {
                                        str = "Is misleading (e.g. simulates a dialog or app component)";
                                    } else if (radioButton3.isChecked()) {
                                        str = "Is shaky, flashing or flickering";
                                    } else if (radioButton4.isChecked()) {
                                        str = "Contains inappropriate content";
                                    } else if (radioButton5.isChecked()) {
                                        str = "Automatically triggers unwanted behavior (redirects/downloads)";
                                    } else if (radioButton6.isChecked()) {
                                        str = "Automatically plays audio or video";
                                    } else {
                                        str = "Not specified";
                                    }
                                    a.this.a(AnonymousClass4.this.f5022a, AnonymousClass4.this.b, str);
                                    return null;
                                }
                            }.c();
                        }
                    });
                    builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.smaato.soma.internal.e.a.4.1.1.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    });
                    builder.show();
                    return null;
                }
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                new C05501().c();
            }
        }
    }

    protected void a(Context context, p pVar) {
        new AnonymousClass4(context, pVar).c();
    }

    protected void a(final Context context, final p pVar, final String str) {
        new l<Void>() { // from class: com.smaato.soma.internal.e.a.5
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                DateFormat timeInstance;
                String str2;
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setFlags(DriveFile.MODE_READ_ONLY);
                intent.putExtra("android.intent.extra.EMAIL", new String[]{"adqualitysupport@smaato.com"});
                intent.putExtra("android.intent.extra.SUBJECT", "Ad Report");
                DateFormat.getTimeInstance().setTimeZone(TimeZone.getTimeZone("gmt"));
                String str3 = "Publisher Id : " + a.this.c.getAdSettings().a() + "\nAdSpace Id : " + a.this.c.getAdSettings().b() + "\nSession Id : " + ((com.smaato.soma.internal.b) pVar).q() + "\nTime : " + timeInstance.format(new Date()) + "\n" + "I'm reporting this ad for the following reason: @REASON. Thanks for taking care. \nPlease find all info below : \n".replace("@REASON", str);
                switch (AnonymousClass6.f5030a[pVar.d().ordinal()]) {
                    case 1:
                        str2 = str3 + "Rich Media Tag : " + pVar.e();
                        break;
                    default:
                        str2 = str3 + "Text Ad Click Url : " + pVar.f();
                        break;
                }
                intent.putExtra("android.intent.extra.TEXT", str2);
                intent.putExtra("android.intent.extra.STREAM", a.this.getScreenShotUri());
                intent.setType("plain/text");
                context.startActivity(intent);
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CustomWebView.java */
    /* renamed from: com.smaato.soma.internal.e.a$6  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass6 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5030a = new int[AdType.values().length];

        static {
            try {
                f5030a[AdType.RICHMEDIA.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* compiled from: CustomWebView.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnTouchListener {
        public b(Context context) {
            a.this.b = new GestureDetector(context, new C0554a());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: CustomWebView.java */
        /* renamed from: com.smaato.soma.internal.e.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public final class C0554a extends GestureDetector.SimpleOnGestureListener {

            /* renamed from: a  reason: collision with root package name */
            boolean f5033a;
            boolean b;

            private C0554a() {
                this.f5033a = false;
                this.b = false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, final float f, float f2) {
                return new l<Boolean>() { // from class: com.smaato.soma.internal.e.a.b.a.1
                    @Override // com.smaato.soma.l
                    /* renamed from: a */
                    public Boolean b() throws Exception {
                        boolean z = true;
                        try {
                            if (f > 50.0f && !C0554a.this.b) {
                                b.this.a();
                                a.this.f = true;
                                C0554a.this.b = true;
                                C0554a.this.f5033a = false;
                            } else if (f < -50.0f && !C0554a.this.f5033a) {
                                b.this.b();
                                a.this.f = true;
                                C0554a.this.b = false;
                                C0554a.this.f5033a = true;
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            z = false;
                        }
                        return Boolean.valueOf(z);
                    }
                }.c().booleanValue();
            }
        }

        public void a() {
        }

        public void b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    public static void setButtonAttached(boolean z) {
        e = z;
    }

    public void a(FraudesType fraudesType, String str, List<String> list) {
        try {
            if (this.h != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("adspace", String.valueOf(this.c.getAdSettings().b()));
                hashMap.put("sessionid", ((com.smaato.soma.internal.b) this.h).q());
                hashMap.put("timestamp", String.valueOf(System.currentTimeMillis()));
                hashMap.put("publisher", String.valueOf(this.c.getAdSettings().a()));
                hashMap.put("bundleid", getContext().getApplicationContext().getPackageName() != null ? getContext().getApplicationContext().getPackageName() : "");
                hashMap.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, "sdkandroid_5-1-1");
                hashMap.put("admarkup", this.h.e() != null ? this.h.e() : "");
                if (str != null) {
                    hashMap.put("redirecturl", str);
                } else {
                    hashMap.put("redirecturl", this.h.j() != null ? this.h.j() : "");
                }
                hashMap.put(ClickDatabaseManager.COLUMN_CLICK_URL, this.h.f() != null ? this.h.f() : "");
                hashMap.put("type", fraudesType.toString());
                if (list != null) {
                    hashMap.put("traces", list);
                } else if (hashMap.get("redirecturl") != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add((String) hashMap.get("redirecturl"));
                    hashMap.put("traces", arrayList);
                }
                new com.smaato.soma.internal.requests.a.a().execute(hashMap);
            }
        } catch (Exception e2) {
        }
    }
}
