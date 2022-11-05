.class public interface abstract Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;
.super Ljava/lang/Object;
.source "RetryMechanism.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/cache/RetryMechanism;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RetryRunnable"
.end annotation


# virtual methods
.method public abstract completed()V
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
