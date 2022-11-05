.class Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory;
.super Ljava/lang/Object;
.source "ViewabilityObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory$AmazonOnWindowFocusChangeListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    return-void
.end method


# virtual methods
.method public buildOnWindowFocusChangeListener(Lcom/amazon/device/ads/ViewabilityObserver;)Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    .locals 1

    .prologue
    .line 392
    new-instance v0, Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory$AmazonOnWindowFocusChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory$AmazonOnWindowFocusChangeListener;-><init>(Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory;Lcom/amazon/device/ads/ViewabilityObserver;)V

    return-object v0
.end method
