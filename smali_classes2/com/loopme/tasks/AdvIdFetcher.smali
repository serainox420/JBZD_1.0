.class public Lcom/loopme/tasks/AdvIdFetcher;
.super Ljava/lang/Object;
.source "AdvIdFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/tasks/AdvIdFetcher$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAdvertisingId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/loopme/tasks/AdvIdFetcher$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/loopme/tasks/AdvIdFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/tasks/AdvIdFetcher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/loopme/tasks/AdvIdFetcher$Listener;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/loopme/tasks/AdvIdFetcher;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/loopme/tasks/AdvIdFetcher;->mListener:Lcom/loopme/tasks/AdvIdFetcher$Listener;

    .line 25
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/loopme/tasks/AdvIdFetcher;->mAdvertisingId:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/loopme/tasks/AdvIdFetcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/loopme/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/loopme/AdvertisingIdClient$AdInfo;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/loopme/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loopme/tasks/AdvIdFetcher;->mAdvertisingId:Ljava/lang/String;

    .line 34
    invoke-virtual {v1}, Lcom/loopme/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/loopme/tasks/AdvIdFetcher;->mListener:Lcom/loopme/tasks/AdvIdFetcher$Listener;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/loopme/tasks/AdvIdFetcher;->mListener:Lcom/loopme/tasks/AdvIdFetcher$Listener;

    iget-object v2, p0, Lcom/loopme/tasks/AdvIdFetcher;->mAdvertisingId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/loopme/tasks/AdvIdFetcher$Listener;->onComplete(Ljava/lang/String;Z)V

    .line 42
    :cond_0
    return-void

    .line 35
    :catch_0
    move-exception v1

    .line 36
    sget-object v2, Lcom/loopme/tasks/AdvIdFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
