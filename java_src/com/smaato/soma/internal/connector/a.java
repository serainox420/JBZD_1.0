package com.smaato.soma.internal.connector;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.WebView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.debug.b;
import com.smaato.soma.exception.NotifyingSizeChangedFailed;
import com.smaato.soma.exception.OrmmaConnectorInstantiationFailed;
import com.smaato.soma.exception.UnableToGetScreenSize;
import com.smaato.soma.exception.UnableToInjectJavaScript;
import com.smaato.soma.exception.UnableToNotifyBannerLoaded;
import com.smaato.soma.j;
/* compiled from: OrmmaConnector.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private j f5005a = null;
    private WebView b = null;
    private float c;
    private WindowManager d;

    public a(Context context) throws OrmmaConnectorInstantiationFailed {
        this.c = BitmapDescriptorFactory.HUE_RED;
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.d = (WindowManager) context.getSystemService("window");
            this.d.getDefaultDisplay().getMetrics(displayMetrics);
            this.c = displayMetrics.density;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new OrmmaConnectorInstantiationFailed(e2);
        }
    }

    public void a(j jVar) {
        this.f5005a = jVar;
    }

    public void a(WebView webView) {
        this.b = webView;
    }

    private void b(String str) throws UnableToInjectJavaScript {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.connector.a.1
            });
            com.smaato.soma.debug.a.a(new b("OrmmaConnector", "Injecting " + str, 1, DebugCategory.DEBUG));
            this.b.loadUrl("javascript:" + str);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToInjectJavaScript(e2);
        }
    }

    public void a(String str) throws NotifyingSizeChangedFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.connector.a.2
            });
            b("window.ormmaview.fireChangeEvent({state: '" + str + "', size:{ width:" + ((int) (this.b.getWidth() / this.c)) + ", height:" + ((int) (this.b.getHeight() / this.c)) + "}});");
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new NotifyingSizeChangedFailed(e2);
        }
    }

    public void a() throws UnableToNotifyBannerLoaded {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.connector.a.3
            });
            String str = "window.ormmaview.fireChangeEvent({ state: 'default', size: { width: " + ((int) (this.b.getWidth() / this.c)) + ", height: " + ((int) (this.b.getHeight() / this.c)) + "}, maxSize: " + b() + ", screenSize: " + b() + ", defaultPosition: { x:" + ((int) (this.f5005a.getLeft() / this.c)) + ", y: " + ((int) (this.f5005a.getTop() / this.c)) + ", width: " + ((int) (this.f5005a.getWidth() / this.c)) + ", height: " + ((int) (this.f5005a.getHeight() / this.c)) + " },supports: [ 'level-1', 'screen','sms','phone','email','calendar','tel','inlineVideo','storePicture'] });";
            if (this.f5005a instanceof com.smaato.soma.interstitial.b) {
                b("window.ormma.setPlacementType('interstitial');");
            }
            b(str);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToNotifyBannerLoaded(e2);
        }
    }

    private String b() throws UnableToGetScreenSize {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.connector.a.4
            });
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.d.getDefaultDisplay().getMetrics(displayMetrics);
            return "{ width: " + ((int) (displayMetrics.widthPixels / displayMetrics.density)) + ", height: " + ((int) (displayMetrics.heightPixels / displayMetrics.density)) + "}";
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToGetScreenSize(e2);
        }
    }
}
