.class Lcom/amazon/device/ads/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# instance fields
.field private final androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/AndroidBuildInfo;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/ViewUtils;-><init>(Lcom/amazon/device/ads/AndroidBuildInfo;)V

    .line 19
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AndroidBuildInfo;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/device/ads/ViewUtils;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    .line 23
    return-void
.end method


# virtual methods
.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/ViewUtils;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 45
    :goto_0
    const/4 v0, 0x1

    .line 47
    :goto_1
    return v0

    .line 43
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
