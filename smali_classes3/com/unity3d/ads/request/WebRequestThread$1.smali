.class final Lcom/unity3d/ads/request/WebRequestThread$1;
.super Ljava/lang/Object;
.source "WebRequestThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/request/WebRequestThread;->resolve(Ljava/lang/String;Lcom/unity3d/ads/request/IResolveHostListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$listener:Lcom/unity3d/ads/request/IResolveHostListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/request/IResolveHostListener;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/unity3d/ads/request/WebRequestThread$1;->val$host:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/request/WebRequestThread$1;->val$listener:Lcom/unity3d/ads/request/IResolveHostListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 112
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    .line 113
    const/4 v1, 0x0

    .line 115
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/unity3d/ads/request/WebRequestThread$1$1;

    invoke-direct {v3, p0, v2}, Lcom/unity3d/ads/request/WebRequestThread$1$1;-><init>(Lcom/unity3d/ads/request/WebRequestThread$1;Landroid/os/ConditionVariable;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :goto_0
    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    .line 137
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 139
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequestThread$1;->val$listener:Lcom/unity3d/ads/request/IResolveHostListener;

    iget-object v1, p0, Lcom/unity3d/ads/request/WebRequestThread$1;->val$host:Ljava/lang/String;

    sget-object v2, Lcom/unity3d/ads/request/ResolveHostError;->TIMEOUT:Lcom/unity3d/ads/request/ResolveHostError;

    const-string v3, "Timeout"

    invoke-interface {v0, v1, v2, v3}, Lcom/unity3d/ads/request/IResolveHostListener;->onFailed(Ljava/lang/String;Lcom/unity3d/ads/request/ResolveHostError;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 132
    :goto_1
    const-string v3, "Exception while resolving host"

    invoke-static {v3, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 133
    iget-object v3, p0, Lcom/unity3d/ads/request/WebRequestThread$1;->val$listener:Lcom/unity3d/ads/request/IResolveHostListener;

    iget-object v4, p0, Lcom/unity3d/ads/request/WebRequestThread$1;->val$host:Ljava/lang/String;

    sget-object v5, Lcom/unity3d/ads/request/ResolveHostError;->UNEXPECTED_EXCEPTION:Lcom/unity3d/ads/request/ResolveHostError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v5, v1}, Lcom/unity3d/ads/request/IResolveHostListener;->onFailed(Ljava/lang/String;Lcom/unity3d/ads/request/ResolveHostError;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :catch_1
    move-exception v1

    goto :goto_1
.end method
