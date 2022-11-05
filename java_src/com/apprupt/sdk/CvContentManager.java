package com.apprupt.sdk;

import android.content.Context;
import java.util.HashMap;
/* loaded from: classes.dex */
public class CvContentManager {

    /* renamed from: a  reason: collision with root package name */
    private ContentProvider f1776a;
    private HashMap<String, ContentProvider> b = new HashMap<>();

    /* loaded from: classes.dex */
    public interface ContentListener {
        void a(CvContentResponse cvContentResponse);
    }

    /* loaded from: classes.dex */
    public interface ContentLoader {
    }

    /* loaded from: classes.dex */
    public interface ContentProvider {
        ContentLoader a(Context context, CvContentOptions cvContentOptions, ContentListener contentListener);
    }

    /* loaded from: classes.dex */
    public interface PreloaderListener {
        void onPreloaderFinish(CvPreloaderResponse cvPreloaderResponse);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvContentManager() {
        a();
    }

    public void a() {
        a((ContentProvider) null);
    }

    public synchronized void a(ContentProvider contentProvider) {
        if (contentProvider == null) {
            contentProvider = new CvDefaultContentProvider();
        }
        this.f1776a = contentProvider;
    }

    private ContentProvider a(String str) {
        return this.b.containsKey(str) ? this.b.get(str) : this.f1776a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContentLoader a(Context context, CvContentOptions cvContentOptions, ContentListener contentListener) {
        AFP2.a(context);
        return a(cvContentOptions.f1778a).a(context, cvContentOptions, contentListener);
    }

    /* renamed from: com.apprupt.sdk.CvContentManager$1  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PreloaderListener f1777a;

        @Override // java.lang.Runnable
        public void run() {
            this.f1777a.onPreloaderFinish(new CvPreloaderResponse());
        }
    }
}
