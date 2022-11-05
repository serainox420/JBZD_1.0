.class Lcom/amazon/device/ads/ViewManager$1;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/ViewManager;->destroyWebViews([Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/ViewManager;

.field final synthetic val$webViews:[Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/ViewManager;[Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/amazon/device/ads/ViewManager$1;->this$0:Lcom/amazon/device/ads/ViewManager;

    iput-object p2, p0, Lcom/amazon/device/ads/ViewManager$1;->val$webViews:[Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 525
    iget-object v3, p0, Lcom/amazon/device/ads/ViewManager$1;->val$webViews:[Landroid/webkit/WebView;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 527
    if-eqz v5, :cond_1

    .line 529
    invoke-virtual {v5}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v5}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 535
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 541
    iget-object v5, p0, Lcom/amazon/device/ads/ViewManager$1;->this$0:Lcom/amazon/device/ads/ViewManager;

    invoke-static {v5}, Lcom/amazon/device/ads/ViewManager;->access$100(Lcom/amazon/device/ads/ViewManager;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v5

    const-string v6, "Caught an IllegalArgumentException while destroying a WebView: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 545
    :cond_2
    return-void
.end method
