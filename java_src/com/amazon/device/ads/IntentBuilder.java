package com.amazon.device.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.drive.DriveFile;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes.dex */
class IntentBuilder {
    private Activity activity;
    private Class<?> clazz;
    private Context context;
    private TreeMap<String, String> extras = new TreeMap<>();

    public IntentBuilder withContext(Context context) {
        this.context = context;
        return this;
    }

    public IntentBuilder withActivity(Activity activity) {
        this.activity = activity;
        return this;
    }

    public IntentBuilder withClass(Class<?> cls) {
        this.clazz = cls;
        return this;
    }

    public IntentBuilder withExtra(String str, String str2) {
        this.extras.put(str, str2);
        return this;
    }

    public boolean fireIntent() {
        try {
            Intent intent = new Intent(this.context, this.clazz);
            for (Map.Entry<String, String> entry : this.extras.entrySet()) {
                intent.putExtra(entry.getKey(), entry.getValue());
            }
            if (this.activity != null) {
                this.activity.startActivity(intent);
                return true;
            } else if (this.context == null) {
                return false;
            } else {
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                this.context.startActivity(intent);
                return true;
            }
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }
}
