.class Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory$AmazonOnWindowFocusChangeListener;
.super Ljava/lang/Object;
.source "ViewabilityObserver.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmazonOnWindowFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory;

.field private final viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory;Lcom/amazon/device/ads/ViewabilityObserver;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory$AmazonOnWindowFocusChangeListener;->this$0:Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory$AmazonOnWindowFocusChangeListener;->viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;

    .line 402
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory$AmazonOnWindowFocusChangeListener;->viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/ViewabilityObserver;->fireViewableEvent(Z)V

    .line 408
    return-void
.end method
