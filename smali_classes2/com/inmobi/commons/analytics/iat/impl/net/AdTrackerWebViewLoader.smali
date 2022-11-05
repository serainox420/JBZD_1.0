.class public Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;
.super Ljava/lang/Object;
.source "AdTrackerWebViewLoader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;,
        Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$JSInterface;,
        Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/inmobi/commons/analytics/iat/impl/Goal;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->d:J

    .line 34
    iput-wide v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->e:J

    .line 37
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$1;

    invoke-direct {v1, p0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$1;-><init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;J)J
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 174
    .line 175
    const/4 v0, 0x0

    .line 176
    new-instance v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;

    invoke-direct {v2}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;-><init>()V

    .line 178
    :try_start_0
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v3, v4

    move v1, v4

    .line 179
    :goto_0
    array-length v5, v6

    if-ge v3, v5, :cond_3

    .line 180
    aget-object v5, v6, v3

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move v5, v4

    .line 181
    :goto_1
    array-length v8, v7

    if-ge v5, v8, :cond_2

    .line 182
    const-string v8, "err"

    aget-object v9, v7, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 183
    add-int/lit8 v1, v5, 0x1

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 181
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 184
    :cond_1
    const-string v8, "res"

    aget-object v9, v7, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 185
    add-int/lit8 v0, v5, 0x1

    aget-object v0, v7, v0

    goto :goto_2

    .line 179
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_3
    invoke-static {v2, v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;I)I

    .line 190
    invoke-static {v2, v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    const/16 v3, 0x138b

    if-ne v3, v1, :cond_5

    .line 193
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Webview Timeout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    move-object v0, v2

    .line 210
    :goto_4
    return-object v0

    .line 194
    :cond_5
    const/16 v3, 0x1389

    if-ne v3, v1, :cond_6

    .line 195
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid params passed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    const-string v3, "Check content Exception"

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 208
    goto :goto_4

    .line 196
    :cond_6
    const/16 v3, 0x138a

    if-ne v3, v1, :cond_7

    .line 197
    :try_start_1
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XMLHTTP request not supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 198
    :cond_7
    const/16 v3, 0x138d

    if-ne v3, v1, :cond_8

    .line 199
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid JSON Response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 200
    :cond_8
    const/16 v3, 0x138c

    if-ne v3, v1, :cond_9

    .line 201
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Webview Server Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 202
    :cond_9
    const/16 v3, 0x1388

    if-ne v3, v1, :cond_4

    .line 203
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Webview response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/16 v1, 0x1770

    .line 214
    .line 218
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    const-string v0, "iat_ids"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 221
    const-string v0, "errmsg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    const-string v0, "timetoLive"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 223
    const-string v0, "errcode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 224
    if-eq v0, v1, :cond_0

    .line 225
    :try_start_1
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upload goal in webview"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_0
    return v0

    .line 228
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    const/16 v2, 0x1771

    if-ne v0, v2, :cond_1

    .line 231
    const/4 v1, 0x0

    .line 233
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IMAdTrackerStatusUpload"

    const-string v4, "iat_ids"

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v3, "timetoLive"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    :goto_1
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 239
    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 240
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 239
    :catch_2
    move-exception v1

    goto :goto_2

    .line 237
    :catch_3
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method static synthetic b(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;J)J
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->e:J

    return-wide p1
.end method

.method static synthetic c(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Lcom/inmobi/commons/analytics/iat/impl/Goal;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->b:Lcom/inmobi/commons/analytics/iat/impl/Goal;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->e:J

    return-wide v0
.end method


# virtual methods
.method public deinit(I)V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$3;

    invoke-direct {v1, p0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$3;-><init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method

.method public loadWebview(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)Z
    .locals 2

    .prologue
    .line 52
    iput-object p2, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->b:Lcom/inmobi/commons/analytics/iat/impl/Goal;

    .line 53
    iput-object p1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->c:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$2;

    invoke-direct {v1, p0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$2;-><init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    const/4 v0, 0x1

    return v0
.end method
