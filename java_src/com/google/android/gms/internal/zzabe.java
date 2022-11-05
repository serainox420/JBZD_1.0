package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes2.dex */
public class zzabe {
    protected final zzabf zzaCR;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzabe(zzabf zzabfVar) {
        this.zzaCR = zzabfVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzabf zzc(zzabd zzabdVar) {
        return zzabdVar.zzwS() ? zzabu.zza(zzabdVar.zzwU()) : zzabg.zzt(zzabdVar.zzwT());
    }

    public static zzabf zzs(Activity activity) {
        return zzc(new zzabd(activity));
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public Activity getActivity() {
        return this.zzaCR.zzwV();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public void onCreate(Bundle bundle) {
    }

    public void onDestroy() {
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
    }

    public void onStop() {
    }
}
