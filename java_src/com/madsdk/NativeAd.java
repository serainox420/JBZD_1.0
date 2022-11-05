package com.madsdk;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.view.View;
import com.facebook.appevents.AppEventsConstants;
import com.google.firebase.a.a;
import com.google.gson.d;
import com.madsdk.gson.request.DeviceInfo;
import com.madsdk.gson.request.Ext;
import com.madsdk.gson.request.Geo;
import com.madsdk.gson.request.Imp;
import com.madsdk.gson.request.Link;
import com.madsdk.gson.request.NativeAdRequest;
import com.madsdk.gson.request.NativeInfo;
import com.madsdk.gson.request.User;
import com.madsdk.gson.response.Asset;
import com.madsdk.gson.response.NativeAdResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
/* loaded from: classes2.dex */
public class NativeAd {
    public static final String MADSDK = "madsdk";
    public static final String OS_NAME = "Android";
    public static final String RT = "sdk-integration";
    public static final String STATE_ERROR = "error";
    private static final String STATE_REJECTED = "rejected";

    /* loaded from: classes2.dex */
    public interface OnNativeAdLoadedListener {
        void onFailure(String str);

        void onLoaded(List<Asset> list);
    }

    public static void requestNativeAd(final View view, final OnNativeAdLoadedListener onNativeAdLoadedListener, List<com.madsdk.gson.request.Asset> list, String str, boolean z, final boolean z2) {
        new OkHttpClient().newCall(new Request.Builder().url("https://mads.permodo.net/md.request.php").post(RequestBody.create(MediaType.parse("application/json"), createBodyForRequest(view, list, str, z))).build()).enqueue(new Callback() { // from class: com.madsdk.NativeAd.1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                OnNativeAdLoadedListener.this.onFailure(iOException.getMessage());
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                d dVar = new d();
                String string = response.body().string();
                response.body().close();
                NativeAdResponse nativeAdResponse = (NativeAdResponse) dVar.a(string, (Class<Object>) NativeAdResponse.class);
                if ("error".equals(nativeAdResponse.ext.status) || NativeAd.STATE_REJECTED.equals(nativeAdResponse.ext.status)) {
                    OnNativeAdLoadedListener.this.onFailure(nativeAdResponse.ext.status + ": " + nativeAdResponse.ext.msg);
                    return;
                }
                List<String> list2 = nativeAdResponse.seatbid.get(0).bid.get(0).adm.aNative.imptrackers;
                if (list2 != null) {
                    for (String str2 : list2) {
                        new OkHttpClient().newCall(new Request.Builder().url(str2).get().build()).enqueue(new Callback() { // from class: com.madsdk.NativeAd.1.1
                            @Override // okhttp3.Callback
                            public void onFailure(Call call2, IOException iOException) {
                            }

                            @Override // okhttp3.Callback
                            public void onResponse(Call call2, Response response2) throws IOException {
                            }
                        });
                    }
                }
                OnNativeAdLoadedListener.this.onLoaded(nativeAdResponse.seatbid.get(0).bid.get(0).adm.aNative.assets);
                final Link link = nativeAdResponse.seatbid.get(0).bid.get(0).adm.aNative.link;
                view.setOnClickListener(new View.OnClickListener() { // from class: com.madsdk.NativeAd.1.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (link != null) {
                            Utils.openBrowser(z2, link.url, view.getContext());
                        }
                    }
                });
            }
        });
    }

    private static String createBodyForRequest(View view, List<com.madsdk.gson.request.Asset> list, String str, boolean z) {
        d dVar = new d();
        ArrayList arrayList = new ArrayList();
        TelephonyManager telephonyManager = (TelephonyManager) view.getContext().getSystemService("phone");
        String deviceId = telephonyManager.getDeviceId();
        arrayList.add(new Imp("1", Float.valueOf(1.0f), new NativeInfo(new com.madsdk.gson.request.Request(list, "1", "1", "1"))));
        return dVar.a(new NativeAdRequest(generateRequestId(deviceId), arrayList, null, null, new DeviceInfo(getGeo(view), "Android", String.valueOf(Build.VERSION.SDK_INT), telephonyManager.getNetworkOperatorName()), new User(deviceId, null), new Ext(RT, str, z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO)));
    }

    private static Geo getGeo(View view) {
        Location location = getLocation(view.getContext());
        if (location != null) {
            return new Geo(String.valueOf(location.getLatitude()), String.valueOf(location.getLongitude()));
        }
        return new Geo("", "");
    }

    private static String generateRequestId(String str) {
        return "madsdkAndroid" + str + Long.valueOf(System.currentTimeMillis() / 1000).toString() + Math.random();
    }

    private static Location getLocation(Context context) {
        LocationManager locationManager = (LocationManager) context.getSystemService(a.b.LOCATION);
        String bestProvider = locationManager.getBestProvider(new Criteria(), false);
        if (bestProvider == null || android.support.v4.app.a.b(context, "android.permission.ACCESS_FINE_LOCATION") != 0 || android.support.v4.app.a.b(context, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            return null;
        }
        return locationManager.getLastKnownLocation(bestProvider);
    }
}
