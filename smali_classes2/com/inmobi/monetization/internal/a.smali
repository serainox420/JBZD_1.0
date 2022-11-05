.class Lcom/inmobi/monetization/internal/a;
.super Ljava/lang/Object;
.source "AdController.java"


# static fields
.field private static c:Lcom/inmobi/monetization/internal/a;


# instance fields
.field private a:Lcom/inmobi/commons/network/ServiceProvider;

.field private b:Lcom/inmobi/commons/network/abstraction/INetworkListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/monetization/internal/a;->c:Lcom/inmobi/monetization/internal/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/inmobi/commons/network/ServiceProvider;->getInstance()Lcom/inmobi/commons/network/ServiceProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/a;->a:Lcom/inmobi/commons/network/ServiceProvider;

    .line 23
    return-void
.end method

.method public static a()Lcom/inmobi/monetization/internal/a;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/inmobi/monetization/internal/a;->c:Lcom/inmobi/monetization/internal/a;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/inmobi/monetization/internal/a;

    invoke-direct {v0}, Lcom/inmobi/monetization/internal/a;-><init>()V

    sput-object v0, Lcom/inmobi/monetization/internal/a;->c:Lcom/inmobi/monetization/internal/a;

    .line 29
    :cond_0
    sget-object v0, Lcom/inmobi/monetization/internal/a;->c:Lcom/inmobi/monetization/internal/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/abstraction/INetworkListener;)V
    .locals 2

    .prologue
    .line 36
    iput-object p3, p0, Lcom/inmobi/monetization/internal/a;->b:Lcom/inmobi/commons/network/abstraction/INetworkListener;

    .line 37
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Fetching  Ads"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/inmobi/monetization/internal/a;->a:Lcom/inmobi/commons/network/ServiceProvider;

    invoke-virtual {v0, p2, p3}, Lcom/inmobi/commons/network/ServiceProvider;->executeTask(Lcom/inmobi/commons/network/Request;Lcom/inmobi/commons/network/abstraction/INetworkListener;)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/a;->b:Lcom/inmobi/commons/network/abstraction/INetworkListener;

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/inmobi/commons/network/Response;

    sget-object v1, Lcom/inmobi/commons/network/ErrorCode;->NETWORK_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    invoke-direct {v0, v1}, Lcom/inmobi/commons/network/Response;-><init>(Lcom/inmobi/commons/network/ErrorCode;)V

    .line 44
    iget-object v1, p0, Lcom/inmobi/monetization/internal/a;->b:Lcom/inmobi/commons/network/abstraction/INetworkListener;

    invoke-interface {v1, p2, v0}, Lcom/inmobi/commons/network/abstraction/INetworkListener;->onRequestFailed(Lcom/inmobi/commons/network/Request;Lcom/inmobi/commons/network/Response;)V

    goto :goto_0
.end method
