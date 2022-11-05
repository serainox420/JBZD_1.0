package android.support.v4.app;

import android.os.Bundle;
/* compiled from: LoaderManager.java */
/* loaded from: classes.dex */
public abstract class ac {

    /* compiled from: LoaderManager.java */
    /* loaded from: classes.dex */
    public interface a<D> {
        android.support.v4.content.k<D> onCreateLoader(int i, Bundle bundle);

        void onLoadFinished(android.support.v4.content.k<D> kVar, D d);

        void onLoaderReset(android.support.v4.content.k<D> kVar);
    }

    public abstract <D> android.support.v4.content.k<D> a(int i, Bundle bundle, a<D> aVar);

    public boolean a() {
        return false;
    }
}
