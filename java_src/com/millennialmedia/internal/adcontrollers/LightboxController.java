package com.millennialmedia.internal.adcontrollers;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.ViewUtils;
import com.millennialmedia.internal.video.LightboxView;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class LightboxController extends AdController {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4129a = LightboxController.class.getSimpleName();
    private MMWebView b;
    private LightboxView c;
    private LightboxControllerListener d;
    private LightboxAd e;
    private volatile ViewGroup f;

    /* loaded from: classes3.dex */
    public interface LightboxControllerListener {
        void attachFailed();

        void attachSucceeded();

        void initFailed();

        void initSucceeded();

        void onAdLeftApplication();

        void onClicked();

        void onCollapsed();

        void onExpanded();
    }

    /* loaded from: classes3.dex */
    public enum TrackableEvent {
        loaded,
        start,
        firstQuartile,
        midpoint,
        thirdQuartile,
        complete,
        videoExpand,
        videoCollapse,
        videoClose
    }

    /* loaded from: classes3.dex */
    public static class LightboxAd {
        public Fullscreen fullscreen;
        public Inline inline;
        public Video video;

        LightboxAd(Inline inline, Video video, Fullscreen fullscreen) {
            this.inline = inline;
            this.video = video;
            this.fullscreen = fullscreen;
        }
    }

    /* loaded from: classes3.dex */
    public static class Inline {
        public String content;
        public List<TrackingEvent> trackingEvents;

        Inline(String str, List<TrackingEvent> list) {
            this.content = str;
            this.trackingEvents = list;
        }
    }

    /* loaded from: classes3.dex */
    public static class Video {
        public Map<TrackableEvent, List<TrackingEvent>> trackingEvents;
        public String uri;

        Video(String str, Map<TrackableEvent, List<TrackingEvent>> map) {
            this.uri = str;
            this.trackingEvents = map;
        }
    }

    /* loaded from: classes3.dex */
    public static class Fullscreen {
        public String imageUri;
        public List<TrackingEvent> trackingEvents;
        public String webContent;

        Fullscreen(String str, String str2, List<TrackingEvent> list) {
            this.webContent = str;
            this.imageUri = str2;
            this.trackingEvents = list;
        }
    }

    /* loaded from: classes3.dex */
    public static class TrackingEvent {
        public TrackableEvent event;
        public String uri;

        TrackingEvent(TrackableEvent trackableEvent, String str) {
            this.event = trackableEvent;
            this.uri = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LightboxController() {
    }

    public LightboxController(LightboxControllerListener lightboxControllerListener) {
        this.d = lightboxControllerListener;
    }

    public void init(Context context, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject(AdDatabaseHelper.TABLE_AD);
            JSONObject jSONObject2 = jSONObject.getJSONObject("inline");
            Inline inline = new Inline(jSONObject2.getString("content"), a(TrackableEvent.loaded, jSONObject2.getJSONArray("loadTracking")));
            JSONObject jSONObject3 = jSONObject.getJSONObject(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
            HashMap hashMap = new HashMap();
            hashMap.put(TrackableEvent.start, a(TrackableEvent.start, jSONObject3.getJSONArray(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START)));
            hashMap.put(TrackableEvent.firstQuartile, a(TrackableEvent.start, jSONObject3.getJSONArray(SASNativeVideoAdElement.TRACKING_EVENT_NAME_FIRST_QUARTILE)));
            hashMap.put(TrackableEvent.midpoint, a(TrackableEvent.start, jSONObject3.getJSONArray(SASNativeVideoAdElement.TRACKING_EVENT_NAME_MIDPOINT)));
            hashMap.put(TrackableEvent.thirdQuartile, a(TrackableEvent.start, jSONObject3.getJSONArray(SASNativeVideoAdElement.TRACKING_EVENT_NAME_THIRD_QUARTILE)));
            hashMap.put(TrackableEvent.complete, a(TrackableEvent.start, jSONObject3.getJSONArray(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE)));
            hashMap.put(TrackableEvent.videoExpand, a(TrackableEvent.start, jSONObject3.getJSONArray("videoExpand")));
            hashMap.put(TrackableEvent.videoCollapse, a(TrackableEvent.start, jSONObject3.getJSONArray("videoCollapse")));
            hashMap.put(TrackableEvent.videoClose, a(TrackableEvent.start, jSONObject3.getJSONArray("videoClose")));
            Video video = new Video(jSONObject3.getString(ShareConstants.MEDIA_URI), hashMap);
            JSONObject jSONObject4 = jSONObject.getJSONObject("fullscreen");
            this.e = new LightboxAd(inline, video, new Fullscreen(jSONObject4.getString("webContent"), jSONObject4.getString("imageUri"), a(TrackableEvent.loaded, jSONObject4.getJSONArray("loadTracking"))));
            ThreadUtils.runOnUiThread(new AnonymousClass1(context));
        } catch (JSONException e) {
            MMLog.e(f4129a, "Lightbox ad content is malformed.", e);
            this.d.initFailed();
        }
    }

    /* renamed from: com.millennialmedia.internal.adcontrollers.LightboxController$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f4130a;

        AnonymousClass1(Context context) {
            this.f4130a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            LightboxController.this.c = new LightboxView(this.f4130a, LightboxController.this.e, new LightboxView.LightboxViewListener() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.1.1
                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onPrepared() {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(LightboxController.f4129a, "Lightbox prepared.");
                    }
                    ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.1.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (LightboxController.this.f != null && LightboxController.this.c.getParent() == null) {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.d(LightboxController.f4129a, "Attaching Lightbox in onPrepared.");
                                }
                                LightboxController.this.b();
                            }
                        }
                    });
                }

                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onReadyToStart() {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(LightboxController.f4129a, "lightbox is ready to start playback");
                    }
                    LightboxController.this.c.start();
                }

                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onFailed() {
                }

                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onExpanded() {
                    LightboxController.this.d.onExpanded();
                }

                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onCollapsed() {
                    LightboxController.this.d.onCollapsed();
                }

                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onClicked() {
                    LightboxController.this.d.onClicked();
                }

                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onAdLeftApplication() {
                    LightboxController.this.d.onAdLeftApplication();
                }
            });
            LightboxController.this.b = new MMWebView(this.f4130a, MMWebView.MMWebViewOptions.getDefault(), LightboxController.this.a(LightboxController.this.d));
            LightboxController.this.b.setContent(LightboxController.this.e.inline.content);
            LightboxController.this.b.addOnAttachStateChangeListener(LightboxController.this.a(LightboxController.this.c));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MMWebView.MMWebViewListener a(final LightboxControllerListener lightboxControllerListener) {
        return new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.2
            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onLoaded() {
                lightboxControllerListener.initSucceeded();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onFailed() {
                lightboxControllerListener.initFailed();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onReady() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onClicked() {
                lightboxControllerListener.onClicked();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onAdLeftApplication() {
                lightboxControllerListener.onAdLeftApplication();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean expand(SizableStateManager.ExpandParams expandParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean resize(SizableStateManager.ResizeParams resizeParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void close() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void showCloseIndicator(boolean z) {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void setOrientation(int i) {
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View.OnAttachStateChangeListener a(final LightboxView lightboxView) {
        return new View.OnAttachStateChangeListener() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.3
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                lightboxView.animateToGone(false);
            }
        };
    }

    private List<TrackingEvent> a(TrackableEvent trackableEvent, JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(new TrackingEvent(trackableEvent, jSONArray.getString(i)));
        }
        return arrayList;
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public boolean canHandleContent(String str) {
        try {
            return "lightbox".equalsIgnoreCase(new JSONObject(str).getString("mmAdFormat"));
        } catch (JSONException e) {
            return false;
        }
    }

    public void attach(final ViewGroup viewGroup, final ViewGroup.LayoutParams layoutParams) {
        if (viewGroup == null) {
            this.d.attachFailed();
            return;
        }
        this.f = viewGroup;
        if (!(viewGroup.getContext() instanceof Activity)) {
            this.d.attachFailed();
        } else {
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.4
                @Override // java.lang.Runnable
                public void run() {
                    ViewUtils.attachView(viewGroup, LightboxController.this.b, layoutParams);
                    if (LightboxController.this.c.isPrepared() && LightboxController.this.c.getParent() == null) {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.d(LightboxController.f4129a, "attaching lightbox is attach.");
                        }
                        LightboxController.this.b();
                    }
                    LightboxController.this.d.attachSucceeded();
                    LightboxController.this.a(LightboxController.this.e.inline.trackingEvents);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4129a, "attaching lightbox view");
        }
        Display defaultDisplay = ((WindowManager) this.f.getContext().getSystemService("window")).getDefaultDisplay();
        final Point point = new Point();
        defaultDisplay.getSize(point);
        Point defaultPosition = this.c.getDefaultPosition();
        Point defaultDimensions = this.c.getDefaultDimensions();
        this.c.setTranslationX(defaultPosition.x);
        this.c.setTranslationY(point.y);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(defaultDimensions.x, defaultDimensions.y);
        ViewGroup decorView = ViewUtils.getDecorView(this.f);
        if (decorView != null) {
            ViewUtils.attachView(decorView, this.c, layoutParams);
            final int i = point.y - defaultPosition.y;
            Animation animation = new Animation() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.5
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    LightboxController.this.c.setTranslationY(f == 1.0f ? point.y - i : point.y - (i * f));
                }
            };
            animation.setDuration(point.y / this.f.getContext().getResources().getDisplayMetrics().density);
            this.c.startAnimation(animation);
            return;
        }
        MMLog.e(f4129a, "Unable to determine the root view; cannot attach Lightbox view.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final List<TrackingEvent> list) {
        if (list != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.6
                @Override // java.lang.Runnable
                public void run() {
                    for (TrackingEvent trackingEvent : list) {
                        if (trackingEvent != null && !Utils.isEmpty(trackingEvent.uri)) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(LightboxController.f4129a, "Firing tracking url = " + trackingEvent.uri);
                            }
                            HttpUtils.getContentFromGetRequest(trackingEvent.uri);
                        }
                    }
                }
            });
        }
    }
}
