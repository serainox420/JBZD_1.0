package com.mopub.mobileads;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.AdReport;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3.dex */
public class ViewGestureDetector extends GestureDetector {

    /* renamed from: a  reason: collision with root package name */
    private final View f4501a;
    private AdAlertGestureListener b;
    private UserClickListener c;

    /* loaded from: classes3.dex */
    public interface UserClickListener {
        void onResetUserClick();

        void onUserClick();

        boolean wasClicked();
    }

    public ViewGestureDetector(Context context, View view, AdReport adReport) {
        this(context, view, new AdAlertGestureListener(view, adReport));
    }

    private ViewGestureDetector(Context context, View view, AdAlertGestureListener adAlertGestureListener) {
        super(context, adAlertGestureListener);
        this.b = adAlertGestureListener;
        this.f4501a = view;
        setIsLongpressEnabled(false);
    }

    public void sendTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                onTouchEvent(motionEvent);
                return;
            case 1:
                if (this.c != null) {
                    this.c.onUserClick();
                } else {
                    MoPubLog.d("View's onUserClick() is not registered.");
                }
                this.b.a();
                return;
            case 2:
                if (a(motionEvent, this.f4501a)) {
                    onTouchEvent(motionEvent);
                    return;
                } else {
                    a();
                    return;
                }
            default:
                return;
        }
    }

    public void setUserClickListener(UserClickListener userClickListener) {
        this.c = userClickListener;
    }

    void a() {
        this.b.b();
    }

    private boolean a(MotionEvent motionEvent, View view) {
        if (motionEvent == null || view == null) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        return x >= BitmapDescriptorFactory.HUE_RED && x <= ((float) view.getWidth()) && y >= BitmapDescriptorFactory.HUE_RED && y <= ((float) view.getHeight());
    }
}
