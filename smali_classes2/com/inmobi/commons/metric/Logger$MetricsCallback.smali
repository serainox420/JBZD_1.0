.class public interface abstract Lcom/inmobi/commons/metric/Logger$MetricsCallback;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/metric/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MetricsCallback"
.end annotation


# virtual methods
.method public abstract dataCollected(Lcom/inmobi/commons/metric/EventLog;)V
.end method

.method public abstract movedMetricDataToFileMemory(Ljava/lang/String;)V
.end method

.method public abstract reportingFailure()V
.end method

.method public abstract reportingStartedWithRequest(Ljava/lang/String;)V
.end method

.method public abstract reportingSuccess()V
.end method
