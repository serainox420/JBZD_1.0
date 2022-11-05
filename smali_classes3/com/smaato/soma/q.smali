.class public Lcom/smaato/soma/q;
.super Ljava/lang/Object;
.source "SentryClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/q$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "0"

    iput-object v0, p0, Lcom/smaato/soma/q;->a:Ljava/lang/String;

    .line 32
    const-string v0, "0"

    iput-object v0, p0, Lcom/smaato/soma/q;->b:Ljava/lang/String;

    .line 33
    const-string v0, "sdkandroid_5-1-1"

    iput-object v0, p0, Lcom/smaato/soma/q;->c:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/smaato/soma/q;->d:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/smaato/soma/q;->e:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/smaato/soma/q;->f:Ljava/lang/String;

    .line 38
    const-string v0, "https://app.getsentry.com:443/api/43633/store/"

    iput-object v0, p0, Lcom/smaato/soma/q;->h:Ljava/lang/String;

    .line 52
    const-string v0, "0902ba8e7912430ab1457aad743a4259"

    iput-object v0, p0, Lcom/smaato/soma/q;->i:Ljava/lang/String;

    .line 53
    const-string v0, "9bb7090c3712422680a3f615b56ca42b"

    iput-object v0, p0, Lcom/smaato/soma/q;->j:Ljava/lang/String;

    .line 54
    const-string v0, "66819"

    iput-object v0, p0, Lcom/smaato/soma/q;->k:Ljava/lang/String;

    .line 58
    const-string v0, "com.smaato.soma"

    iput-object v0, p0, Lcom/smaato/soma/q;->l:Ljava/lang/String;

    .line 65
    const-string v0, "https://app.getsentry.com:443"

    iput-object v0, p0, Lcom/smaato/soma/q;->g:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/smaato/soma/q;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/q;->d:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/smaato/soma/q;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/q;->e:Ljava/lang/String;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/q$1;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smaato/soma/q;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/q;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smaato/soma/q;->k:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 172
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 173
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/smaato/soma/q;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 179
    :cond_0
    :goto_1
    return-object p2

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 138
    :try_start_0
    invoke-static {}, Lcom/smaato/soma/debug/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/smaato/soma/q;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SOMA_SENTRY_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    const-string v1, "SOMA_ENTRY_DATA"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/smaato/soma/q;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smaato/soma/q;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 344
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    :cond_0
    return-object p0

    .line 347
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 349
    const-string p0, ""

    .line 350
    array-length v6, v5

    move v4, v2

    move v1, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-char v0, v5, v4

    .line 351
    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 350
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object p0, v0

    goto :goto_0

    .line 355
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_3

    move v1, v3

    .line 358
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 267
    const-string v1, "event_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v1, "project"

    iget-object v2, p0, Lcom/smaato/soma/q;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v1, "level"

    const-string v2, "fatal"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v1, "culprit"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    if-eqz p3, :cond_0

    .line 275
    const-string v1, "stacktrace"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    :cond_0
    const-string v1, "user"

    iget-object v2, p0, Lcom/smaato/soma/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 280
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 283
    const-string v2, "SDK"

    iget-object v3, p0, Lcom/smaato/soma/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v2, "publisher"

    iget-object v3, p0, Lcom/smaato/soma/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v2, "adspaceId"

    iget-object v3, p0, Lcom/smaato/soma/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v2, "device"

    iget-object v3, p0, Lcom/smaato/soma/q;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v2, "OS"

    iget-object v3, p0, Lcom/smaato/soma/q;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v2, "tags"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    return-object v0
.end method

.method public static c()Lcom/smaato/soma/q;
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Lcom/smaato/soma/q$a;->a()Lcom/smaato/soma/q;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/smaato/soma/q;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smaato/soma/q;->f()V

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 331
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 332
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 333
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    invoke-static {v1}, Lcom/smaato/soma/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    .line 336
    :cond_0
    const-string v2, "HTC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/smaato/soma/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/smaato/soma/q;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SOMA_SENTRY_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    const-string v1, "SOMA_ENTRY_DATA"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/smaato/soma/q;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SOMA_SENTRY_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    const-string v1, "SOMA_ENTRY_DATA"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 6

    .prologue
    .line 295
    const-string v0, ""

    .line 297
    iget-object v1, p0, Lcom/smaato/soma/q;->i:Ljava/lang/String;

    .line 298
    iget-object v2, p0, Lcom/smaato/soma/q;->j:Ljava/lang/String;

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Sentry sentry_version=4,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "sentry_client=sentry-android/0.1.2,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "sentry_timestamp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "sentry_key="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sentry_secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 183
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 184
    const/4 v1, 0x0

    .line 186
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v7, v5, v3

    .line 187
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 189
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 191
    const-string v9, "function"

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    .line 195
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v9

    if-nez v9, :cond_1

    if-ltz v0, :cond_1

    .line 196
    const-string v9, "lineno"

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    :cond_1
    const/4 v0, 0x1

    .line 201
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 202
    const-string v9, "module"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string v9, "android."

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "java."

    .line 207
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "dalvik."

    .line 208
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "com.android."

    .line 209
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v0, v2

    .line 214
    :cond_3
    const-string v7, "in_app"

    invoke-virtual {v8, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 216
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 186
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 218
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :try_start_1
    const-string v1, "frames"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :goto_1
    return-object v0

    .line 220
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public a()V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/smaato/soma/q;->g()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 128
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/smaato/soma/q$1;

    invoke-direct {v2, p0, v0}, Lcom/smaato/soma/q$1;-><init>(Lcom/smaato/soma/q;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public a(JJ)V
    .locals 1

    .prologue
    .line 326
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/q;->b:Ljava/lang/String;

    .line 327
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/q;->a:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/smaato/soma/q;->m:Landroid/content/Context;

    .line 323
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 252
    :try_start_0
    invoke-static {}, Lcom/smaato/soma/debug/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/smaato/soma/q;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smaato/soma/q;->a(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/smaato/soma/q;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 132
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android SDK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 226
    invoke-static {}, Lcom/smaato/soma/debug/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 229
    :cond_0
    const-string v0, "Unknown Class"

    invoke-direct {p0, p1, v0}, Lcom/smaato/soma/q;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 231
    const/4 v0, 0x0

    .line 233
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/smaato/soma/q;->a(Ljava/lang/Throwable;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 238
    :goto_1
    :try_start_1
    invoke-virtual {p0, v2, v1, v0}, Lcom/smaato/soma/q;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 241
    invoke-direct {p0}, Lcom/smaato/soma/q;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    goto :goto_0

    .line 234
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/smaato/soma/q;->m:Landroid/content/Context;

    return-object v0
.end method
