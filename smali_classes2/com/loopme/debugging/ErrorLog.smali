.class public Lcom/loopme/debugging/ErrorLog;
.super Ljava/lang/Object;
.source "ErrorLog.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/loopme/debugging/ErrorLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/debugging/ErrorLog;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initPostDataParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-static {}, Lcom/loopme/request/AdRequestParametersProvider;->getInstance()Lcom/loopme/request/AdRequestParametersProvider;

    move-result-object v0

    .line 34
    const-string v2, "device_os"

    const-string v3, "android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v2, "sdk_type"

    const-string v3, "loopme"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v2, "sdk_version"

    const-string v3, "5.1.1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v2, "device_id"

    invoke-virtual {v0}, Lcom/loopme/request/AdRequestParametersProvider;->getViewerToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v2, "package"

    invoke-virtual {v0}, Lcom/loopme/request/AdRequestParametersProvider;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v2, "app_key"

    invoke-virtual {v0}, Lcom/loopme/request/AdRequestParametersProvider;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "unknown"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "msg"

    const-string v2, "sdk_error"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "error_type"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "custom"

    :cond_0
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "error_msg"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-object v1

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/loopme/request/AdRequestParametersProvider;->getAppKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static post(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/loopme/debugging/ErrorLog;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/loopme/debugging/ErrorLog;->initPostDataParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/loopme/debugging/HttpUtils;->postDataToServer(Ljava/util/Map;)V

    .line 22
    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/loopme/debugging/ErrorLog;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p0, p1}, Lcom/loopme/debugging/ErrorLog;->initPostDataParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/loopme/debugging/HttpUtils;->postDataToServer(Ljava/util/Map;)V

    .line 28
    return-void
.end method
