package pl.aprilapps.easyphotopicker;

import android.content.Context;
import android.preference.PreferenceManager;
/* compiled from: EasyImageConfiguration.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private Context f5877a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context) {
        this.f5877a = context;
    }

    public String a() {
        return PreferenceManager.getDefaultSharedPreferences(this.f5877a).getString("pl.aprilapps.folder_name", "EasyImage");
    }

    public boolean b() {
        return PreferenceManager.getDefaultSharedPreferences(this.f5877a).getBoolean("pl.aprilapps.easyimage.allow_multiple", false);
    }

    public boolean c() {
        return PreferenceManager.getDefaultSharedPreferences(this.f5877a).getBoolean("pl.aprilapps.easyimage.copy_taken_photos", false);
    }
}
