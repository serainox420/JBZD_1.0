.class public Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker;
.super Ljava/lang/Object;
.source "DefaultAdvertisingIdChecker.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/checker/AdvertisingIdChecker;


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public requestAdvertisingId(Lcom/video/adsdk/interfaces/AdvertisingIdRequestCompletedAction;)V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker$1;

    invoke-direct {v1, p0, p1}, Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker$1;-><init>(Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker;Lcom/video/adsdk/interfaces/AdvertisingIdRequestCompletedAction;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method
