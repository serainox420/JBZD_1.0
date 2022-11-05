package io.fabric.sdk.android.services.settings;

import android.content.res.Resources;
import com.openx.view.mraid.JSInterface;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractAppSpiCall.java */
/* loaded from: classes3.dex */
public abstract class a extends io.fabric.sdk.android.services.common.a {
    public a(io.fabric.sdk.android.h hVar, String str, String str2, io.fabric.sdk.android.services.network.c cVar, HttpMethod httpMethod) {
        super(hVar, str, str2, cVar, httpMethod);
    }

    public boolean a(d dVar) {
        HttpRequest b = b(a(getHttpRequest(), dVar), dVar);
        io.fabric.sdk.android.c.h().a("Fabric", "Sending app info to " + getUrl());
        if (dVar.j != null) {
            io.fabric.sdk.android.c.h().a("Fabric", "App icon hash is " + dVar.j.f5720a);
            io.fabric.sdk.android.c.h().a("Fabric", "App icon size is " + dVar.j.c + JSInterface.JSON_X + dVar.j.d);
        }
        int b2 = b.b();
        io.fabric.sdk.android.c.h().a("Fabric", ("POST".equals(b.p()) ? "Create" : "Update") + " app request ID: " + b.b(io.fabric.sdk.android.services.common.a.HEADER_REQUEST_ID));
        io.fabric.sdk.android.c.h().a("Fabric", "Result was " + b2);
        return io.fabric.sdk.android.services.common.p.a(b2) == 0;
    }

    private HttpRequest a(HttpRequest httpRequest, d dVar) {
        return httpRequest.a(io.fabric.sdk.android.services.common.a.HEADER_API_KEY, dVar.f5714a).a(io.fabric.sdk.android.services.common.a.HEADER_CLIENT_TYPE, io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE).a(io.fabric.sdk.android.services.common.a.HEADER_CLIENT_VERSION, this.kit.getVersion());
    }

    private HttpRequest b(HttpRequest httpRequest, d dVar) {
        HttpRequest e = httpRequest.e("app[identifier]", dVar.b).e("app[name]", dVar.f).e("app[display_version]", dVar.c).e("app[build_version]", dVar.d).a("app[source]", Integer.valueOf(dVar.g)).e("app[minimum_sdk_version]", dVar.h).e("app[built_sdk_version]", dVar.i);
        if (!io.fabric.sdk.android.services.common.i.c(dVar.e)) {
            e.e("app[instance_identifier]", dVar.e);
        }
        if (dVar.j != null) {
            InputStream inputStream = null;
            try {
                inputStream = this.kit.getContext().getResources().openRawResource(dVar.j.b);
                e.e("app[icon][hash]", dVar.j.f5720a).a("app[icon][data]", "icon.png", "application/octet-stream", inputStream).a("app[icon][width]", Integer.valueOf(dVar.j.c)).a("app[icon][height]", Integer.valueOf(dVar.j.d));
            } catch (Resources.NotFoundException e2) {
                io.fabric.sdk.android.c.h().e("Fabric", "Failed to find app icon with resource ID: " + dVar.j.b, e2);
            } finally {
                io.fabric.sdk.android.services.common.i.a((Closeable) inputStream, "Failed to close app icon InputStream.");
            }
        }
        if (dVar.k != null) {
            for (io.fabric.sdk.android.j jVar : dVar.k) {
                e.e(a(jVar), jVar.b());
                e.e(b(jVar), jVar.c());
            }
        }
        return e;
    }

    String a(io.fabric.sdk.android.j jVar) {
        return String.format(Locale.US, "app[build][libraries][%s][version]", jVar.a());
    }

    String b(io.fabric.sdk.android.j jVar) {
        return String.format(Locale.US, "app[build][libraries][%s][type]", jVar.a());
    }
}
