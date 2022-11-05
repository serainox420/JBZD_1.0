package com.openx.view.mraid.methods;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.openx.common.utils.helpers.Utils;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.view.WebViewBase;
import com.openx.view.mraid.BaseJSInterface;
/* loaded from: classes3.dex */
public class StorePicture {
    private WebViewBase adBaseView;
    private Context context;
    private BaseJSInterface jsi;
    private String mUrlToStore = null;

    public StorePicture(Context context, BaseJSInterface baseJSInterface, WebViewBase webViewBase) {
        this.context = context;
        this.adBaseView = webViewBase;
        this.jsi = baseJSInterface;
    }

    public void storePicture(String str) {
        if (str != null && !str.equals("")) {
            this.mUrlToStore = str;
            if (this.adBaseView != null) {
                ((Activity) this.context).runOnUiThread(new AnonymousClass1());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.openx.view.mraid.methods.StorePicture$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertDialog.Builder builder = new AlertDialog.Builder(StorePicture.this.context);
            builder.setTitle(Utils.getString("dialog_title_store_picture"));
            builder.setMessage(StorePicture.this.mUrlToStore);
            builder.setPositiveButton(Utils.getString("general_save"), new DialogInterface.OnClickListener() { // from class: com.openx.view.mraid.methods.StorePicture.1.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    new Thread(new Runnable() { // from class: com.openx.view.mraid.methods.StorePicture.1.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                OXMManagersResolver.getInstance().getDeviceManager().storePicture(StorePicture.this.mUrlToStore);
                            } catch (Exception e) {
                                Utils.log(this, e.getMessage());
                                StorePicture.this.jsi.onError(Utils.getMRAIDErrMessage("store_picture"), "storePicture");
                            }
                        }
                    }).start();
                }
            });
            builder.setNegativeButton(Utils.getString("general_cancel"), new DialogInterface.OnClickListener() { // from class: com.openx.view.mraid.methods.StorePicture.1.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
    }
}
