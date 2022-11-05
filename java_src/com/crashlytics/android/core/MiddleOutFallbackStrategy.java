package com.crashlytics.android.core;
/* loaded from: classes.dex */
class MiddleOutFallbackStrategy implements StackTraceTrimmingStrategy {
    private final int maximumStackSize;
    private final MiddleOutStrategy middleOutStrategy;
    private final StackTraceTrimmingStrategy[] trimmingStrategies;

    public MiddleOutFallbackStrategy(int i, StackTraceTrimmingStrategy... stackTraceTrimmingStrategyArr) {
        this.maximumStackSize = i;
        this.trimmingStrategies = stackTraceTrimmingStrategyArr;
        this.middleOutStrategy = new MiddleOutStrategy(i);
    }

    @Override // com.crashlytics.android.core.StackTraceTrimmingStrategy
    public StackTraceElement[] getTrimmedStackTrace(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length > this.maximumStackSize) {
            StackTraceTrimmingStrategy[] stackTraceTrimmingStrategyArr = this.trimmingStrategies;
            int length = stackTraceTrimmingStrategyArr.length;
            int i = 0;
            StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
            while (i < length) {
                StackTraceTrimmingStrategy stackTraceTrimmingStrategy = stackTraceTrimmingStrategyArr[i];
                if (stackTraceElementArr2.length <= this.maximumStackSize) {
                    break;
                }
                i++;
                stackTraceElementArr2 = stackTraceTrimmingStrategy.getTrimmedStackTrace(stackTraceElementArr);
            }
            if (stackTraceElementArr2.length > this.maximumStackSize) {
                stackTraceElementArr2 = this.middleOutStrategy.getTrimmedStackTrace(stackTraceElementArr2);
            }
            return stackTraceElementArr2;
        }
        return stackTraceElementArr;
    }
}
