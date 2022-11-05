package net.gotev.uploadservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes3.dex */
public class UploadServiceBroadcastReceiver extends BroadcastReceiver implements i {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && UploadService.b().equals(intent.getAction())) {
            BroadcastData broadcastData = (BroadcastData) intent.getParcelableExtra("broadcastData");
            if (broadcastData == null) {
                Logger.a(getClass().getSimpleName(), "Missing intent parameter: broadcastData");
                return;
            }
            switch (broadcastData.b()) {
                case ERROR:
                    a(context, broadcastData.d(), broadcastData.c());
                    return;
                case COMPLETED:
                    a(context, broadcastData.d(), broadcastData.e());
                    return;
                case IN_PROGRESS:
                    a(context, broadcastData.d());
                    return;
                case CANCELLED:
                    b(context, broadcastData.d());
                    return;
                default:
                    return;
            }
        }
    }

    @Override // net.gotev.uploadservice.i
    public void a(Context context, UploadInfo uploadInfo) {
    }

    @Override // net.gotev.uploadservice.i
    public void a(Context context, UploadInfo uploadInfo, Exception exc) {
    }

    @Override // net.gotev.uploadservice.i
    public void a(Context context, UploadInfo uploadInfo, ServerResponse serverResponse) {
    }

    @Override // net.gotev.uploadservice.i
    public void b(Context context, UploadInfo uploadInfo) {
    }
}
