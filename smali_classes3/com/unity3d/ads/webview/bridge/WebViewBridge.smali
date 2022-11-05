.class public Lcom/unity3d/ads/webview/bridge/WebViewBridge;
.super Ljava/lang/Object;
.source "WebViewBridge.java"


# static fields
.field private static _classTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/reflect/Method;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->_classTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    .line 53
    :cond_0
    sget-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->_classTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 57
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0

    .line 60
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 63
    invoke-static {p2}, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static getTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    move-object v1, v0

    .line 76
    :goto_0
    if-eqz p0, :cond_1

    .line 77
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 78
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    move-object v1, v0

    goto :goto_0

    .line 82
    :cond_1
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    const-class v2, Lcom/unity3d/ads/webview/bridge/WebViewCallback;

    aput-object v2, v1, v0

    .line 84
    return-object v1
.end method

.method private static getValues([Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-nez p0, :cond_3

    .line 90
    if-nez p1, :cond_1

    .line 91
    const/4 v0, 0x0

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 98
    :goto_1
    if-eqz p0, :cond_2

    .line 99
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_2
    if-eqz p1, :cond_0

    .line 103
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    goto :goto_0

    .line 95
    :cond_3
    array-length v2, p0

    if-eqz p1, :cond_4

    :goto_2
    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static handleCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/webview/WebViewApp;->getCallback(Ljava/lang/String;)Lcom/unity3d/ads/webview/bridge/NativeCallback;

    move-result-object v0

    .line 133
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2, v1}, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->getValues([Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/unity3d/ads/webview/bridge/NativeCallback;->invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 138
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    :goto_0
    const-string v1, "Error while invoking method"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 136
    throw v0

    .line 134
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public static handleInvocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->findMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 120
    :try_start_1
    invoke-static {p2, p3}, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->getValues([Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)[Ljava/lang/Object;

    move-result-object v1

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    .line 126
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :goto_0
    sget-object v1, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->METHOD_NOT_FOUND:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {p3, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 116
    throw v0

    .line 122
    :catch_1
    move-exception v0

    .line 123
    :goto_1
    sget-object v1, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->INVOCATION_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p3, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 124
    throw v0

    .line 114
    :catch_2
    move-exception v0

    goto :goto_0

    .line 122
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method public static setClassTable([Ljava/lang/Class;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 16
    if-nez p0, :cond_1

    .line 44
    :cond_0
    return-void

    .line 19
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->_classTable:Ljava/util/HashMap;

    .line 21
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, p0, v3

    .line 22
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.unity3d.ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 21
    :cond_2
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 26
    :cond_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 27
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    move v1, v2

    :goto_2
    if-ge v1, v8, :cond_6

    aget-object v9, v7, v1

    .line 28
    const-class v0, Lcom/unity3d/ads/webview/bridge/WebViewExposed;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    .line 32
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 38
    :goto_3
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 35
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_3

    .line 42
    :cond_6
    sget-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->_classTable:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
