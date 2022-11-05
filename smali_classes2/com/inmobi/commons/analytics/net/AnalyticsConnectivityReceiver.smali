.class public Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;
    }
.end annotation


# instance fields
.field private a:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->a:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

    .line 22
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->bind(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 27
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->b:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iput-boolean v1, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->b:Z

    .line 39
    iget-object v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->a:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->a:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

    invoke-interface {v0}, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;->b()V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->b:Z

    .line 44
    iget-object v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->a:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver;->a:Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;

    invoke-interface {v0}, Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;->a()V

    goto :goto_0
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 33
    return-void
.end method
