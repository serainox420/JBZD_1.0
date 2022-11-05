.class public Lcom/unity3d/ads/request/WebRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "WebRequestResultReceiver.java"


# static fields
.field public static final RESULT_FAILED:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x1


# instance fields
.field private _listener:Lcom/unity3d/ads/request/IWebRequestListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/unity3d/ads/request/IWebRequestListener;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 23
    iput-object p2, p0, Lcom/unity3d/ads/request/WebRequestResultReceiver;->_listener:Lcom/unity3d/ads/request/IWebRequestListener;

    .line 24
    return-void
.end method

.method private getResponseHeaders(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 60
    if-eqz v3, :cond_0

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 65
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 28
    invoke-static {}, Lcom/unity3d/ads/log/DeviceLog;->entered()V

    .line 30
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequestResultReceiver;->_listener:Lcom/unity3d/ads/request/IWebRequestListener;

    if-eqz v0, :cond_0

    .line 31
    packed-switch p1, :pswitch_data_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequestResultReceiver;->_listener:Lcom/unity3d/ads/request/IWebRequestListener;

    const-string v1, "url"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/request/IWebRequestListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 52
    return-void

    .line 33
    :pswitch_0
    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "url"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 35
    const-string v1, "response"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v2, "response"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 37
    const-string v2, "responseCode"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 38
    const-string v3, "responseCode"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 39
    iget-object v3, p0, Lcom/unity3d/ads/request/WebRequestResultReceiver;->_listener:Lcom/unity3d/ads/request/IWebRequestListener;

    invoke-direct {p0, p2}, Lcom/unity3d/ads/request/WebRequestResultReceiver;->getResponseHeaders(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/unity3d/ads/request/IWebRequestListener;->onComplete(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    goto :goto_0

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequestResultReceiver;->_listener:Lcom/unity3d/ads/request/IWebRequestListener;

    const-string v1, "url"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/request/IWebRequestListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
