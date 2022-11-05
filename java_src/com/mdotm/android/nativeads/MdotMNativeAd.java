package com.mdotm.android.nativeads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.gms.drive.DriveFile;
import com.mdotm.android.database.MdotMCacheHandler;
import com.mdotm.android.http.MdotMNatiiveContentDownloader;
import com.mdotm.android.http.MdotMNetworkManager;
import com.mdotm.android.listener.MdotMAdEventListener;
import com.mdotm.android.utils.MdotMLogger;
import com.mdotm.android.utils.MdotMUtils;
import com.mdotm.android.vast.BaseVastAd;
import java.io.File;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class MdotMNativeAd extends BaseVastAd {
    private String body;
    private String callToAction;
    private String coverImage;
    private String icon;
    private Context mContext;
    private String nativeClickThrough;
    private ArrayList<String> nativeClickTrackingURL = new ArrayList<>();
    protected ArrayList<String> nativeImpressionTrackingURL = new ArrayList<>();
    private String title;

    public void setNativeClickTrackingURL(String str) {
        this.nativeClickTrackingURL.add(str);
    }

    public void setNativeImpressionTrackingURL(ArrayList<String> arrayList) {
        this.nativeImpressionTrackingURL = arrayList;
    }

    public void setNativeClickThrough(String str) {
        this.nativeClickThrough = str;
    }

    public String getCoverImage() {
        return this.coverImage;
    }

    public void setCoverImage(String str) {
        this.coverImage = str;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public String getCallToAction() {
        return this.callToAction;
    }

    public void setCallToAction(String str) {
        this.callToAction = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getBody() {
        return this.body;
    }

    public void setBody(String str) {
        this.body = str;
    }

    public void regesterView(LinearLayout linearLayout, final MdotMNativeAd mdotMNativeAd, final Activity activity) {
        final MdotMAdEventListener mdotMAdEventListener = (MdotMAdEventListener) activity;
        if (mdotMNativeAd.nativeImpressionTrackingURL != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= mdotMNativeAd.nativeImpressionTrackingURL.size()) {
                    break;
                }
                MdotMUtils.getUtilsInstance().reportImpression(mdotMNativeAd.nativeImpressionTrackingURL.get(i2), activity.getApplicationContext());
                i = i2 + 1;
            }
        }
        MdotMLogger.d(this, "Native Ad Clicked" + mdotMNativeAd.nativeImpressionTrackingURL);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.mdotm.android.nativeads.MdotMNativeAd.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                mdotMAdEventListener.onNativeAdClick();
                if (mdotMNativeAd.nativeClickTrackingURL != null) {
                    int i3 = 0;
                    while (true) {
                        int i4 = i3;
                        if (i4 >= mdotMNativeAd.nativeClickTrackingURL.size()) {
                            break;
                        }
                        MdotMUtils.getUtilsInstance().reportImpression((String) mdotMNativeAd.nativeClickTrackingURL.get(i4), activity.getApplicationContext());
                        i3 = i4 + 1;
                    }
                }
                MdotMLogger.d(this, "Native Ad Clicked" + mdotMNativeAd.nativeClickThrough);
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(mdotMNativeAd.nativeClickThrough));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                try {
                    activity.startActivity(intent);
                } catch (Exception e) {
                    MdotMLogger.i(this, "Could not open browser on ad click to " + e);
                }
            }
        });
    }

    public void unRegesterView(LinearLayout linearLayout) {
        linearLayout.setClickable(false);
    }

    public void displayImage(String str, ImageView imageView, Context context) {
        String fileName = getFileName(str);
        MdotMLogger.d(this, "Inside Native ad Display");
        new MdotMNatiiveContentDownloader();
        File file = new File(context.getCacheDir() + "/" + MdotMNetworkManager.MdotM_CACHE_FOLDER + "/" + MdotMCacheHandler.TABLE_NAME_AD_NATIVE);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, fileName);
        MdotMLogger.d(this, "localFile" + file2);
        imageView.setImageBitmap(BitmapFactory.decodeFile(file2.getAbsolutePath()));
    }

    private String getFileName(String str) {
        return str.replace("\\", "").replace("/", "").replace(".", "").replace(":", "").replace("?", "");
    }
}
