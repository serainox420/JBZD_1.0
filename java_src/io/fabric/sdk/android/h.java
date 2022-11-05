package io.fabric.sdk.android;

import android.content.Context;
import io.fabric.sdk.android.services.common.IdManager;
import java.io.File;
import java.util.Collection;
/* compiled from: Kit.java */
/* loaded from: classes.dex */
public abstract class h<Result> implements Comparable<h> {
    Context context;
    c fabric;
    IdManager idManager;
    f<Result> initializationCallback;
    g<Result> initializationTask = new g<>(this);
    final io.fabric.sdk.android.services.concurrency.b dependsOnAnnotation = (io.fabric.sdk.android.services.concurrency.b) getClass().getAnnotation(io.fabric.sdk.android.services.concurrency.b.class);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: doInBackground */
    public abstract Result mo38doInBackground();

    public abstract String getIdentifier();

    public abstract String getVersion();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void injectParameters(Context context, c cVar, f<Result> fVar, IdManager idManager) {
        this.fabric = cVar;
        this.context = new d(context, getIdentifier(), getPath());
        this.initializationCallback = fVar;
        this.idManager = idManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void initialize() {
        this.initializationTask.a(this.fabric.f(), (Object[]) new Void[]{null});
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean onPreExecute() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPostExecute(Result result) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCancelled(Result result) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IdManager getIdManager() {
        return this.idManager;
    }

    public Context getContext() {
        return this.context;
    }

    public c getFabric() {
        return this.fabric;
    }

    public String getPath() {
        return ".Fabric" + File.separator + getIdentifier();
    }

    @Override // java.lang.Comparable
    public int compareTo(h hVar) {
        if (containsAnnotatedDependency(hVar)) {
            return 1;
        }
        if (hVar.containsAnnotatedDependency(this)) {
            return -1;
        }
        if (hasAnnotatedDependency() && !hVar.hasAnnotatedDependency()) {
            return 1;
        }
        return (hasAnnotatedDependency() || !hVar.hasAnnotatedDependency()) ? 0 : -1;
    }

    boolean containsAnnotatedDependency(h hVar) {
        if (hasAnnotatedDependency()) {
            for (Class<?> cls : this.dependsOnAnnotation.a()) {
                if (cls.isAssignableFrom(hVar.getClass())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    boolean hasAnnotatedDependency() {
        return this.dependsOnAnnotation != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Collection<io.fabric.sdk.android.services.concurrency.i> getDependencies() {
        return this.initializationTask.getDependencies();
    }
}
