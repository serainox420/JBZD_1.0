.class Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;
.super Ljava/lang/Object;
.source "AndroidTargetUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AndroidTargetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoneycombTargetUtils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disableHardwareAcceleration(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 292
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 293
    return-void
.end method

.method protected static enableHardwareAcceleration(Landroid/view/Window;)V
    .locals 1

    .prologue
    const/high16 v0, 0x1000000

    .line 325
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 327
    return-void
.end method

.method protected static final varargs executeAsyncTaskWithThreadPooling(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 302
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 303
    return-void
.end method

.method protected static hideActionBar(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 316
    :cond_0
    return-void
.end method

.method protected static removeJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 321
    return-void
.end method
