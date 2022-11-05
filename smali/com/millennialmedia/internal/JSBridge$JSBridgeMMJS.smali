.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;
.super Ljava/lang/Object;
.source "JSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/JSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JSBridgeMMJS"
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCalendarEvent(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 901
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: addCalendarEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 906
    const-string v1, "callbackId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 908
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->d(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 909
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ad has not been clicked"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    :goto_0
    return-void

    .line 915
    :cond_1
    const-string v2, "options"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 916
    if-nez v2, :cond_2

    .line 917
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No options provided"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 923
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->a(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 924
    if-nez v0, :cond_3

    .line 925
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Webview is no longer valid"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 931
    :cond_3
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$1;

    invoke-direct {v3, p0, v1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$1;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/CalendarUtils;->addEvent(Landroid/content/Context;Lorg/json/JSONObject;Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;)V

    goto :goto_0
.end method

.method public call(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1273
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: call("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1278
    const-string v1, "callbackId"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1280
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->d(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1281
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ad has not been clicked"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1302
    :goto_0
    return-void

    .line 1287
    :cond_1
    const-string v2, "number"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1288
    if-nez v0, :cond_2

    .line 1289
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No number provided"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1295
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1297
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/millennialmedia/internal/utils/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 1298
    if-eqz v0, :cond_3

    .line 1299
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onAdLeftApplication()V

    .line 1301
    :cond_3
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, v1, v3}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public email(Ljava/lang/String;)V
    .locals 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 1354
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMJS: email("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1359
    const-string v0, "callbackId"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1361
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->d(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1362
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad has not been clicked"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v0, v5, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1418
    :goto_0
    return-void

    .line 1372
    :cond_1
    const-string v0, "recipients"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1373
    if-eqz v0, :cond_8

    .line 1374
    const-string v2, "to"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1375
    const-string v2, "cc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1376
    const-string v6, "bcc"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1379
    :goto_1
    const-string v6, "subject"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1380
    if-nez v6, :cond_2

    .line 1381
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No subject provided"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v0, v5, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1387
    :cond_2
    const-string v7, "message"

    invoke-virtual {v4, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1388
    if-nez v1, :cond_3

    .line 1389
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No message provided"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v0, v5, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1395
    :cond_3
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1396
    const-string v8, "type"

    const-string v9, "text/plain"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1398
    if-eqz v3, :cond_4

    .line 1399
    const-string v4, "android.intent.extra.EMAIL"

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/JSONUtils;->convertToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1402
    :cond_4
    if-eqz v2, :cond_5

    .line 1403
    const-string v3, "android.intent.extra.CC"

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/JSONUtils;->convertToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1406
    :cond_5
    if-eqz v0, :cond_6

    .line 1407
    const-string v2, "android.intent.extra.BCC"

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/JSONUtils;->convertToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1410
    :cond_6
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1411
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/millennialmedia/internal/utils/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 1414
    if-eqz v0, :cond_7

    .line 1415
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onAdLeftApplication()V

    .line 1417
    :cond_7
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-virtual {v1, v5, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_1
.end method

.method public getAvailableSourceTypes(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1018
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: getAvailableSourceTypes("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1023
    const-string v1, "callbackId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1027
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableCameras()Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    move-result-object v2

    .line 1028
    iget-boolean v3, v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    if-eqz v3, :cond_1

    .line 1029
    const-string v3, "Rear Camera"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1031
    :cond_1
    iget-boolean v3, v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    if-eqz v3, :cond_2

    .line 1032
    const-string v3, "Front Camera"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1034
    :cond_2
    iget-boolean v3, v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    if-nez v3, :cond_3

    iget-boolean v2, v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    if-eqz v2, :cond_4

    .line 1035
    :cond_3
    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1037
    :cond_4
    invoke-static {}, Lcom/millennialmedia/internal/utils/MediaUtils;->isPictureChooserAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1038
    const-string v2, "Photo Library"

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1041
    :cond_5
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1042
    return-void
.end method

.method public getPictureFromPhotoLibrary(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1048
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: getPictureFromPhotoLibrary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1053
    const-string v1, "callbackId"

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1055
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageReadable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1056
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot read external storage"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v9, v1, v8

    invoke-virtual {v0, v6, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    :goto_0
    return-void

    .line 1061
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge;->d(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1062
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad has not been clicked"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v9, v1, v8

    invoke-virtual {v0, v6, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1068
    :cond_2
    const-string v1, "size"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1069
    if-nez v0, :cond_3

    .line 1070
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No size parameters provided"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v9, v1, v8

    invoke-virtual {v0, v6, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1076
    :cond_3
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1077
    const-string v2, "maxWidth"

    .line 1078
    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v3, v2

    .line 1080
    const-string v2, "maxHeight"

    .line 1081
    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v4, v1

    .line 1083
    const-string v1, "maintainAspectRatio"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1085
    if-lez v3, :cond_4

    if-gtz v4, :cond_5

    .line 1086
    :cond_4
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "maxWidth and maxHeight must be > 0"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v9, v1, v8

    invoke-virtual {v0, v6, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1092
    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->a(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/MMWebView;

    .line 1093
    if-nez v2, :cond_6

    .line 1094
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Webview is no longer valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v9, v1, v8

    invoke-virtual {v0, v6, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1100
    :cond_6
    invoke-virtual {v2}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Lcom/millennialmedia/internal/MMWebView;IIZLjava/lang/String;)V

    invoke-static {v7, v0}, Lcom/millennialmedia/internal/utils/MediaUtils;->getPhotoFromGallery(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V

    goto/16 :goto_0
.end method

.method public httpGet(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1641
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: httpGet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1646
    const-string v1, "callbackId"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1648
    const-string v2, "url"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1649
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1650
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "url was not provided"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1671
    :goto_0
    return-void

    .line 1656
    :cond_1
    const-string v3, "timeout"

    const/16 v4, 0x3a98

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1658
    new-instance v3, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isPackageAvailable(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1498
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1499
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: isPackageAvailable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1503
    const-string v1, "callbackId"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1505
    const-string v2, "name"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1506
    if-nez v0, :cond_1

    .line 1507
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "name was not provided"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1515
    :goto_0
    return-void

    .line 1513
    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 1514
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isSchemeAvailable(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1475
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1476
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: isSchemeAvailable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1480
    const-string v1, "callbackId"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1482
    const-string v2, "name"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1483
    if-nez v0, :cond_1

    .line 1484
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "name was not provided"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1492
    :goto_0
    return-void

    .line 1490
    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isSchemeAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 1491
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isSourceTypeAvailable(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 981
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMJS: isSourceTypeAvailable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 986
    const-string v3, "callbackId"

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 988
    const-string v4, "sourceType"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 989
    if-nez v0, :cond_1

    .line 990
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v4, "sourceType was not provided"

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1012
    :goto_0
    return-void

    .line 998
    :cond_1
    const-string v4, "Photo Library"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 999
    invoke-static {}, Lcom/millennialmedia/internal/utils/MediaUtils;->isPictureChooserAvailable()Z

    move-result v0

    .line 1011
    :goto_1
    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-virtual {v4, v3, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1001
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableCameras()Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    move-result-object v4

    .line 1002
    const-string v5, "Camera"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1003
    iget-boolean v0, v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    if-nez v0, :cond_3

    iget-boolean v0, v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    .line 1004
    :cond_5
    const-string v5, "Rear Camera"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1005
    iget-boolean v0, v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    goto :goto_1

    .line 1006
    :cond_6
    const-string v5, "Front Camera"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1007
    iget-boolean v0, v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public location(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1570
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1571
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: location("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1575
    const-string v1, "callbackId"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1577
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 1578
    if-nez v1, :cond_1

    .line 1579
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1594
    :goto_0
    return-void

    .line 1584
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1585
    const-string v3, "latitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1586
    const-string v3, "longitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1587
    const-string v3, "altitude"

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1588
    const-string v3, "accuracy"

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1589
    const-string v3, "altitudeAccuracy"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1590
    const-string v3, "heading"

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1591
    const-string v3, "speed"

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1593
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v1, v0, v3}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public openAppStore(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1600
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: openAppStore("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1605
    const-string v1, "callbackId"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1607
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->d(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1608
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ad has not been clicked"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Ad has not been clicked"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1635
    :goto_0
    return-void

    .line 1614
    :cond_1
    const-string v2, "appId"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1615
    if-nez v0, :cond_2

    .line 1616
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "appId was not provided"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1622
    :cond_2
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Amazon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "amzn://apps/android?p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1628
    :goto_1
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    move-result v0

    .line 1629
    if-eqz v0, :cond_4

    .line 1630
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onAdLeftApplication()V

    .line 1631
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1625
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1633
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "Unable to open app store"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public openCamera(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1133
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: openCamera("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1138
    const-string v1, "callbackId"

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1140
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge;->d(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1141
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad has not been clicked"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v9, v1, v8

    invoke-virtual {v0, v6, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1208
    :goto_0
    return-void

    .line 1147
    :cond_1
    const-string v1, "size"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1148
    if-nez v0, :cond_2

    .line 1149
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No size parameters provided"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v9, v1, v8

    invoke-virtual {v0, v6, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1155
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1156
    const-string v2, "maxWidth"

    .line 1157
    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v3, v2

    .line 1159
    const-string v2, "maxHeight"

    .line 1160
    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v4, v1

    .line 1162
    const-string v1, "maintainAspectRatio"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1164
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1165
    :cond_3
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "maxWidth and maxHeight must be > 0"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v9, v1, v8

    invoke-virtual {v0, v6, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1171
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->a(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/MMWebView;

    .line 1172
    if-nez v2, :cond_5

    .line 1173
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Webview is no longer valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v9, v1, v8

    invoke-virtual {v0, v6, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1181
    :cond_5
    invoke-virtual {v2}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$3;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Lcom/millennialmedia/internal/MMWebView;IIZLjava/lang/String;)V

    invoke-static {v7, v0}, Lcom/millennialmedia/internal/utils/MediaUtils;->getPhotoFromCamera(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V

    goto/16 :goto_0
.end method

.method public openInBrowser(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 956
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: openInBrowser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 961
    const-string v1, "callbackId"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 963
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->d(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 964
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ad has not been clicked"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 975
    :goto_0
    return-void

    .line 970
    :cond_1
    const-string v2, "url"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    move-result v0

    .line 971
    if-eqz v0, :cond_2

    .line 972
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onAdLeftApplication()V

    .line 974
    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public openMap(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1521
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: openMap("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1526
    const-string v1, "callbackId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1528
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->d(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1529
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ad has not been clicked"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1564
    :goto_0
    return-void

    .line 1536
    :cond_1
    const-string v2, "address"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1537
    const-string v2, "address"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1539
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "geo:0,0?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1557
    :goto_1
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    move-result v0

    .line 1558
    if-eqz v0, :cond_4

    .line 1559
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onAdLeftApplication()V

    .line 1560
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1540
    :catch_0
    move-exception v0

    .line 1541
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "Unable to encode address"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1546
    :cond_2
    const-string v2, "longitude"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "latitude"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1547
    const-string v2, "latitude"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1548
    const-string v3, "longitude"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1549
    const-string v3, "geo:%f,%f?q=%f,%f"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v0, v4, v7

    aput-object v2, v4, v8

    const/4 v2, 0x3

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1552
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "address or latitude and longitude must be specified"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1562
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "Unable to open map"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public savePictureToPhotoLibrary(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1214
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: savePictureToPhotoLibrary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1219
    const-string v1, "callbackId"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1221
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->d(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1222
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ad has not been clicked"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1267
    :goto_0
    return-void

    .line 1228
    :cond_1
    const-string v2, "name"

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1229
    const-string v3, "description"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1231
    const-string v4, "url"

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1232
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1233
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No path specified for photo"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1239
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->a(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1240
    if-nez v0, :cond_3

    .line 1241
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Webview is no longer valid"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1247
    :cond_3
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;

    invoke-direct {v6, p0, v3, v0, v1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Ljava/lang/String;Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V

    invoke-static {v5, v4, v2, v6}, Lcom/millennialmedia/internal/utils/MediaUtils;->savePicture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V

    goto :goto_0
.end method

.method public sms(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1308
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS: sms("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1313
    const-string v1, "callbackId"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1315
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->d(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1316
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ad has not been clicked"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1348
    :goto_0
    return-void

    .line 1322
    :cond_1
    const-string v2, "recipients"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1323
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1324
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No recipients provided"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1330
    :cond_3
    const-string v3, "message"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1331
    if-nez v0, :cond_4

    .line 1332
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No message provided"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1338
    :cond_4
    const-string v3, ","

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/JSONUtils;->convertToStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1340
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1341
    const-string v2, "sms_body"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1343
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/millennialmedia/internal/utils/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 1344
    if-eqz v0, :cond_5

    .line 1345
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onAdLeftApplication()V

    .line 1347
    :cond_5
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v2, v1, v3}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public vibrate(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1424
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMJS: vibrate("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1429
    const-string v2, "onStartCallbackId"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1430
    const-string v3, "onFinishCallbackId"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1432
    const-string v4, "pattern"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1433
    if-nez v1, :cond_1

    .line 1434
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No pattern provided"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->a:Lcom/millennialmedia/internal/JSBridge;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {v1, v3, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1469
    :goto_0
    return-void

    .line 1441
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [J

    .line 1442
    const-wide/16 v6, 0x0

    aput-wide v6, v4, v0

    .line 1444
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1445
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 1444
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1448
    :cond_2
    const/4 v0, -0x1

    new-instance v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$5;

    invoke-direct {v1, p0, v2, v3}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$5;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v0, v1}, Lcom/millennialmedia/internal/utils/Utils;->vibrate([JILcom/millennialmedia/internal/utils/Utils$VibrateListener;)V

    goto :goto_0
.end method
