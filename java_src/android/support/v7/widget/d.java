package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActivityChooserModel.java */
/* loaded from: classes.dex */
public class d extends DataSetObservable {

    /* renamed from: a  reason: collision with root package name */
    static final String f893a = d.class.getSimpleName();
    private static final Object e = new Object();
    private static final Map<String, d> f = new HashMap();
    final Context b;
    final String c;
    boolean d;
    private final Object g;
    private final List<a> h;
    private final List<c> i;
    private Intent j;
    private b k;
    private int l;
    private boolean m;
    private boolean n;
    private boolean o;
    private InterfaceC0047d p;

    /* compiled from: ActivityChooserModel.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(Intent intent, List<a> list, List<c> list2);
    }

    /* compiled from: ActivityChooserModel.java */
    /* renamed from: android.support.v7.widget.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0047d {
        boolean a(d dVar, Intent intent);
    }

    public int a() {
        int size;
        synchronized (this.g) {
            e();
            size = this.h.size();
        }
        return size;
    }

    public ResolveInfo a(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.g) {
            e();
            resolveInfo = this.h.get(i).f894a;
        }
        return resolveInfo;
    }

    public int a(ResolveInfo resolveInfo) {
        synchronized (this.g) {
            e();
            List<a> list = this.h;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).f894a == resolveInfo) {
                    return i;
                }
            }
            return -1;
        }
    }

    public Intent b(int i) {
        synchronized (this.g) {
            if (this.j == null) {
                return null;
            }
            e();
            a aVar = this.h.get(i);
            ComponentName componentName = new ComponentName(aVar.f894a.activityInfo.packageName, aVar.f894a.activityInfo.name);
            Intent intent = new Intent(this.j);
            intent.setComponent(componentName);
            if (this.p != null) {
                if (this.p.a(this, new Intent(intent))) {
                    return null;
                }
            }
            a(new c(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    public ResolveInfo b() {
        synchronized (this.g) {
            e();
            if (!this.h.isEmpty()) {
                return this.h.get(0).f894a;
            }
            return null;
        }
    }

    public void c(int i) {
        float f2;
        synchronized (this.g) {
            e();
            a aVar = this.h.get(i);
            a aVar2 = this.h.get(0);
            if (aVar2 != null) {
                f2 = (aVar2.b - aVar.b) + 5.0f;
            } else {
                f2 = 1.0f;
            }
            a(new c(new ComponentName(aVar.f894a.activityInfo.packageName, aVar.f894a.activityInfo.name), System.currentTimeMillis(), f2));
        }
    }

    private void d() {
        if (!this.m) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        }
        if (this.n) {
            this.n = false;
            if (!TextUtils.isEmpty(this.c)) {
                android.support.v4.os.a.a(new e(), new ArrayList(this.i), this.c);
            }
        }
    }

    public int c() {
        int size;
        synchronized (this.g) {
            e();
            size = this.i.size();
        }
        return size;
    }

    private void e() {
        boolean g = g() | h();
        i();
        if (g) {
            f();
            notifyChanged();
        }
    }

    private boolean f() {
        if (this.k == null || this.j == null || this.h.isEmpty() || this.i.isEmpty()) {
            return false;
        }
        this.k.a(this.j, this.h, Collections.unmodifiableList(this.i));
        return true;
    }

    private boolean g() {
        if (!this.o || this.j == null) {
            return false;
        }
        this.o = false;
        this.h.clear();
        List<ResolveInfo> queryIntentActivities = this.b.getPackageManager().queryIntentActivities(this.j, 0);
        int size = queryIntentActivities.size();
        for (int i = 0; i < size; i++) {
            this.h.add(new a(queryIntentActivities.get(i)));
        }
        return true;
    }

    private boolean h() {
        if (!this.d || !this.n || TextUtils.isEmpty(this.c)) {
            return false;
        }
        this.d = false;
        this.m = true;
        j();
        return true;
    }

    private boolean a(c cVar) {
        boolean add = this.i.add(cVar);
        if (add) {
            this.n = true;
            i();
            d();
            f();
            notifyChanged();
        }
        return add;
    }

    private void i() {
        int size = this.i.size() - this.l;
        if (size > 0) {
            this.n = true;
            for (int i = 0; i < size; i++) {
                this.i.remove(0);
            }
        }
    }

    /* compiled from: ActivityChooserModel.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final ComponentName f895a;
        public final long b;
        public final float c;

        public c(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public c(ComponentName componentName, long j, float f) {
            this.f895a = componentName;
            this.b = j;
            this.c = f;
        }

        public int hashCode() {
            return (((((this.f895a == null ? 0 : this.f895a.hashCode()) + 31) * 31) + ((int) (this.b ^ (this.b >>> 32)))) * 31) + Float.floatToIntBits(this.c);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                c cVar = (c) obj;
                if (this.f895a == null) {
                    if (cVar.f895a != null) {
                        return false;
                    }
                } else if (!this.f895a.equals(cVar.f895a)) {
                    return false;
                }
                return this.b == cVar.b && Float.floatToIntBits(this.c) == Float.floatToIntBits(cVar.c);
            }
            return false;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append("; activity:").append(this.f895a);
            sb.append("; time:").append(this.b);
            sb.append("; weight:").append(new BigDecimal(this.c));
            sb.append("]");
            return sb.toString();
        }
    }

    /* compiled from: ActivityChooserModel.java */
    /* loaded from: classes.dex */
    public final class a implements Comparable<a> {

        /* renamed from: a  reason: collision with root package name */
        public final ResolveInfo f894a;
        public float b;

        public a(ResolveInfo resolveInfo) {
            this.f894a = resolveInfo;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.b) + 31;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && Float.floatToIntBits(this.b) == Float.floatToIntBits(((a) obj).b);
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(a aVar) {
            return Float.floatToIntBits(aVar.b) - Float.floatToIntBits(this.b);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append("resolveInfo:").append(this.f894a.toString());
            sb.append("; weight:").append(new BigDecimal(this.b));
            sb.append("]");
            return sb.toString();
        }
    }

    private void j() {
        FileInputStream fileInputStream;
        try {
            try {
                FileInputStream openFileInput = this.b.openFileInput(this.c);
                try {
                    try {
                        XmlPullParser newPullParser = Xml.newPullParser();
                        newPullParser.setInput(openFileInput, "UTF-8");
                        for (int i = 0; i != 1 && i != 2; i = newPullParser.next()) {
                        }
                        if (!"historical-records".equals(newPullParser.getName())) {
                            throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                        }
                        List<c> list = this.i;
                        list.clear();
                        while (true) {
                            int next = newPullParser.next();
                            if (next == 1) {
                                if (openFileInput == null) {
                                    return;
                                }
                                try {
                                    openFileInput.close();
                                    return;
                                } catch (IOException e2) {
                                    return;
                                }
                            } else if (next != 3 && next != 4) {
                                if (!"historical-record".equals(newPullParser.getName())) {
                                    throw new XmlPullParserException("Share records file not well-formed.");
                                }
                                list.add(new c(newPullParser.getAttributeValue(null, "activity"), Long.parseLong(newPullParser.getAttributeValue(null, "time")), Float.parseFloat(newPullParser.getAttributeValue(null, "weight"))));
                            }
                        }
                    } catch (XmlPullParserException e3) {
                        Log.e(f893a, "Error reading historical recrod file: " + this.c, e3);
                        if (openFileInput == null) {
                            return;
                        }
                        try {
                            openFileInput.close();
                        } catch (IOException e4) {
                        }
                    }
                } catch (IOException e5) {
                    Log.e(f893a, "Error reading historical recrod file: " + this.c, e5);
                    if (openFileInput == null) {
                        return;
                    }
                    try {
                        openFileInput.close();
                    } catch (IOException e6) {
                    }
                }
            } catch (FileNotFoundException e7) {
            }
        } catch (Throwable th) {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e8) {
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ActivityChooserModel.java */
    /* loaded from: classes.dex */
    public final class e extends AsyncTask<Object, Void, Void> {
        e() {
        }

        @Override // android.os.AsyncTask
        /* renamed from: a */
        public Void doInBackground(Object... objArr) {
            List list = (List) objArr[0];
            String str = (String) objArr[1];
            try {
                FileOutputStream openFileOutput = d.this.b.openFileOutput(str, 0);
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    try {
                        try {
                            newSerializer.setOutput(openFileOutput, null);
                            newSerializer.startDocument("UTF-8", true);
                            newSerializer.startTag(null, "historical-records");
                            int size = list.size();
                            for (int i = 0; i < size; i++) {
                                c cVar = (c) list.remove(0);
                                newSerializer.startTag(null, "historical-record");
                                newSerializer.attribute(null, "activity", cVar.f895a.flattenToString());
                                newSerializer.attribute(null, "time", String.valueOf(cVar.b));
                                newSerializer.attribute(null, "weight", String.valueOf(cVar.c));
                                newSerializer.endTag(null, "historical-record");
                            }
                            newSerializer.endTag(null, "historical-records");
                            newSerializer.endDocument();
                            d.this.d = true;
                            if (openFileOutput != null) {
                                try {
                                    openFileOutput.close();
                                } catch (IOException e) {
                                }
                            }
                        } catch (IOException e2) {
                            Log.e(d.f893a, "Error writing historical record file: " + d.this.c, e2);
                            d.this.d = true;
                            if (openFileOutput != null) {
                                try {
                                    openFileOutput.close();
                                } catch (IOException e3) {
                                }
                            }
                        }
                    } catch (IllegalArgumentException e4) {
                        Log.e(d.f893a, "Error writing historical record file: " + d.this.c, e4);
                        d.this.d = true;
                        if (openFileOutput != null) {
                            try {
                                openFileOutput.close();
                            } catch (IOException e5) {
                            }
                        }
                    } catch (IllegalStateException e6) {
                        Log.e(d.f893a, "Error writing historical record file: " + d.this.c, e6);
                        d.this.d = true;
                        if (openFileOutput != null) {
                            try {
                                openFileOutput.close();
                            } catch (IOException e7) {
                            }
                        }
                    }
                } catch (Throwable th) {
                    d.this.d = true;
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException e8) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e9) {
                Log.e(d.f893a, "Error writing historical record file: " + str, e9);
            }
            return null;
        }
    }
}
