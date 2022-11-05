package com.madsdk.javascript;

import android.util.Log;
import com.google.gson.d;
import com.madsdk.CalendarEvent;
/* loaded from: classes.dex */
public class JavascriptInterface {
    private MraidEventsListener mraidEventsListener;

    @android.webkit.JavascriptInterface
    public boolean isViewable() {
        return this.mraidEventsListener.isViewable();
    }

    @android.webkit.JavascriptInterface
    public String getState() {
        return this.mraidEventsListener.getState();
    }

    @android.webkit.JavascriptInterface
    public void open(String str) {
        this.mraidEventsListener.open(str);
    }

    @android.webkit.JavascriptInterface
    public void useCustomClose(boolean z) {
        this.mraidEventsListener.useCustomClose(z);
    }

    @android.webkit.JavascriptInterface
    public void close() {
        this.mraidEventsListener.close();
    }

    @android.webkit.JavascriptInterface
    public void expand() {
        this.mraidEventsListener.expand();
    }

    @android.webkit.JavascriptInterface
    public void resize() {
        this.mraidEventsListener.resize();
    }

    @android.webkit.JavascriptInterface
    public void setExpandProperties(String str) {
        this.mraidEventsListener.setExpandProperties((ExpandProperties) new d().a(str, (Class<Object>) ExpandProperties.class));
    }

    @android.webkit.JavascriptInterface
    public void setResizeProperties(String str) {
        this.mraidEventsListener.setResizeProperties((ResizeProperties) new d().a(str, (Class<Object>) ResizeProperties.class));
    }

    @android.webkit.JavascriptInterface
    public void setOrientationProperties(String str) {
        this.mraidEventsListener.setOrientationProperties((OrientationProperties) new d().a(str, (Class<Object>) OrientationProperties.class));
    }

    @android.webkit.JavascriptInterface
    public void log(String str) {
        Log.d(toString(), str);
    }

    public void setMraidEventsListener(MraidEventsListener mraidEventsListener) {
        this.mraidEventsListener = mraidEventsListener;
    }

    @android.webkit.JavascriptInterface
    public String getCurrentPosition() {
        return new d().a(this.mraidEventsListener.getCurrentPosition());
    }

    @android.webkit.JavascriptInterface
    public String getDefaultPosition() {
        return new d().a(this.mraidEventsListener.getDefaultPosition());
    }

    @android.webkit.JavascriptInterface
    public String getScreenSize() {
        return new d().a(this.mraidEventsListener.getScreenSize());
    }

    @android.webkit.JavascriptInterface
    public String getMaxSize() {
        return new d().a(this.mraidEventsListener.getMaxSize());
    }

    @android.webkit.JavascriptInterface
    public String getExpandProperties() {
        return new d().a(this.mraidEventsListener.getExpandProperties());
    }

    @android.webkit.JavascriptInterface
    public String getResizeProperties() {
        return new d().a(this.mraidEventsListener.getResizeProperties());
    }

    @android.webkit.JavascriptInterface
    public String getPlacementType() {
        return this.mraidEventsListener.getPlacementType();
    }

    @android.webkit.JavascriptInterface
    public String getOrientationProperties() {
        return new d().a(this.mraidEventsListener.getOrientationProperties());
    }

    @android.webkit.JavascriptInterface
    public void storePicture(String str) {
        this.mraidEventsListener.storePicture(str);
    }

    @android.webkit.JavascriptInterface
    public void playVideo(String str) {
        this.mraidEventsListener.playVideo(str);
    }

    @android.webkit.JavascriptInterface
    public void createCalendarEvent(String str) {
        this.mraidEventsListener.createCalendarEvent((CalendarEvent) new d().a(str, (Class<Object>) CalendarEvent.class));
    }
}
