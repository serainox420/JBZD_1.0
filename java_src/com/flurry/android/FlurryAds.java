package com.flurry.android;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.os.Looper;
import android.view.ViewGroup;
import com.flurry.sdk.bb;
import com.flurry.sdk.fh;
import com.flurry.sdk.i;
import com.flurry.sdk.j;
import com.flurry.sdk.jy;
import com.flurry.sdk.km;
import com.flurry.sdk.lp;
import com.flurry.sdk.ma;
import com.flurry.sdk.v;
import java.lang.ref.WeakReference;
import java.util.Map;
@Deprecated
/* loaded from: classes.dex */
public class FlurryAds {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2367a = FlurryAds.class.getSimpleName();

    private FlurryAds() {
    }

    @Deprecated
    public static boolean getAd(Context context, String str, ViewGroup viewGroup, FlurryAdSize flurryAdSize, long j) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
            return false;
        } else if (jy.a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            if (context == null) {
                km.b(f2367a, "Context passed to getAd was null.");
                return false;
            } else if (str == null) {
                km.b(f2367a, "Ad space name passed to getAd was null.");
                return false;
            } else if (str.length() == 0) {
                km.b(f2367a, "Ad space name passed to getAd was empty.");
                return false;
            } else if (viewGroup == null) {
                km.b(f2367a, "ViewGroup passed to getAd was null.");
                return false;
            } else if (flurryAdSize == null) {
                km.b(f2367a, "FlurryAdSize passed to getAd was null.");
                return false;
            } else if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                km.b(f2367a, "getAd must be called from UI thread.");
                return false;
            } else {
                try {
                    i a2 = i.a();
                    if (a2 == null) {
                        km.b(f2367a, "Could not find FlurryAds module. Please make sure the library is included.");
                        return false;
                    }
                    v a3 = a2.c.a(context, str);
                    if (a3 == null) {
                        a3 = new v(context, viewGroup, str);
                    } else if (context != a3.f() || viewGroup != a3.g()) {
                        a3.a();
                        a3 = new v(context, viewGroup, str);
                    }
                    return a3.o();
                } catch (Throwable th) {
                    km.a(f2367a, "Exception while getting Ad : ", th);
                    return false;
                }
            }
        }
    }

    @Deprecated
    public static void initializeAds(Context context) {
    }

    @Deprecated
    public static boolean isAdAvailable(Context context, String str, FlurryAdSize flurryAdSize, long j) {
        boolean z = false;
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
        } else if (jy.a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            if (context == null) {
                km.b(f2367a, "Context passed to isAdAvailable was null.");
            } else if (str == null) {
                km.b(f2367a, "Ad space name passed to isAdAvailable was null.");
            } else if (str.length() == 0) {
                km.b(f2367a, "Ad space name passed to isAdAvailable was empty.");
            } else if (flurryAdSize == null) {
                km.b(f2367a, "FlurryAdSize passed to isAdAvailable was null.");
            } else {
                try {
                    i a2 = i.a();
                    if (a2 == null) {
                        km.b(f2367a, "Could not find FlurryAds module. Please make sure the library is included.");
                    } else {
                        v a3 = a2.c.a(context, str);
                        if (a3 != null) {
                            z = a3.k();
                        }
                    }
                } catch (Throwable th) {
                    km.a(f2367a, "Exception while checking Ads if available: ", th);
                }
            }
        }
        return z;
    }

    @Deprecated
    public static boolean isAdReady(String str) {
        boolean z = false;
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
        } else if (jy.a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            if (str == null) {
                km.b(f2367a, "Ad space name passed to isAdReady was null.");
            } else if (str.length() == 0) {
                km.b(f2367a, "Ad space name passed to isAdReady was empty.");
            } else {
                try {
                    i a2 = i.a();
                    if (a2 == null) {
                        km.b(f2367a, "Could not find FlurryAds module. Please make sure the library is included.");
                    } else {
                        v a3 = a2.c.a(str);
                        if (a3 != null) {
                            z = a3.k();
                        }
                    }
                } catch (Throwable th) {
                    km.a(f2367a, "Exception while checking Ads if ready: ", th);
                }
            }
        }
        return z;
    }

    @Deprecated
    public static void fetchAd(Context context, String str, ViewGroup viewGroup, FlurryAdSize flurryAdSize) {
        v vVar;
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
        } else if (jy.a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            if (context == null) {
                km.b(f2367a, "Context passed to fetchAd was null.");
            } else if (str == null) {
                km.b(f2367a, "Ad space name passed to fetchAd was null.");
            } else if (str.length() == 0) {
                km.b(f2367a, "Ad space name passed to fetchAd was empty.");
            } else if (viewGroup == null) {
                km.b(f2367a, "ViewGroup passed to fetchAd was null.");
            } else if (flurryAdSize == null) {
                km.b(f2367a, "FlurryAdSize passed to fetchAd was null.");
            } else {
                try {
                    i a2 = i.a();
                    if (a2 == null) {
                        km.b(f2367a, "Could not find FlurryAds module. Please make sure the library is included.");
                        return;
                    }
                    v a3 = a2.c.a(context, str);
                    if (a3 == null) {
                        vVar = new v(context, viewGroup, str);
                    } else if (viewGroup != a3.g()) {
                        a3.a();
                        vVar = new v(context, viewGroup, str);
                    } else {
                        vVar = a3;
                    }
                    vVar.k = false;
                    synchronized (vVar) {
                        if (v.a.INIT.equals(vVar.d)) {
                            vVar.e.a(vVar, vVar.b(), vVar.j());
                        } else if (v.a.READY.equals(vVar.d)) {
                            fh.a(vVar);
                        } else if (v.a.DISPLAY.equals(vVar.d) || v.a.NEXT.equals(vVar.d)) {
                            vVar.d = v.a.INIT;
                            vVar.e.a(vVar, vVar.b(), vVar.j());
                        }
                    }
                } catch (Throwable th) {
                    km.a(f2367a, "Exception while fetching Ad: ", th);
                }
            }
        }
    }

    @Deprecated
    public static void displayAd(Context context, String str, ViewGroup viewGroup) {
        final v vVar;
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
        } else if (jy.a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            if (context == null) {
                km.b(f2367a, "Context passed to displayAd was null.");
            } else if (str == null) {
                km.b(f2367a, "Ad space name passed to displayAd was null.");
            } else if (str.length() == 0) {
                km.b(f2367a, "Ad space name passed to displayAd was empty.");
            } else if (viewGroup == null) {
                km.b(f2367a, "ViewGroup passed to displayAd was null.");
            } else {
                try {
                    i a2 = i.a();
                    if (a2 == null) {
                        km.b(f2367a, "Could not find FlurryAds module. Please make sure the library is included.");
                        return;
                    }
                    v a3 = a2.c.a(context, str);
                    if (a3 == null) {
                        vVar = new v(context, viewGroup, str);
                    } else if (viewGroup != a3.g()) {
                        km.b(f2367a, "An ad must be displayed with the same context and viewGroup as the fetch.");
                        return;
                    } else {
                        vVar = a3;
                    }
                    synchronized (vVar) {
                        if (v.a.INIT.equals(vVar.d) || v.a.NEXT.equals(vVar.d)) {
                            fh.b(vVar, bb.kNotReady);
                        } else if (v.a.READY.equals(vVar.d)) {
                            jy.a().b(new ma() { // from class: com.flurry.sdk.v.5
                                @Override // com.flurry.sdk.ma
                                public final void a() {
                                    v.b(vVar);
                                }
                            });
                        } else if (v.a.DISPLAY.equals(vVar.d)) {
                            fh.b(vVar);
                        }
                    }
                } catch (Throwable th) {
                    km.a(f2367a, "Exception while displaying Ad: ", th);
                }
            }
        }
    }

    @Deprecated
    public static void removeAd(Context context, String str, ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
        } else if (jy.a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            if (context == null) {
                km.b(f2367a, "Context passed to removeAd was null.");
            } else if (str == null) {
                km.b(f2367a, "Ad space name passed to removeAd was null.");
            } else if (str.length() == 0) {
                km.b(f2367a, "Ad space name passed to removeAd was empty.");
            } else if (viewGroup == null) {
                km.b(f2367a, "ViewGroup passed to removeAd was null.");
            } else {
                try {
                    i a2 = i.a();
                    if (a2 == null) {
                        km.b(f2367a, "Could not find FlurryAds module. Please make sure the library is included.");
                    } else {
                        a2.c.b(context, str);
                    }
                } catch (Throwable th) {
                    km.a(f2367a, "Exception while removing Ad: ", th);
                }
            }
        }
    }

    @Deprecated
    public static void setAdListener(FlurryAdListener flurryAdListener) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
            return;
        }
        j.a().f2888a = new WeakReference<>(flurryAdListener);
    }

    @Deprecated
    public static void setLocation(float f, float f2) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
            return;
        }
        Location location = new Location("Explicit");
        location.setLatitude(f);
        location.setLongitude(f2);
        lp.a().a("ExplicitLocation", location);
    }

    @Deprecated
    public static void clearLocation() {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
        } else {
            lp.a().a("ExplicitLocation", (Object) null);
        }
    }

    public static void setCustomAdNetworkHandler(ICustomAdNetworkHandler iCustomAdNetworkHandler) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
        } else if (iCustomAdNetworkHandler == null) {
            km.b(f2367a, "ICustomAdNetworkHandler passed to setCustomAdNetworkHandler was null.");
        } else {
            j.a().b = iCustomAdNetworkHandler;
        }
    }

    @Deprecated
    public static void setUserCookies(Map<String, String> map) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
        } else if (map == null) {
            km.b(f2367a, "userCookies Map passed to setUserCookies was null.");
        } else {
            j.a().c.setUserCookies(map);
        }
    }

    @Deprecated
    public static void clearUserCookies() {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
        } else {
            j.a().c.clearUserCookies();
        }
    }

    @Deprecated
    public static void setTargetingKeywords(Map<String, String> map) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
        } else if (map == null) {
            km.b(f2367a, "targetingKeywords Map passed to setTargetingKeywords was null.");
        } else {
            j.a().c.setKeywords(map);
        }
    }

    @Deprecated
    public static void clearTargetingKeywords() {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
        } else {
            j.a().c.clearKeywords();
        }
    }

    @Deprecated
    public static void enableTestAds(boolean z) {
        if (Build.VERSION.SDK_INT < 10) {
            km.b(f2367a, "Device SDK Version older than 10");
        } else {
            j.a().c.setEnableTestAds(z);
        }
    }
}
