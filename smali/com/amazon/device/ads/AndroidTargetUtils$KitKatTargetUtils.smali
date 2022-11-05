.class Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils;
.super Ljava/lang/Object;
.source "AndroidTargetUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AndroidTargetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KitKatTargetUtils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableWebViewDebugging(Z)V
    .locals 1

    .prologue
    .line 396
    new-instance v0, Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils$1;-><init>(Z)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 404
    return-void
.end method
