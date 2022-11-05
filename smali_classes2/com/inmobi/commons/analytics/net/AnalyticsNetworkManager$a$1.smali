.class Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a$1;
.super Ljava/lang/Object;
.source "AnalyticsNetworkManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a$1;->a:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 204
    const-string v0, "[InMobi]-[Analytics]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkManager->handleMessag: msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 207
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getAutomaticCapture()Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AutomaticCaptureConfig;->isAutoSessionCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->isEventsUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->setStartHandle(Z)V

    .line 220
    :cond_0
    :goto_0
    return v3

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a$1;->a:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a;

    iget-object v0, v0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a;->a:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->a(Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;)V

    goto :goto_0
.end method
