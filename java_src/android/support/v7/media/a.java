package android.support.v7.media;

import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.RestrictTo;
import android.text.TextUtils;
import com.facebook.applinks.AppLinkData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* compiled from: MediaRouteDescriptor.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    final Bundle f644a;
    List<IntentFilter> b;

    a(Bundle bundle, List<IntentFilter> list) {
        this.f644a = bundle;
        this.b = list;
    }

    public String a() {
        return this.f644a.getString("id");
    }

    @RestrictTo
    public List<String> b() {
        return this.f644a.getStringArrayList("groupMemberIds");
    }

    public String c() {
        return this.f644a.getString("name");
    }

    public String d() {
        return this.f644a.getString("status");
    }

    public Uri e() {
        String string = this.f644a.getString("iconUri");
        if (string == null) {
            return null;
        }
        return Uri.parse(string);
    }

    public boolean f() {
        return this.f644a.getBoolean("enabled", true);
    }

    @Deprecated
    public boolean g() {
        return this.f644a.getBoolean("connecting", false);
    }

    public int h() {
        return this.f644a.getInt("connectionState", 0);
    }

    public boolean i() {
        return this.f644a.getBoolean("canDisconnect", false);
    }

    public IntentSender j() {
        return (IntentSender) this.f644a.getParcelable("settingsIntent");
    }

    public List<IntentFilter> k() {
        l();
        return this.b;
    }

    void l() {
        if (this.b == null) {
            this.b = this.f644a.getParcelableArrayList("controlFilters");
            if (this.b == null) {
                this.b = Collections.emptyList();
            }
        }
    }

    public int m() {
        return this.f644a.getInt("playbackType", 1);
    }

    public int n() {
        return this.f644a.getInt("playbackStream", -1);
    }

    public int o() {
        return this.f644a.getInt("deviceType");
    }

    public int p() {
        return this.f644a.getInt("volume");
    }

    public int q() {
        return this.f644a.getInt("volumeMax");
    }

    public int r() {
        return this.f644a.getInt("volumeHandling", 0);
    }

    public int s() {
        return this.f644a.getInt("presentationDisplayId", -1);
    }

    public Bundle t() {
        return this.f644a.getBundle(AppLinkData.ARGUMENTS_EXTRAS_KEY);
    }

    @RestrictTo
    public int u() {
        return this.f644a.getInt("minClientVersion", 1);
    }

    @RestrictTo
    public int v() {
        return this.f644a.getInt("maxClientVersion", Integer.MAX_VALUE);
    }

    public boolean w() {
        l();
        return !TextUtils.isEmpty(a()) && !TextUtils.isEmpty(c()) && !this.b.contains(null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MediaRouteDescriptor{ ");
        sb.append("id=").append(a());
        sb.append(", groupMemberIds=").append(b());
        sb.append(", name=").append(c());
        sb.append(", description=").append(d());
        sb.append(", iconUri=").append(e());
        sb.append(", isEnabled=").append(f());
        sb.append(", isConnecting=").append(g());
        sb.append(", connectionState=").append(h());
        sb.append(", controlFilters=").append(Arrays.toString(k().toArray()));
        sb.append(", playbackType=").append(m());
        sb.append(", playbackStream=").append(n());
        sb.append(", deviceType=").append(o());
        sb.append(", volume=").append(p());
        sb.append(", volumeMax=").append(q());
        sb.append(", volumeHandling=").append(r());
        sb.append(", presentationDisplayId=").append(s());
        sb.append(", extras=").append(t());
        sb.append(", isValid=").append(w());
        sb.append(", minClientVersion=").append(u());
        sb.append(", maxClientVersion=").append(v());
        sb.append(" }");
        return sb.toString();
    }

    public Bundle x() {
        return this.f644a;
    }

    public static a a(Bundle bundle) {
        if (bundle != null) {
            return new a(bundle, null);
        }
        return null;
    }

    /* compiled from: MediaRouteDescriptor.java */
    /* renamed from: android.support.v7.media.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0039a {

        /* renamed from: a  reason: collision with root package name */
        private final Bundle f645a;
        private ArrayList<String> b;
        private ArrayList<IntentFilter> c;

        public C0039a(String str, String str2) {
            this.f645a = new Bundle();
            a(str);
            b(str2);
        }

        public C0039a(a aVar) {
            if (aVar == null) {
                throw new IllegalArgumentException("descriptor must not be null");
            }
            this.f645a = new Bundle(aVar.f644a);
            aVar.l();
            if (!aVar.b.isEmpty()) {
                this.c = new ArrayList<>(aVar.b);
            }
        }

        public C0039a a(String str) {
            this.f645a.putString("id", str);
            return this;
        }

        public C0039a b(String str) {
            this.f645a.putString("name", str);
            return this;
        }

        public C0039a c(String str) {
            this.f645a.putString("status", str);
            return this;
        }

        public C0039a a(boolean z) {
            this.f645a.putBoolean("enabled", z);
            return this;
        }

        @Deprecated
        public C0039a b(boolean z) {
            this.f645a.putBoolean("connecting", z);
            return this;
        }

        public C0039a a(IntentFilter intentFilter) {
            if (intentFilter == null) {
                throw new IllegalArgumentException("filter must not be null");
            }
            if (this.c == null) {
                this.c = new ArrayList<>();
            }
            if (!this.c.contains(intentFilter)) {
                this.c.add(intentFilter);
            }
            return this;
        }

        public C0039a a(Collection<IntentFilter> collection) {
            if (collection == null) {
                throw new IllegalArgumentException("filters must not be null");
            }
            if (!collection.isEmpty()) {
                for (IntentFilter intentFilter : collection) {
                    a(intentFilter);
                }
            }
            return this;
        }

        public C0039a a(int i) {
            this.f645a.putInt("playbackType", i);
            return this;
        }

        public C0039a b(int i) {
            this.f645a.putInt("playbackStream", i);
            return this;
        }

        public C0039a c(int i) {
            this.f645a.putInt("deviceType", i);
            return this;
        }

        public C0039a d(int i) {
            this.f645a.putInt("volume", i);
            return this;
        }

        public C0039a e(int i) {
            this.f645a.putInt("volumeMax", i);
            return this;
        }

        public C0039a f(int i) {
            this.f645a.putInt("volumeHandling", i);
            return this;
        }

        public C0039a g(int i) {
            this.f645a.putInt("presentationDisplayId", i);
            return this;
        }

        public a a() {
            if (this.c != null) {
                this.f645a.putParcelableArrayList("controlFilters", this.c);
            }
            if (this.b != null) {
                this.f645a.putStringArrayList("groupMemberIds", this.b);
            }
            return new a(this.f645a, this.c);
        }
    }
}
