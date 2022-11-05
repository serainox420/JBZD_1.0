.class final Lcom/pubmatic/sdk/common/network/AdTracking$1;
.super Ljava/lang/Object;
.source "AdTracking.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/network/AdTracking;->invokeTrackingUrl(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$timeout:I

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/AdTracking$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/pubmatic/sdk/common/network/AdTracking$1;->val$userAgent:Ljava/lang/String;

    iput p3, p0, Lcom/pubmatic/sdk/common/network/AdTracking$1;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 39
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/network/AdTracking$1;->val$url:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-eqz v0, :cond_2

    .line 42
    :try_start_1
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 43
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/pubmatic/sdk/common/network/AdTracking$1;->val$userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget v1, p0, Lcom/pubmatic/sdk/common/network/AdTracking$1;->val$timeout:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 47
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 49
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PM-TrackerEvent : Error while invoking tracking URL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pubmatic/sdk/common/network/AdTracking$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HttpResponse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    :try_start_2
    const-string v1, "PM-TrackerEvent : Ad Tracker fired successfully"

    sget-object v2, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    :cond_2
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 60
    :goto_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PM-TrackerEvent : Error while invoking tracking URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/common/network/AdTracking$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 64
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 65
    :cond_3
    throw v0

    .line 63
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 59
    :catch_1
    move-exception v1

    goto :goto_1
.end method
