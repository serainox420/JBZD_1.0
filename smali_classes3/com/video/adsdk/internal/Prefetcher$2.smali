.class Lcom/video/adsdk/internal/Prefetcher$2;
.super Ljava/lang/Object;
.source "Prefetcher.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/WifiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/Prefetcher;->setWifiMonitor(Lcom/video/adsdk/interfaces/WifiMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/Prefetcher;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/Prefetcher;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/video/adsdk/internal/Prefetcher$2;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWifiActivated()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher$2;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/video/adsdk/internal/Prefetcher;->access$402(Lcom/video/adsdk/internal/Prefetcher;Z)Z

    .line 101
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher$2;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/Prefetcher;->startPrefetching()V

    .line 102
    return-void
.end method

.method public onWifiDeactivated()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher$2;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/video/adsdk/internal/Prefetcher;->access$402(Lcom/video/adsdk/internal/Prefetcher;Z)Z

    .line 95
    iget-object v0, p0, Lcom/video/adsdk/internal/Prefetcher$2;->this$0:Lcom/video/adsdk/internal/Prefetcher;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/Prefetcher;->stopPrefetching()V

    .line 96
    return-void
.end method
