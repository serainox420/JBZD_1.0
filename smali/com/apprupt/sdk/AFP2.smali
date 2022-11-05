.class public Lcom/apprupt/sdk/AFP2;
.super Ljava/lang/Object;
.source "AFP2.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/apprupt/sdk/Logger$log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/apprupt/sdk/AFP2;->a:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "AFP2"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/AFP2;->c:Lcom/apprupt/sdk/Logger$log;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/AFP2;->b:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic a(J)J
    .locals 0

    .prologue
    .line 15
    sput-wide p0, Lcom/apprupt/sdk/AFP2;->a:J

    return-wide p0
.end method

.method static synthetic a(Lcom/apprupt/sdk/AFP2;)Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/apprupt/sdk/AFP2;->c:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    sget-wide v2, Lcom/apprupt/sdk/AFP2;->a:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 25
    const-string v0, "AFP2"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "AFP2 call to early"

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 32
    :goto_0
    return-void

    .line 28
    :cond_0
    const-string v2, "AFP2"

    invoke-static {v2}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "AFP2 start.."

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 30
    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    sput-wide v0, Lcom/apprupt/sdk/AFP2;->a:J

    .line 31
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apprupt/sdk/AFP2;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/AFP2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/apprupt/sdk/AFP2;Ljava/util/Set;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/AFP2;->a(Ljava/util/Set;Ljava/util/Collection;)V

    return-void
.end method

.method private a(Ljava/util/Set;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 58
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 59
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 60
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 61
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 68
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 69
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 70
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/AFP2;->c:Lcom/apprupt/sdk/Logger$log;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "packages collected"

    aput-object v3, v2, v5

    aput-object p1, v2, v4

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 74
    invoke-static {}, Lcom/apprupt/sdk/CvAppInfo;->a()Lcom/apprupt/sdk/CvAppInfo;

    move-result-object v2

    .line 76
    :try_start_0
    const-string v3, "uid"

    invoke-virtual {v2}, Lcom/apprupt/sdk/CvAppInfo;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v2, "processes"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v2, "packages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    iget-object v1, p0, Lcom/apprupt/sdk/AFP2;->c:Lcom/apprupt/sdk/Logger$log;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "request data ready"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/CvCrypto;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "/afp2"

    invoke-static {v1}, Lcom/apprupt/sdk/CvUrl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apprupt/sdk/URLRequest;->b(Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v1

    new-instance v2, Lcom/apprupt/sdk/AFP2$2;

    invoke-direct {v2, p0}, Lcom/apprupt/sdk/AFP2$2;-><init>(Lcom/apprupt/sdk/AFP2;)V

    invoke-virtual {v1, v2}, Lcom/apprupt/sdk/URLRequest;->a(Lcom/apprupt/sdk/URLRequest$Listener;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v1

    const-string v2, "_"

    .line 99
    invoke-virtual {v1, v2, v0}, Lcom/apprupt/sdk/URLRequest;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/URLRequest;->b()Lcom/apprupt/sdk/URLRequest;

    .line 100
    iget-object v0, p0, Lcom/apprupt/sdk/AFP2;->c:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "request sent"

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 101
    :goto_2
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    iget-object v1, p0, Lcom/apprupt/sdk/AFP2;->c:Lcom/apprupt/sdk/Logger$log;

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while building request ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/apprupt/sdk/CvAppInfo;->a()Lcom/apprupt/sdk/CvAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/apprupt/sdk/CvAppInfo;->a:Lcom/apprupt/sdk/CvAppsList;

    new-instance v1, Lcom/apprupt/sdk/AFP2$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/AFP2$1;-><init>(Lcom/apprupt/sdk/AFP2;)V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvAppsList;->b(Lcom/apprupt/sdk/CvAppsList$MultiListener;)V

    .line 55
    return-void
.end method
