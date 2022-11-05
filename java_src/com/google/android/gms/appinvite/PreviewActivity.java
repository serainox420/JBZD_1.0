package com.google.android.gms.appinvite;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class PreviewActivity extends Activity {
    public static final String ACTION_PREVIEW = "com.google.android.gms.appinvite.ACTION_PREVIEW";
    public static final String EXTRA_LAYOUT_RES_ID = "com.google.android.gms.appinvite.LAYOUT_RES_ID";
    public static final String EXTRA_TABS = "com.google.android.gms.appinvite.TABS";
    public static final String EXTRA_VIEWS = "com.google.android.gms.appinvite.VIEWS";
    public static final String KEY_TAB_CONTENT_ID = "tabContentId";
    public static final String KEY_TAB_TAG = "tabTag";
    public static final String KEY_TEXT_VIEW_IS_TITLE = "TextView_isTitle";
    public static final String KEY_TEXT_VIEW_TEXT = "TextView_text";
    public static final String KEY_TEXT_VIEW_TEXT_COLOR = "TextView_textColor";
    public static final String KEY_VIEW_BACKGROUND_COLOR = "View_backgroundColor";
    public static final String KEY_VIEW_ID = "View_id";
    public static final String KEY_VIEW_MIN_HEIGHT = "View_minHeight";
    public static final String KEY_VIEW_ON_CLICK_LISTENER = "View_onClickListener";
    public static final String KEY_WEB_VIEW_DATA = "WebView_data";
    public static final String ON_CLICK_LISTENER_CLOSE = "close";

    private View zza(Context context, ViewGroup viewGroup, Bundle bundle) {
        View inflate = LayoutInflater.from(context).inflate(bundle.getInt(EXTRA_LAYOUT_RES_ID), viewGroup, false);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(EXTRA_VIEWS);
        if (parcelableArrayList != null) {
            Iterator it = parcelableArrayList.iterator();
            while (it.hasNext()) {
                zza(inflate, (Bundle) it.next());
            }
        }
        return inflate;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void zza(View view, Bundle bundle) {
        char c;
        boolean z;
        View findViewById = view.findViewById(bundle.getInt(KEY_VIEW_ID));
        for (String str : bundle.keySet()) {
            switch (str.hashCode()) {
                case -1829808865:
                    if (str.equals(KEY_VIEW_MIN_HEIGHT)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -499175494:
                    if (str.equals(KEY_TEXT_VIEW_TEXT)) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -111184848:
                    if (str.equals(KEY_WEB_VIEW_DATA)) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 573559753:
                    if (str.equals(KEY_TEXT_VIEW_TEXT_COLOR)) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 966644059:
                    if (str.equals(KEY_VIEW_BACKGROUND_COLOR)) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 1729346977:
                    if (str.equals(KEY_TEXT_VIEW_IS_TITLE)) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1920443715:
                    if (str.equals(KEY_VIEW_ON_CLICK_LISTENER)) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    findViewById.setBackgroundColor(bundle.getInt(str));
                    break;
                case 1:
                    findViewById.setMinimumHeight(bundle.getInt(str));
                    break;
                case 2:
                    String string = bundle.getString(str);
                    switch (string.hashCode()) {
                        case 94756344:
                            if (string.equals("close")) {
                                z = false;
                                break;
                            }
                        default:
                            z = true;
                            break;
                    }
                    switch (z) {
                        case false:
                            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.appinvite.PreviewActivity.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view2) {
                                    PreviewActivity.this.finish();
                                }
                            });
                            continue;
                    }
                case 3:
                    if (findViewById instanceof TextView) {
                        ((TextView) findViewById).setText(bundle.getCharSequence(str));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (findViewById instanceof TextView) {
                        ((TextView) findViewById).setTextColor(bundle.getInt(str));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((findViewById instanceof TextView) && bundle.getBoolean(str)) {
                        setTitle(((TextView) findViewById).getText());
                        break;
                    }
                    break;
                case 6:
                    if (findViewById instanceof ViewGroup) {
                        WebView webView = new WebView(this);
                        webView.loadData(bundle.getString(str), "text/html; charset=utf-8", "UTF-8");
                        ((ViewGroup) findViewById).addView(webView, new ViewGroup.LayoutParams(-1, -1));
                        break;
                    } else {
                        break;
                    }
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getCallingActivity() == null || !"com.google.android.gms".equals(getCallingActivity().getPackageName())) {
            finish();
            return;
        }
        try {
            Context createPackageContext = createPackageContext("com.google.android.gms", 0);
            Bundle extras = getIntent().getExtras();
            View zza = zza(createPackageContext, null, extras);
            if (zza == null) {
                finish();
                return;
            }
            TabHost tabHost = (TabHost) zza.findViewById(16908306);
            TabWidget tabWidget = (TabWidget) zza.findViewById(16908307);
            ArrayList parcelableArrayList = extras.getParcelableArrayList(EXTRA_TABS);
            if (tabHost != null && tabWidget != null && parcelableArrayList != null) {
                tabHost.setup();
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    TabHost.TabSpec newTabSpec = tabHost.newTabSpec(bundle2.getString(KEY_TAB_TAG));
                    newTabSpec.setContent(bundle2.getInt(KEY_TAB_CONTENT_ID));
                    newTabSpec.setIndicator(zza(createPackageContext, tabWidget, bundle2));
                    tabHost.addTab(newTabSpec);
                }
            }
            setContentView(zza);
        } catch (PackageManager.NameNotFoundException e) {
            finish();
        }
    }
}
