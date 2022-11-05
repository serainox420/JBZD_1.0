package net.gotev.uploadservice;
/* compiled from: Placeholders.java */
/* loaded from: classes3.dex */
public class g {
    public static String a(String str, UploadInfo uploadInfo) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        return str.replace("[[ELAPSED_TIME]]", uploadInfo.b()).replace("[[PROGRESS]]", uploadInfo.h() + "%").replace("[[UPLOAD_RATE]]", uploadInfo.d()).replace("[[UPLOADED_FILES]]", Integer.toString(uploadInfo.e().size())).replace("[[TOTAL_FILES]]", Integer.toString(uploadInfo.i()));
    }
}
