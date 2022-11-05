package net.gotev.uploadservice;

import android.content.Context;
import android.content.Intent;
import java.util.UUID;
import net.gotev.uploadservice.h;
/* compiled from: UploadRequest.java */
/* loaded from: classes3.dex */
public abstract class h<B extends h<B>> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5847a = h.class.getSimpleName();
    protected final Context b;
    protected final UploadTaskParameters c = new UploadTaskParameters();
    protected i d;

    protected abstract Class<? extends j> a();

    public h(Context context, String str, String str2) throws IllegalArgumentException {
        if (context == null) {
            throw new IllegalArgumentException("Context MUST not be null!");
        }
        if (str2 == null || "".equals(str2)) {
            throw new IllegalArgumentException("Server URL cannot be null or empty");
        }
        this.b = context;
        if (str == null || str.isEmpty()) {
            Logger.c(f5847a, "null or empty upload ID. Generating it");
            this.c.a(UUID.randomUUID().toString());
        } else {
            Logger.c(f5847a, "setting provided upload ID");
            this.c.a(str);
        }
        this.c.b(str2);
        Logger.c(f5847a, "Created new upload request to " + this.c.d() + " with ID: " + this.c.c());
    }

    public String b() {
        UploadService.a(this.c.c(), this.d);
        Intent intent = new Intent(this.b, UploadService.class);
        a(intent);
        intent.setAction(UploadService.a());
        this.b.startService(intent);
        return this.c.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Intent intent) {
        intent.putExtra("taskParameters", this.c);
        Class<? extends j> a2 = a();
        if (a2 == null) {
            throw new RuntimeException("The request must specify a task class!");
        }
        intent.putExtra("taskClass", a2.getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final B c() {
        return this;
    }

    public B a(int i) {
        this.c.a(i);
        return c();
    }

    public B a(i iVar) {
        this.d = iVar;
        return c();
    }
}
