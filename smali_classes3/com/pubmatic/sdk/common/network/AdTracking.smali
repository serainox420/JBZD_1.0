.class public Lcom/pubmatic/sdk/common/network/AdTracking;
.super Ljava/lang/Object;
.source "AdTracking.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invokeTrackingUrl(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pubmatic/sdk/common/network/AdTracking$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/pubmatic/sdk/common/network/AdTracking$1;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    return-void
.end method

.method public static invokeTrackingUrl(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 86
    invoke-static {p0, v2, p2}, Lcom/pubmatic/sdk/common/network/AdTracking;->invokeTrackingUrl(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method
