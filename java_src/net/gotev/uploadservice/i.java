package net.gotev.uploadservice;

import android.content.Context;
/* compiled from: UploadStatusDelegate.java */
/* loaded from: classes3.dex */
public interface i {
    void a(Context context, UploadInfo uploadInfo);

    void a(Context context, UploadInfo uploadInfo, Exception exc);

    void a(Context context, UploadInfo uploadInfo, ServerResponse serverResponse);

    void b(Context context, UploadInfo uploadInfo);
}
