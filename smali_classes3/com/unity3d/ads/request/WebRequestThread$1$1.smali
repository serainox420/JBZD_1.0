.class Lcom/unity3d/ads/request/WebRequestThread$1$1;
.super Ljava/lang/Object;
.source "WebRequestThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/request/WebRequestThread$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

.field final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/request/WebRequestThread$1;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

    iput-object p2, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

    iget-object v0, v0, Lcom/unity3d/ads/request/WebRequestThread$1;->val$host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

    iget-object v1, v1, Lcom/unity3d/ads/request/WebRequestThread$1;->val$listener:Lcom/unity3d/ads/request/IResolveHostListener;

    iget-object v2, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

    iget-object v2, v2, Lcom/unity3d/ads/request/WebRequestThread$1;->val$host:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/unity3d/ads/request/IResolveHostListener;->onResolve(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 127
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "Unknown host"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 124
    iget-object v1, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

    iget-object v1, v1, Lcom/unity3d/ads/request/WebRequestThread$1;->val$listener:Lcom/unity3d/ads/request/IResolveHostListener;

    iget-object v2, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

    iget-object v2, v2, Lcom/unity3d/ads/request/WebRequestThread$1;->val$host:Ljava/lang/String;

    sget-object v3, Lcom/unity3d/ads/request/ResolveHostError;->UNKNOWN_HOST:Lcom/unity3d/ads/request/ResolveHostError;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/unity3d/ads/request/IResolveHostListener;->onFailed(Ljava/lang/String;Lcom/unity3d/ads/request/ResolveHostError;Ljava/lang/String;)V

    goto :goto_0
.end method
