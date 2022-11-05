package pl.jbzd.app.fcm;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.support.v4.content.l;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;
/* loaded from: classes3.dex */
public class MyFirebaseInstanceIDService extends FirebaseInstanceIdService {
    public static final String REGISTRATION_COMPLETE = "registrationComplete";

    @Override // com.google.firebase.iid.FirebaseInstanceIdService
    public void onTokenRefresh() {
        super.onTokenRefresh();
        String d = FirebaseInstanceId.a().d();
        storeRegIdInPref(d);
        Intent intent = new Intent(REGISTRATION_COMPLETE);
        intent.putExtra("token", d);
        l.a(this).a(intent);
    }

    @SuppressLint({"CommitPrefEdits"})
    private void storeRegIdInPref(String str) {
        getApplicationContext().getSharedPreferences(getPackageName(), 0).edit().putString("firebase_token", str).commit();
    }
}
