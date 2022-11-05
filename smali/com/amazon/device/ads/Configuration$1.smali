.class Lcom/amazon/device/ads/Configuration$1;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/Configuration;->beginFetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/Configuration;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/Configuration;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/amazon/device/ads/Configuration$1;->this$0:Lcom/amazon/device/ads/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration$1;->this$0:Lcom/amazon/device/ads/Configuration;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Configuration;->fetchConfigurationOnBackgroundThread()V

    .line 496
    return-void
.end method
