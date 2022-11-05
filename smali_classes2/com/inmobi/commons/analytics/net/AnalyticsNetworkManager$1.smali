.class final Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$1;
.super Ljava/lang/Object;
.source "AnalyticsNetworkManager.java"

# interfaces
.implements Lcom/inmobi/commons/analytics/net/AnalyticsConnectivityReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 69
    const-string v0, "[InMobi]-[Analytics]-4.5.5"

    const-string v1, "Connectivity came"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->a()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getStartHandle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->setStartHandle(Z)V

    .line 72
    invoke-static {}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getTimeinterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "[InMobi]-[Analytics]-4.5.5"

    const-string v1, "Connectivity gone"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
