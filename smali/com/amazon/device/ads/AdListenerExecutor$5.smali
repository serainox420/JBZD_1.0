.class Lcom/amazon/device/ads/AdListenerExecutor$5;
.super Ljava/lang/Object;
.source "AdListenerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdListenerExecutor;->onAdDismissed(Lcom/amazon/device/ads/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdListenerExecutor;

.field final synthetic val$ad:Lcom/amazon/device/ads/Ad;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor$5;->this$0:Lcom/amazon/device/ads/AdListenerExecutor;

    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutor$5;->val$ad:Lcom/amazon/device/ads/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor$5;->this$0:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdListenerExecutor;->getAdListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdListenerExecutor$5;->val$ad:Lcom/amazon/device/ads/Ad;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/AdListener;->onAdDismissed(Lcom/amazon/device/ads/Ad;)V

    .line 106
    return-void
.end method
