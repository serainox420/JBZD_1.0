.class public Lcom/unity3d/ads/broadcast/BroadcastMonitor;
.super Ljava/lang/Object;
.source "BroadcastMonitor.java"


# static fields
.field private static _eventReceivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/broadcast/BroadcastEventReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBroadcastListener(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 14
    invoke-static {p0}, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->removeBroadcastListener(Ljava/lang/String;)V

    .line 16
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    .line 19
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 26
    :cond_1
    sget-object v0, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    .line 30
    :cond_2
    new-instance v0, Lcom/unity3d/ads/broadcast/BroadcastEventReceiver;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/broadcast/BroadcastEventReceiver;-><init>(Ljava/lang/String;)V

    .line 31
    sget-object v2, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    return-void
.end method

.method public static removeAllBroadcastListeners()V
    .locals 4

    .prologue
    .line 43
    sget-object v0, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    .line 50
    :cond_1
    return-void
.end method

.method public static removeBroadcastListener(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 38
    sget-object v0, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->_eventReceivers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    return-void
.end method
