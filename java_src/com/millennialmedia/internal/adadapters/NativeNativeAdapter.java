package com.millennialmedia.internal.adadapters;

import com.millennialmedia.MMLog;
import com.millennialmedia.internal.adadapters.NativeAdapter;
import com.millennialmedia.internal.adcontrollers.NativeController;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class NativeNativeAdapter extends NativeAdapter {
    private static final String d = NativeNativeAdapter.class.getName();
    private NativeAdapter.NativeAdapterListener e;
    private String f;
    private volatile NativeController n;
    private List<NativeAdapter.TextComponentInfo> g = new ArrayList();
    private List<NativeAdapter.TextComponentInfo> h = new ArrayList();
    private List<NativeAdapter.ImageComponentInfo> i = new ArrayList();
    private List<NativeAdapter.ImageComponentInfo> j = new ArrayList();
    private List<NativeAdapter.TextComponentInfo> k = new ArrayList();
    private List<NativeAdapter.TextComponentInfo> l = new ArrayList();
    private List<NativeAdapter.TextComponentInfo> m = new ArrayList();
    NativeController.NativeControllerListener c = new NativeController.NativeControllerListener() { // from class: com.millennialmedia.internal.adadapters.NativeNativeAdapter.1
        @Override // com.millennialmedia.internal.adcontrollers.NativeController.NativeControllerListener
        public void initSucceeded() {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.adadapters.NativeNativeAdapter.1.1
                @Override // java.lang.Runnable
                public void run() {
                    if (NativeNativeAdapter.this.a()) {
                        NativeNativeAdapter.this.e.initSucceeded();
                    } else {
                        NativeNativeAdapter.this.e.initFailed(new RuntimeException("Component info not loaded"));
                    }
                }
            });
        }

        @Override // com.millennialmedia.internal.adcontrollers.NativeController.NativeControllerListener
        public void initFailed(Throwable th) {
            NativeNativeAdapter.this.e.initFailed(th);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface ImageLoadedCallback {
        void imageLoaded(NativeAdapter.ImageComponentInfo imageComponentInfo);
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public void init(NativeAdapter.NativeAdapterListener nativeAdapterListener) {
        this.e = nativeAdapterListener;
        this.n = new NativeController(this.c);
        this.n.init(this.f4116a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        final CountDownLatch countDownLatch = new CountDownLatch(this.n.assets.size());
        for (int i = 0; i < this.n.assets.size(); i++) {
            final NativeController.Asset asset = this.n.assets.get(i);
            if (asset == null) {
                MMLog.w(d, "Unable to load component, asset is null");
                countDownLatch.countDown();
            } else {
                String num = Integer.toString(asset.id);
                if (num.length() != 9) {
                    MMLog.e(d, "error when processing native asset, asset ID is not the correct length");
                    countDownLatch.countDown();
                } else {
                    this.f = num.substring(0, 3);
                    String substring = num.substring(3, 6);
                    if (substring.equals("100")) {
                        if (asset.type == NativeController.Asset.Type.TITLE) {
                            NativeAdapter.TextComponentInfo textComponentInfo = new NativeAdapter.TextComponentInfo();
                            textComponentInfo.value = asset.title.value;
                            a(textComponentInfo, asset);
                            this.g.add(textComponentInfo);
                        } else {
                            MMLog.w(d, "Unable to load title component, asset not the expected type");
                        }
                        countDownLatch.countDown();
                    } else if (substring.equals("101")) {
                        if (asset.type == NativeController.Asset.Type.DATA) {
                            NativeAdapter.TextComponentInfo textComponentInfo2 = new NativeAdapter.TextComponentInfo();
                            textComponentInfo2.value = asset.data.value;
                            a(textComponentInfo2, asset);
                            this.h.add(textComponentInfo2);
                        } else {
                            MMLog.w(d, "Unable to load body component, asset not the expected type");
                        }
                        countDownLatch.countDown();
                    } else if (substring.equals("102")) {
                        if (asset.type == NativeController.Asset.Type.IMAGE) {
                            a(asset.image.url, new ImageLoadedCallback() { // from class: com.millennialmedia.internal.adadapters.NativeNativeAdapter.2
                                @Override // com.millennialmedia.internal.adadapters.NativeNativeAdapter.ImageLoadedCallback
                                public void imageLoaded(NativeAdapter.ImageComponentInfo imageComponentInfo) {
                                    if (imageComponentInfo != null) {
                                        NativeNativeAdapter.this.a(imageComponentInfo, asset);
                                        NativeNativeAdapter.this.i.add(imageComponentInfo);
                                    }
                                    countDownLatch.countDown();
                                }
                            });
                        } else {
                            MMLog.w(d, "Unable to load icon image component, asset not the expected type");
                            countDownLatch.countDown();
                        }
                    } else if (substring.equals("103")) {
                        if (asset.type == NativeController.Asset.Type.IMAGE) {
                            a(asset.image.url, new ImageLoadedCallback() { // from class: com.millennialmedia.internal.adadapters.NativeNativeAdapter.3
                                @Override // com.millennialmedia.internal.adadapters.NativeNativeAdapter.ImageLoadedCallback
                                public void imageLoaded(NativeAdapter.ImageComponentInfo imageComponentInfo) {
                                    if (imageComponentInfo != null) {
                                        NativeNativeAdapter.this.a(imageComponentInfo, asset);
                                        NativeNativeAdapter.this.j.add(imageComponentInfo);
                                    }
                                    countDownLatch.countDown();
                                }
                            });
                        } else {
                            MMLog.w(d, "Unable to load main image component, asset not the expected type");
                            countDownLatch.countDown();
                        }
                    } else if (substring.equals("104")) {
                        if (asset.type == NativeController.Asset.Type.DATA) {
                            NativeAdapter.TextComponentInfo textComponentInfo3 = new NativeAdapter.TextComponentInfo();
                            textComponentInfo3.value = asset.data.value;
                            a(textComponentInfo3, asset);
                            this.k.add(textComponentInfo3);
                        } else {
                            MMLog.w(d, "Unable to load call to action text component, asset not the expected type");
                        }
                        countDownLatch.countDown();
                    } else if (substring.equals("105")) {
                        if (asset.type == NativeController.Asset.Type.DATA) {
                            NativeAdapter.TextComponentInfo textComponentInfo4 = new NativeAdapter.TextComponentInfo();
                            textComponentInfo4.value = asset.data.value;
                            a(textComponentInfo4, asset);
                            this.l.add(textComponentInfo4);
                        } else {
                            MMLog.w(d, "Unable to load rating component, asset not the expected type");
                        }
                        countDownLatch.countDown();
                    } else if (substring.equals("106")) {
                        if (asset.type == NativeController.Asset.Type.DATA) {
                            NativeAdapter.TextComponentInfo textComponentInfo5 = new NativeAdapter.TextComponentInfo();
                            textComponentInfo5.value = asset.data.value;
                            a(textComponentInfo5, asset);
                            this.m.add(textComponentInfo5);
                        } else {
                            MMLog.w(d, "Unable to load disclaimer component, asset not the expected type");
                        }
                        countDownLatch.countDown();
                    } else {
                        MMLog.e(d, "Unable to load component from asset, asset type is unrecognized <" + substring + ">");
                        countDownLatch.countDown();
                    }
                }
            }
        }
        try {
            return countDownLatch.await(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            MMLog.e(d, "Error occurred when loading native component info");
            return false;
        }
    }

    private void a(String str, ImageLoadedCallback imageLoadedCallback) {
        HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(str);
        if (bitmapFromGetRequest.code == 200 && bitmapFromGetRequest.bitmap != null) {
            NativeAdapter.ImageComponentInfo imageComponentInfo = new NativeAdapter.ImageComponentInfo();
            imageComponentInfo.bitmapUrl = str;
            imageComponentInfo.bitmap = bitmapFromGetRequest.bitmap;
            imageComponentInfo.width = bitmapFromGetRequest.bitmap.getWidth();
            imageComponentInfo.height = bitmapFromGetRequest.bitmap.getHeight();
            imageLoadedCallback.imageLoaded(imageComponentInfo);
            return;
        }
        imageLoadedCallback.imageLoaded(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(NativeAdapter.ComponentInfo componentInfo, NativeController.Asset asset) {
        if (asset.link != null) {
            componentInfo.clickUrl = asset.link.url;
            componentInfo.clickTrackerUrls = asset.link.clickTrackerUrls;
        } else if (this.n.link != null) {
            componentInfo.clickUrl = this.n.link.url;
            componentInfo.clickTrackerUrls = this.n.link.clickTrackerUrls;
        }
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public String getType() {
        return this.f;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getTitleList() {
        return this.g;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getBodyList() {
        return this.h;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.ImageComponentInfo> getIconImageList() {
        return this.i;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.ImageComponentInfo> getMainImageList() {
        return this.j;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getCallToActionList() {
        return this.k;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getRatingList() {
        return this.l;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getDisclaimerList() {
        return this.m;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public String getDefaultAction() {
        if (this.n.link != null) {
            return this.n.link.url;
        }
        return null;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<String> getImpressionTrackers() {
        return this.n.impTrackers != null ? this.n.impTrackers : Collections.emptyList();
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<String> getClickTrackers() {
        return this.n.link != null ? this.n.link.clickTrackerUrls : Collections.emptyList();
    }
}
