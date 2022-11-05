.class public Lcom/unity3d/ads/api/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->clearStorage()Z

    move-result v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 149
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_CLEAR_STORAGE:Lcom/unity3d/ads/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0, p1}, Lcom/unity3d/ads/device/Storage;->delete(Ljava/lang/String;)Z

    move-result v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p2, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    sget-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_DELETE_VALUE:Lcom/unity3d/ads/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :cond_1
    sget-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0, p1}, Lcom/unity3d/ads/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_VALUE:Lcom/unity3d/ads/device/StorageError;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_1
    sget-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {p2, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 87
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/unity3d/ads/device/Storage;->getKeys(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v3

    invoke-virtual {p3, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    aput-object v1, v0, v3

    invoke-virtual {p3, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_1
    sget-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object p1, v1, v2

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;
    .locals 1

    .prologue
    .line 170
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager$StorageType;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/device/StorageManager$StorageType;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/unity3d/ads/device/StorageManager;->getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    return-object v0
.end method

.method public static read(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->readStorage()Z

    .line 108
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 22
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 23
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 33
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 17
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 18
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 28
    return-void
.end method

.method private static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0, p1, p2}, Lcom/unity3d/ads/device/Storage;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    invoke-virtual {p3, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 58
    :cond_0
    sget-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_SET_VALUE:Lcom/unity3d/ads/device/StorageError;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 38
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 48
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/ads/api/Storage;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 43
    return-void
.end method

.method public static write(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-static {p0}, Lcom/unity3d/ads/api/Storage;->getStorage(Ljava/lang/String;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->writeStorage()Z

    move-result v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 131
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_WRITE_STORAGE_TO_CACHE:Lcom/unity3d/ads/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_1
    sget-object v0, Lcom/unity3d/ads/device/StorageError;->COULDNT_GET_STORAGE:Lcom/unity3d/ads/device/StorageError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method
