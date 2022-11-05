.class Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$2;
.super Ljava/lang/Object;
.source "AdTrackerWebViewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->loadWebview(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$2;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$2;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;J)J

    .line 59
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Webview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$2;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 62
    return-void
.end method
