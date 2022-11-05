package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.drive.DriveFile;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: TaskStackBuilder.java */
/* loaded from: classes.dex */
public final class ba implements Iterable<Intent> {

    /* renamed from: a  reason: collision with root package name */
    private static final b f253a;
    private final ArrayList<Intent> b = new ArrayList<>();
    private final Context c;

    /* compiled from: TaskStackBuilder.java */
    /* loaded from: classes.dex */
    public interface a {
        Intent getSupportParentActivityIntent();
    }

    /* compiled from: TaskStackBuilder.java */
    /* loaded from: classes.dex */
    interface b {
    }

    /* compiled from: TaskStackBuilder.java */
    /* loaded from: classes.dex */
    static class c implements b {
        c() {
        }
    }

    /* compiled from: TaskStackBuilder.java */
    /* loaded from: classes.dex */
    static class d implements b {
        d() {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            f253a = new d();
        } else {
            f253a = new c();
        }
    }

    private ba(Context context) {
        this.c = context;
    }

    public static ba a(Context context) {
        return new ba(context);
    }

    public ba a(Intent intent) {
        this.b.add(intent);
        return this;
    }

    public ba a(Activity activity) {
        Intent intent = null;
        if (activity instanceof a) {
            intent = ((a) activity).getSupportParentActivityIntent();
        }
        Intent a2 = intent == null ? ae.a(activity) : intent;
        if (a2 != null) {
            ComponentName component = a2.getComponent();
            if (component == null) {
                component = a2.resolveActivity(this.c.getPackageManager());
            }
            a(component);
            a(a2);
        }
        return this;
    }

    public ba a(ComponentName componentName) {
        int size = this.b.size();
        try {
            Intent a2 = ae.a(this.c, componentName);
            while (a2 != null) {
                this.b.add(size, a2);
                a2 = ae.a(this.c, a2.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.b.iterator();
    }

    public void a() {
        a((Bundle) null);
    }

    public void a(Bundle bundle) {
        if (this.b.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) this.b.toArray(new Intent[this.b.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (!android.support.v4.content.b.a(this.c, intentArr, bundle)) {
            Intent intent = new Intent(intentArr[intentArr.length - 1]);
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            this.c.startActivity(intent);
        }
    }
}
