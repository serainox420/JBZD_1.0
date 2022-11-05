package com.amazon.device.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
class AppEvent {
    private final String eventName;
    private final HashMap<String, String> properties;
    private final long timestamp;

    protected AppEvent(String str) {
        this(str, -1L);
    }

    public AppEvent(String str, long j) {
        this.eventName = str;
        this.timestamp = j;
        this.properties = new HashMap<>();
    }

    public static AppEvent createAppEventWithTimestamp(AppEvent appEvent, long j) {
        return new AppEvent(appEvent.eventName, j);
    }

    public String getEventName() {
        return this.eventName;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public AppEvent setProperty(String str, String str2) {
        this.properties.put(str, str2);
        return this;
    }

    public String getProperty(String str) {
        return this.properties.get(str);
    }

    public Set<Map.Entry<String, String>> getPropertyEntries() {
        return this.properties.entrySet();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(65);
        sb.append("Application Event {Name: ");
        sb.append(this.eventName);
        sb.append(", Timestamp: ");
        sb.append(this.timestamp);
        for (String str : this.properties.keySet()) {
            sb.append(", ");
            sb.append(str);
            sb.append(": ");
            sb.append(this.properties.get(str));
        }
        sb.append("}");
        return sb.toString();
    }
}
