.class Lcom/inmobi/monetization/internal/imai/IMAICore$3$1;
.super Ljava/lang/Object;
.source "IMAICore.java"

# interfaces
.implements Lcom/inmobi/commons/analytics/net/AnalyticsCommon$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/internal/imai/IMAICore$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/internal/imai/IMAICore$3;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/imai/IMAICore$3;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/inmobi/monetization/internal/imai/IMAICore$3$1;->a:Lcom/inmobi/monetization/internal/imai/IMAICore$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyResult(ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 230
    :try_start_0
    const-string v0, "[InMobi]-[Monetization]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got PING IN WEBVIEW callback. Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    if-nez p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAICore$3$1;->a:Lcom/inmobi/monetization/internal/imai/IMAICore$3;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/imai/IMAICore$3;->c:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/imai/IMAICore$3$1;->a:Lcom/inmobi/monetization/internal/imai/IMAICore$3;

    iget-object v1, v1, Lcom/inmobi/monetization/internal/imai/IMAICore$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->firePingInWebViewSuccessful(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAICore$3$1;->a:Lcom/inmobi/monetization/internal/imai/IMAICore$3;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/imai/IMAICore$3;->c:Ljava/lang/ref/WeakReference;

    const-string v1, "IMAI Ping in webview failed"

    const-string v2, "pingInWebview"

    iget-object v3, p0, Lcom/inmobi/monetization/internal/imai/IMAICore$3$1;->a:Lcom/inmobi/monetization/internal/imai/IMAICore$3;

    iget-object v3, v3, Lcom/inmobi/monetization/internal/imai/IMAICore$3;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 242
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
