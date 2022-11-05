.class public Lcom/video/adsdk/internal/ADWifiMonitor;
.super Landroid/content/BroadcastReceiver;
.source "ADWifiMonitor.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/WifiMonitor;


# instance fields
.field wifiChecker:Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;

.field wifiListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/video/adsdk/interfaces/WifiListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/video/adsdk/internal/ADWifiMonitor;->wifiChecker:Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADWifiMonitor;->wifiListeners:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/video/adsdk/internal/ADWifiMonitor;->wifiChecker:Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;

    .line 23
    return-void
.end method

.method private notifyWifiActivated()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/video/adsdk/internal/ADWifiMonitor;->wifiListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/WifiListener;

    .line 54
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/WifiListener;->onWifiActivated()V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method private notifyWifiDeactivated()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/video/adsdk/internal/ADWifiMonitor;->wifiListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/WifiListener;

    .line 60
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/WifiListener;->onWifiDeactivated()V

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public isWifiActive()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/video/adsdk/internal/ADWifiMonitor;->wifiChecker:Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;->readCurrentValues()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/video/adsdk/internal/ADWifiMonitor;->wifiChecker:Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;->isWifiEnabled()Z

    move-result v0

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 27
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    .line 29
    sget-object v1, Lcom/video/adsdk/internal/ADWifiMonitor$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 39
    :goto_0
    return-void

    .line 31
    :pswitch_0
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADWifiMonitor;->notifyWifiActivated()V

    goto :goto_0

    .line 34
    :pswitch_1
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADWifiMonitor;->notifyWifiDeactivated()V

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerWifiListener(Lcom/video/adsdk/interfaces/WifiListener;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/video/adsdk/internal/ADWifiMonitor;->wifiListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/video/adsdk/internal/ADWifiMonitor;->wifiListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    return-void
.end method

.method public unregisterWifiListener(Lcom/video/adsdk/interfaces/WifiListener;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/video/adsdk/internal/ADWifiMonitor;->wifiListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method
