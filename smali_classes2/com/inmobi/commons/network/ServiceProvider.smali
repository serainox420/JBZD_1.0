.class public Lcom/inmobi/commons/network/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"

# interfaces
.implements Lcom/inmobi/commons/network/abstraction/INetworkServiceProvider;


# static fields
.field private static a:Lcom/inmobi/commons/network/ServiceProvider;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/network/ServiceProvider;->b:Ljava/util/concurrent/ExecutorService;

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/inmobi/commons/network/ServiceProvider;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/inmobi/commons/network/ServiceProvider;->a:Lcom/inmobi/commons/network/ServiceProvider;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/inmobi/commons/network/ServiceProvider;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/network/ServiceProvider;->a:Lcom/inmobi/commons/network/ServiceProvider;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/inmobi/commons/network/ServiceProvider;

    invoke-direct {v0}, Lcom/inmobi/commons/network/ServiceProvider;-><init>()V

    sput-object v0, Lcom/inmobi/commons/network/ServiceProvider;->a:Lcom/inmobi/commons/network/ServiceProvider;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/inmobi/commons/network/ServiceProvider;->a:Lcom/inmobi/commons/network/ServiceProvider;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public executeTask(Lcom/inmobi/commons/network/Request;Lcom/inmobi/commons/network/abstraction/INetworkListener;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/inmobi/commons/network/ServiceProvider;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/commons/network/NetworkRequestTask;

    invoke-direct {v1, p1, p2}, Lcom/inmobi/commons/network/NetworkRequestTask;-><init>(Lcom/inmobi/commons/network/Request;Lcom/inmobi/commons/network/abstraction/INetworkListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method
