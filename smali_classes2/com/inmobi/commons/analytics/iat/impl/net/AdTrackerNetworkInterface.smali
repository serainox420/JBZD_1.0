.class public Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;
.super Ljava/lang/Object;
.source "AdTrackerNetworkInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$a;,
        Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$b;
    }
.end annotation


# static fields
.field private static a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

.field private static b:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

.field private static c:Landroid/os/Handler;

.field private static d:Landroid/os/HandlerThread;

.field private static e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static f:I

.field private static g:Z

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:I

    .line 47
    sput-boolean v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Z

    .line 59
    const-string v0, "https://d.appsdt.com/download/tracker/?"

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->h:Ljava/lang/String;

    .line 60
    const-string v0, "https://d.appsdt.com/sdkdwnldbeacon.html"

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i:Ljava/lang/String;

    .line 61
    const-string v0, "https://d.appsdt.com/download/tracker/iatsdkconfs?"

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 35
    sput p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:I

    return p0
.end method

.method static synthetic a(Lcom/inmobi/commons/analytics/iat/impl/Goal;Z)J
    .locals 2

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b(Lcom/inmobi/commons/analytics/iat/impl/Goal;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic a(Lcom/inmobi/commons/analytics/iat/impl/GoalList;)Lcom/inmobi/commons/analytics/iat/impl/GoalList;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    return-object p0
.end method

.method static synthetic a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    return-object p0
.end method

.method static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 35
    sput-boolean p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Z

    return p0
.end method

.method private static b(Lcom/inmobi/commons/analytics/iat/impl/Goal;Z)J
    .locals 6

    .prologue
    .line 171
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->name:Ljava/lang/String;

    .line 172
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->retryTime:J

    .line 173
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getRetryParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->getMaxWaitTime()I

    move-result v2

    .line 175
    const/4 v3, 0x1

    if-ne v3, p1, :cond_1

    .line 176
    const-wide/16 v0, 0x0

    .line 180
    :cond_0
    :goto_0
    return-wide v0

    .line 177
    :cond_1
    int-to-long v4, v2

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 178
    int-to-long v0, v2

    goto :goto_0
.end method

.method static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i:Ljava/lang/String;

    return-object v0
.end method

.method static final c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f()Lcom/inmobi/commons/analytics/iat/impl/GoalList;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    return-object v0
.end method

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->p()Z

    move-result v0

    return v0
.end method

.method public static getGoalList()Lcom/inmobi/commons/analytics/iat/impl/GoalList;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    return-object v0
.end method

.method public static getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic i()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->n()Z

    move-result v0

    return v0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    if-nez v0, :cond_1

    .line 116
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->getLoggedGoals()Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    .line 119
    :cond_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 120
    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$b;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$b;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Landroid/os/Handler;

    .line 123
    :cond_2
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AdTrackerNetworkHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Landroid/os/HandlerThread;

    .line 125
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 128
    :cond_3
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->k:Landroid/os/Handler;

    if-nez v0, :cond_4

    .line 129
    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$a;

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->k:Landroid/os/Handler;

    .line 131
    :cond_4
    return-void
.end method

.method public static isMetricSample()Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Z

    return v0
.end method

.method public static isUnstableNetwork()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:I

    return v0
.end method

.method static synthetic j()Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    return-object v0
.end method

.method static synthetic k()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic l()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private static m()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v3, "timetoLive"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IMAdTrackerStatusUpload"

    const-string v4, "iat_ids"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 189
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 190
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 192
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 197
    const/16 v4, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 198
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static n()Z
    .locals 3

    .prologue
    .line 207
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "referrer"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static o()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    const-string v3, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fetch referrer wait time URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 219
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 222
    :try_start_0
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 223
    const/16 v3, 0xc8

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v4

    if-eq v3, v4, :cond_0

    .line 267
    :goto_0
    return v0

    .line 227
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 228
    const-string v3, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wait time received for referrer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 232
    const-string v2, "referrerWaitTime"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 233
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "IMAdTrackerStatusUpload"

    const-string v6, "referrerWaitTime"

    invoke-static {v4, v5, v6, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3

    move v0, v1

    .line 259
    goto :goto_0

    .line 235
    :catch_0
    move-exception v2

    .line 238
    :try_start_2
    sget v3, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$a;->b:I

    int-to-long v4, v3

    .line 239
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "IMAdTrackerStatusUpload"

    const-string v7, "referrerWaitTime"

    invoke-static {v3, v6, v7, v4, v5}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 242
    const-string v3, "[InMobi]-[AdTracker]-4.5.5"

    const-string v4, "Error fetching wait time for referrer"

    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    const-string v2, "[InMobi]-[AdTracker]-4.5.5"

    const-string v3, "Setting default wait time..."

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 244
    goto :goto_0

    .line 245
    :catch_1
    move-exception v2

    .line 248
    sget v3, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$a;->b:I

    int-to-long v4, v3

    .line 249
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "IMAdTrackerStatusUpload"

    const-string v7, "referrerWaitTime"

    invoke-static {v3, v6, v7, v4, v5}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 251
    const-string v3, "[InMobi]-[AdTracker]-4.5.5"

    const-string v4, "Error fetching wait time for referrer"

    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    const-string v2, "[InMobi]-[AdTracker]-4.5.5"

    const-string v3, "Setting default wait time..."

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 253
    goto :goto_0

    .line 254
    :catch_2
    move-exception v1

    .line 255
    const-string v2, "[InMobi]-[AdTracker]-4.5.5"

    const-string v3, "Error fetching wait time for referrer"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 262
    :catch_3
    move-exception v1

    .line 263
    const-string v2, "[InMobi]-[AdTracker]-4.5.5"

    const-string v3, "Error fetching wait time for referrer"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 264
    :catch_4
    move-exception v1

    .line 265
    const-string v2, "[InMobi]-[AdTracker]-4.5.5"

    const-string v3, "Error fetching wait time for referrer"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static onReceiveReferrer(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 280
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 284
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 285
    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 286
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 287
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    :cond_0
    return-void
.end method

.method private static p()Z
    .locals 3

    .prologue
    .line 271
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "waitForReferrer"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized reportToServer(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 134
    const-class v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    :cond_0
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "No goals to report"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 139
    :cond_2
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->k:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 143
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    .line 145
    sget-object v3, Lcom/inmobi/commons/analytics/iat/impl/Goal$State;->REPORTING_COMPLETED:Lcom/inmobi/commons/analytics/iat/impl/Goal$State;

    iget-object v0, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->state:Lcom/inmobi/commons/analytics/iat/impl/Goal$State;

    if-ne v3, v0, :cond_3

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 151
    :cond_4
    :try_start_2
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 152
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    .line 154
    sget-object v3, Lcom/inmobi/commons/analytics/iat/impl/Goal$State;->ENQUEUE_PENDING:Lcom/inmobi/commons/analytics/iat/impl/Goal$State;

    iput-object v3, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->state:Lcom/inmobi/commons/analytics/iat/impl/Goal$State;

    goto :goto_2

    .line 156
    :cond_5
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->saveGoals()V

    .line 159
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    .line 160
    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/Goal$State;->ENQUEUE_REQUESTED:Lcom/inmobi/commons/analytics/iat/impl/Goal$State;

    iput-object v2, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->state:Lcom/inmobi/commons/analytics/iat/impl/Goal$State;

    .line 162
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 163
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 164
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 165
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->k:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
