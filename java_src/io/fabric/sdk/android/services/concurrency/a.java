package io.fabric.sdk.android.services.concurrency;

import java.util.Collection;
/* compiled from: Dependency.java */
/* loaded from: classes3.dex */
public interface a<T> {
    void addDependency(T t);

    boolean areDependenciesMet();

    Collection<T> getDependencies();
}
