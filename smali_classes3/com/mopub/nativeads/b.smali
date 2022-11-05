.class final Lcom/mopub/nativeads/b;
.super Ljava/lang/Object;
.source "CustomEventNativeAdapter.java"


# direct methods
.method public static loadNativeAd(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/network/AdResponse;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mopub/network/AdResponse;",
            "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p2}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to invoke custom event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 27
    :try_start_0
    invoke-static {v0}, Lcom/mopub/nativeads/factories/CustomEventNativeFactory;->create(Ljava/lang/String;)Lcom/mopub/nativeads/CustomEventNative;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    invoke-virtual {p2}, Lcom/mopub/network/AdResponse;->hasJson()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "com_mopub_native_json"

    invoke-virtual {p2}, Lcom/mopub/network/AdResponse;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/network/AdResponse;->getEventDetails()Lcom/mopub/common/event/EventDetails;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    const-string v2, "Event-Details"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_1
    const-string v1, "Click-Tracking-Url"

    invoke-virtual {p2}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :try_start_1
    invoke-virtual {p2}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p0, p3, p1, v1}, Lcom/mopub/nativeads/CustomEventNative;->a(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v1

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load Custom Event Native class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_NOT_FOUND:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p3, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 53
    :catch_1
    move-exception v0

    .line 54
    const-string v1, "Loading custom event native threw an error."

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_ADAPTER_NOT_FOUND:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p3, v0}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0
.end method
