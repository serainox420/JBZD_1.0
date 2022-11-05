.class public Lcom/mdotm/android/http/MdotMRequestQueueClient;
.super Ljava/lang/Object;
.source "MdotMRequestQueueClient.java"


# static fields
.field private static handler:Landroid/os/Handler;

.field private static instance:Lcom/mdotm/android/http/MdotMRequestQueueClient;


# instance fields
.field private applicationHasFocus:Z

.field private listActiveRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private listRequestId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mAdManager:Lcom/mdotm/android/http/MdotMNetworkManager;

.field mContext:Landroid/content/Context;

.field private mapNetworkListenerQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mdotm/android/listener/MdotMNetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field private mapRequestQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mdotm/android/model/MdotMAdRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->instance:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapNetworkListenerQueue:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapRequestQueue:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->listRequestId:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->listActiveRequest:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->mContext:Landroid/content/Context;

    .line 37
    sget-object v0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 38
    const-string v0, "Creating new handler"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;

    invoke-direct {v0, p0}, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;-><init>(Lcom/mdotm/android/http/MdotMRequestQueueClient;)V

    sput-object v0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->handler:Landroid/os/Handler;

    .line 114
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->listActiveRequest:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapRequestQueue:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapNetworkListenerQueue:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->listRequestId:Ljava/util/List;

    return-object v0
.end method

.method private generateId()J
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mdotm/android/http/MdotMRequestQueueClient;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->instance:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-direct {v0, p0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->instance:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    .line 32
    :cond_0
    sget-object v0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->instance:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    return-object v0
.end method


# virtual methods
.method public addRequest(Lcom/mdotm/android/model/MdotMAdRequest;Lcom/mdotm/android/listener/MdotMNetworkListener;)V
    .locals 4

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->generateId()J

    move-result-wide v0

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "** added to queue "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->listRequestId:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v2, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapNetworkListenerQueue:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v2, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->mapRequestQueue:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v2, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->listActiveRequest:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 133
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->sendNextRequest(Lcom/mdotm/android/model/MdotMAdRequest;Lcom/mdotm/android/listener/MdotMNetworkListener;J)V

    .line 136
    :cond_0
    return-void
.end method

.method public isApplicationHasFocus()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->applicationHasFocus:Z

    return v0
.end method

.method protected sendNextRequest(Lcom/mdotm/android/model/MdotMAdRequest;Lcom/mdotm/android/listener/MdotMNetworkListener;J)V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "** sending req for  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/mdotm/android/http/MdotMRequestQueueClient;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/mdotm/android/http/MdotMNetworkManager;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/mdotm/android/http/MdotMNetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->mAdManager:Lcom/mdotm/android/http/MdotMNetworkManager;

    .line 120
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->mAdManager:Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-virtual {v0, p2}, Lcom/mdotm/android/http/MdotMNetworkManager;->setAdNetworkListener(Lcom/mdotm/android/listener/MdotMNetworkListener;)V

    .line 121
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->mAdManager:Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-virtual {v0, p1, p3, p4}, Lcom/mdotm/android/http/MdotMNetworkManager;->sendRequest(Lcom/mdotm/android/model/MdotMAdRequest;J)V

    .line 122
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->listActiveRequest:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public setApplicationHasFocus(Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient;->applicationHasFocus:Z

    .line 148
    return-void
.end method
