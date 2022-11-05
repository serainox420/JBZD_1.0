.class final Lcom/video/adsdk/internal/ADRequest$1;
.super Ljava/lang/Object;
.source "ADRequest.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/DeviceIdBundleReadyAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADRequest;->createRequest(Landroid/content/Context;Ljava/lang/String;Lcom/video/adsdk/interfaces/ADRequestPreparedAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$publisherId:Ljava/lang/String;

.field final synthetic val$requestPreparedAction:Lcom/video/adsdk/interfaces/ADRequestPreparedAction;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/video/adsdk/interfaces/ADRequestPreparedAction;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/video/adsdk/internal/ADRequest$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/video/adsdk/internal/ADRequest$1;->val$publisherId:Ljava/lang/String;

    iput-object p3, p0, Lcom/video/adsdk/internal/ADRequest$1;->val$requestPreparedAction:Lcom/video/adsdk/interfaces/ADRequestPreparedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceIdBundleReady(Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/video/adsdk/internal/ADRequest;

    iget-object v1, p0, Lcom/video/adsdk/internal/ADRequest$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/video/adsdk/internal/ADRequest$1;->val$publisherId:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/video/adsdk/internal/ADRequest;-><init>(Landroid/content/Context;Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/video/adsdk/internal/ADRequest$1;->val$requestPreparedAction:Lcom/video/adsdk/interfaces/ADRequestPreparedAction;

    invoke-interface {v1, v0}, Lcom/video/adsdk/interfaces/ADRequestPreparedAction;->onADRequestPrepared(Lcom/video/adsdk/internal/ADRequest;)V

    .line 88
    return-void
.end method
