package com.madsdk.javascript;

import com.madsdk.CalendarEvent;
/* loaded from: classes2.dex */
public interface MraidEventsListener {
    void close();

    void createCalendarEvent(CalendarEvent calendarEvent);

    void expand();

    PositionProperties getCurrentPosition();

    PositionProperties getDefaultPosition();

    ExpandProperties getExpandProperties();

    SizeProperties getMaxSize();

    OrientationProperties getOrientationProperties();

    String getPlacementType();

    ResizeProperties getResizeProperties();

    SizeProperties getScreenSize();

    String getState();

    boolean isViewable();

    void open(String str);

    void playVideo(String str);

    void resize();

    void setExpandProperties(ExpandProperties expandProperties);

    void setOrientationProperties(OrientationProperties orientationProperties);

    void setResizeProperties(ResizeProperties resizeProperties);

    void storePicture(String str);

    void useCustomClose(boolean z);
}
