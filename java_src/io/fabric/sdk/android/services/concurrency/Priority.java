package io.fabric.sdk.android.services.concurrency;
/* loaded from: classes3.dex */
public enum Priority {
    LOW,
    NORMAL,
    HIGH,
    IMMEDIATE;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <Y> int a(f fVar, Y y) {
        Priority priority;
        if (y instanceof f) {
            priority = ((f) y).getPriority();
        } else {
            priority = NORMAL;
        }
        return priority.ordinal() - fVar.getPriority().ordinal();
    }
}
