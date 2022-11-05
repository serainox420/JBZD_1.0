.class Lcom/apprupt/sdk/CvAppInfo;
.super Ljava/lang/Object;
.source "CvAppInfo.java"


# static fields
.field private static c:Lcom/apprupt/sdk/CvAppInfo;


# instance fields
.field final a:Lcom/apprupt/sdk/CvAppsList;

.field final b:Lcom/apprupt/sdk/Events;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:I

.field private w:I

.field private x:F

.field private y:Landroid/content/Context;

.field private final z:Lcom/apprupt/sdk/Logger$log;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->e:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->f:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->g:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->h:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->i:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->j:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->k:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->l:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->m:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->n:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->o:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->p:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mozilla/5.0 (Linux; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Build/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AppleWebKit/unknown (KHTML, like Gecko) Chrome/unknown Mobile Safari/unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->q:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->r:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->s:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->t:Ljava/lang/String;

    .line 75
    iput-boolean v4, p0, Lcom/apprupt/sdk/CvAppInfo;->u:Z

    .line 76
    iput v4, p0, Lcom/apprupt/sdk/CvAppInfo;->v:I

    .line 77
    iput v4, p0, Lcom/apprupt/sdk/CvAppInfo;->w:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/apprupt/sdk/CvAppInfo;->x:F

    .line 80
    const-string v0, "APP_INFO"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    .line 82
    new-instance v0, Lcom/apprupt/sdk/Events;

    invoke-direct {v0}, Lcom/apprupt/sdk/Events;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->b:Lcom/apprupt/sdk/Events;

    .line 85
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing CvAppInfo on android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 86
    new-instance v0, Lcom/apprupt/sdk/CvAppsList;

    invoke-direct {v0, p1}, Lcom/apprupt/sdk/CvAppsList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->a:Lcom/apprupt/sdk/CvAppsList;

    .line 87
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvAppInfo;->f(Landroid/content/Context;)V

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->y:Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Lcom/apprupt/sdk/CvAppInfo;->v()V

    .line 91
    invoke-static {p1}, Lcom/apprupt/sdk/CvGeoLocation;->a(Landroid/content/Context;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvAppInfo;->c(Landroid/content/Context;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvAppInfo;->d(Landroid/content/Context;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvAppInfo;->e(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 97
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/apprupt/sdk/CvAppInfo;->o:Ljava/lang/String;

    .line 98
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->p:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/apprupt/sdk/CvAppInfo;->z()V

    .line 101
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvAppInfo;->b(Landroid/content/Context;)V

    .line 102
    invoke-direct {p0}, Lcom/apprupt/sdk/CvAppInfo;->w()V

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAppInfo;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lcom/apprupt/sdk/CvFeaturesList;->a:[I

    sget-object v1, Lcom/apprupt/sdk/CvFeaturesList;->a:[I

    aget v1, v1, v4

    and-int/lit8 v1, v1, -0x3

    aput v1, v0, v4

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->b:Lcom/apprupt/sdk/Events;

    invoke-virtual {v0, p1}, Lcom/apprupt/sdk/Events;->a(Landroid/content/Context;)V

    .line 108
    return-void

    .line 103
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvAppInfo;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->y:Landroid/content/Context;

    return-object v0
.end method

.method static a()Lcom/apprupt/sdk/CvAppInfo;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/apprupt/sdk/CvAppInfo;->c:Lcom/apprupt/sdk/CvAppInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvAppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/apprupt/sdk/CvAppInfo;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    const-string v1, "s%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "ys"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v1, "c%sss"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "la"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v1, "n%st"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "e"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const-string v1, "ad%sss"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "dre"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 286
    :cond_0
    const-string v0, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 287
    const/4 v1, 0x0

    .line 289
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 291
    invoke-direct {p0, v3}, Lcom/apprupt/sdk/CvAppInfo;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 292
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 298
    :goto_1
    iget-object v1, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DATA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 299
    return-object v0

    .line 293
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 294
    :goto_2
    iget-object v2, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Error while reading mac from file"

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_1

    .line 295
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 296
    :goto_3
    iget-object v2, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while reading mac from file ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_1

    .line 295
    :catch_2
    move-exception v1

    goto :goto_3

    .line 293
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/apprupt/sdk/CvAppInfo;->c:Lcom/apprupt/sdk/CvAppInfo;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lcom/apprupt/sdk/CvAppInfo;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/apprupt/sdk/CvAppInfo;->c:Lcom/apprupt/sdk/CvAppInfo;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/apprupt/sdk/CvAppInfo;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvAppInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apprupt/sdk/CvAppInfo;->c:Lcom/apprupt/sdk/CvAppInfo;

    .line 46
    :cond_0
    monitor-exit v1

    .line 48
    :cond_1
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvAppInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvAppInfo;->g(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvAppInfo;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/apprupt/sdk/CvAppInfo;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvAppInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvAppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/apprupt/sdk/CvAppInfo;->j:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 149
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 150
    const/4 v1, 0x0

    .line 151
    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_0
    if-nez v0, :cond_0

    .line 155
    const-string v0, ""

    .line 157
    :cond_0
    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->t:Ljava/lang/String;

    .line 158
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/apprupt/sdk/CvAppInfo;)Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method static synthetic c(Lcom/apprupt/sdk/CvAppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/apprupt/sdk/CvAppInfo;->k:Ljava/lang/String;

    return-object p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 328
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 329
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 330
    if-eqz v0, :cond_6

    .line 331
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_5

    .line 333
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    .line 334
    iget-object v1, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got mac address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 345
    :cond_0
    const-string v0, "et%s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "h%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvAppInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 348
    :cond_2
    const-string v0, "et%s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "h%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvAppInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 351
    :cond_4
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    .line 352
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->m:Ljava/lang/String;

    .line 353
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->n:Ljava/lang/String;

    .line 354
    invoke-static {}, Lcom/apprupt/sdk/Logger;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "WiFi interface MAC address unavailable."

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->c([Ljava/lang/Object;)V

    .line 361
    :goto_1
    return-void

    .line 336
    :cond_5
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Cannot get connection info"

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 339
    :cond_6
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Cannot get WifiManager"

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 342
    :cond_7
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "ACCESS_WIFI_STATE permission is missing"

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 358
    :cond_8
    invoke-direct {p0}, Lcom/apprupt/sdk/CvAppInfo;->y()V

    .line 359
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private d(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 388
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 389
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 390
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apprupt/sdk/CvAppInfo;->f:Ljava/lang/String;

    .line 391
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->g:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMEI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/apprupt/sdk/CvAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM card serial number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/apprupt/sdk/CvAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 398
    :goto_0
    return-void

    .line 395
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->f:Ljava/lang/String;

    .line 396
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 450
    .line 453
    const-string v1, ""

    move v3, v4

    .line 454
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "9774d56d682e549c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 490
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->e:Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v9, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_ID unavailable or invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "android_id"

    invoke-static {v3, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 492
    invoke-static {}, Lcom/apprupt/sdk/Logger;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "ANDROID_ID unavailable or invalid."

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->c([Ljava/lang/Object;)V

    .line 501
    :goto_1
    return-void

    .line 457
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    const-string v0, "Secure.ANDROID_ID"

    .line 495
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 462
    :pswitch_1
    :try_start_0
    const-class v0, Landroid/os/Build;

    .line 463
    const-string v5, "SERIAL"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 464
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :try_start_1
    const-string v1, "Build.SERIAL"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 467
    goto :goto_2

    .line 466
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_3
    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 468
    goto :goto_2

    .line 471
    :pswitch_2
    :try_start_2
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 472
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 473
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.serialno"

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 474
    :try_start_3
    const-string v1, "SystemProperties.ro.serialno"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 476
    goto :goto_2

    .line 475
    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_4
    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 477
    goto :goto_2

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v3, v9, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UDID from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-interface {v0, v3}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 498
    iput-object v2, p0, Lcom/apprupt/sdk/CvAppInfo;->e:Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/apprupt/sdk/CvHash;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->h:Ljava/lang/String;

    .line 500
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/apprupt/sdk/CvHash;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->l:Ljava/lang/String;

    goto/16 :goto_1

    .line 475
    :catch_2
    move-exception v2

    goto :goto_4

    .line 466
    :catch_3
    move-exception v2

    goto :goto_3

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private f(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 504
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 505
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvAppInfo;->g(Landroid/content/Context;)V

    .line 513
    :goto_0
    return-void

    .line 507
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/apprupt/sdk/CvAppInfo$2;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvAppInfo$2;-><init>(Lcom/apprupt/sdk/CvAppInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private g(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 516
    monitor-enter p0

    .line 518
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->q:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 519
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private v()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DETERMINING ADVIDENT!"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 116
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apprupt/sdk/CvAppInfo$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvAppInfo$1;-><init>(Lcom/apprupt/sdk/CvAppInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 146
    return-void
.end method

.method private w()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 229
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/apprupt/sdk/CvAppInfo;->x:F

    .line 230
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Lcom/apprupt/sdk/CvAppInfo;->x:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/apprupt/sdk/CvAppInfo;->v:I

    .line 231
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/apprupt/sdk/CvAppInfo;->x:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/apprupt/sdk/CvAppInfo;->w:I

    .line 232
    return-void
.end method

.method private x()Ljava/lang/String;
    .locals 5

    .prologue
    .line 244
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 245
    const-string v1, "udid_md5"

    iget-object v2, p0, Lcom/apprupt/sdk/CvAppInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v1, "udid_sha1"

    iget-object v2, p0, Lcom/apprupt/sdk/CvAppInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v1, "mac_md5"

    iget-object v2, p0, Lcom/apprupt/sdk/CvAppInfo;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v1, "mac_sha1"

    iget-object v2, p0, Lcom/apprupt/sdk/CvAppInfo;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v1, "advident"

    iget-object v2, p0, Lcom/apprupt/sdk/CvAppInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v1, "advident_sha1"

    iget-object v2, p0, Lcom/apprupt/sdk/CvAppInfo;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v1, "advident_md5"

    iget-object v2, p0, Lcom/apprupt/sdk/CvAppInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/CvCrypto;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    iget-object v1, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Caught exception while building UID object"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 256
    const-string v0, ""

    goto :goto_0
.end method

.method private y()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    const-string v1, "^[0-9a-fA-F]{2}([^0-9a-fA-F][0-9a-fA-F]{2}){5}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    const-string v1, "[^0-9a-fA-F]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_0
    array-length v1, v0

    new-array v3, v1, [B

    move v1, v2

    .line 319
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 320
    aget-object v4, v0, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    aget-object v5, v0, v1

    .line 321
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    const-string v1, "^[0-9a-fA-F]{12}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    new-array v0, v7, [Ljava/lang/String;

    move v1, v2

    move v3, v2

    .line 308
    :goto_1
    if-ge v3, v7, :cond_0

    .line 309
    iget-object v4, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 308
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAC incorrect or has strange formatting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cannot extract data for hashes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->c([Ljava/lang/Object;)V

    .line 313
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    .line 314
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->n:Ljava/lang/String;

    .line 315
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->m:Ljava/lang/String;

    .line 325
    :goto_2
    return-void

    .line 323
    :cond_3
    invoke-static {v3}, Lcom/apprupt/sdk/CvHash;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->n:Ljava/lang/String;

    .line 324
    invoke-static {v3}, Lcom/apprupt/sdk/CvHash;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->m:Ljava/lang/String;

    goto :goto_2
.end method

.method private z()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    .line 404
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 413
    :goto_0
    const-string v2, "%s|%s|%s|%s|%s|%s|%s|%s|%s"

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/apprupt/sdk/CvAppInfo;->d:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/apprupt/sdk/CvAppInfo;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/apprupt/sdk/CvAppInfo;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/apprupt/sdk/CvAppInfo;->g:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x4

    iget-object v4, p0, Lcom/apprupt/sdk/CvAppInfo;->f:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x5

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x6

    aput-object v0, v3, v1

    const/4 v0, 0x7

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v1, v3, v0

    const/16 v0, 0x8

    sget-wide v4, Landroid/os/Build;->TIME:J

    .line 423
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0x9

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v1, v3, v0

    .line 413
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {v0}, Lcom/apprupt/sdk/CvHash;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apprupt/sdk/CvAppInfo;->r:Ljava/lang/String;

    .line 427
    invoke-static {v0}, Lcom/apprupt/sdk/CvHash;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->s:Ljava/lang/String;

    .line 429
    return-void

    .line 406
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 407
    :goto_1
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 408
    if-lez v0, :cond_1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_1
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 411
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method b()Lcom/apprupt/sdk/Connectivity;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/apprupt/sdk/Connectivity;

    iget-object v1, p0, Lcom/apprupt/sdk/CvAppInfo;->y:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/Connectivity;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->t:Ljava/lang/String;

    return-object v0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Z
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->y:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 170
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    const-string v0, ""

    .line 183
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAppInfo;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const-string v0, "Android Tablet"

    .line 189
    :cond_0
    :goto_0
    const-string v1, "%s;%s;%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAppInfo;->p()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 193
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAppInfo;->q()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 189
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAppInfo;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v0, "Android Phone"

    goto :goto_0
.end method

.method g()Lcom/apprupt/sdk/SimpleJSON;
    .locals 8

    .prologue
    .line 198
    new-instance v4, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v4}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 200
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v6, v1

    .line 206
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v6

    .line 208
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v6

    .line 214
    :goto_0
    const-string v5, "total"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 215
    const-string v0, "free"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 219
    :goto_1
    return-object v4

    .line 210
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    .line 211
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    mul-long/2addr v2, v6

    .line 212
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    mul-long/2addr v0, v6

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 223
    const-string v0, "%dx%d;24;%.2f"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/apprupt/sdk/CvAppInfo;->v:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/apprupt/sdk/CvAppInfo;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/apprupt/sdk/CvAppInfo;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->y:Landroid/content/Context;

    iget-object v1, p0, Lcom/apprupt/sdk/CvAppInfo;->y:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 236
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method j()Z
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->y:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 261
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method k()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 364
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->y:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 365
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->y:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 366
    if-eqz v0, :cond_2

    .line 367
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_0

    .line 384
    :goto_0
    return-object v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "BSSID is null"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->c([Ljava/lang/Object;)V

    .line 384
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Cannot get connection info"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_1

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Cannot get WifiManager"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_1

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "ACCESS_WIFI_STATE permission is missing"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method l()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 433
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 435
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 437
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 438
    new-instance v3, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v3}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 439
    const-string v4, "name"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 440
    const-string v4, "address"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 441
    iget-object v0, v3, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 446
    :cond_0
    return-object v1
.end method

.method m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/apprupt/sdk/CvAppInfo;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method o()Ljava/lang/String;
    .locals 5

    .prologue
    .line 563
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->z:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning userAgent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/apprupt/sdk/CvAppInfo;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 564
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method q()Ljava/lang/String;
    .locals 4

    .prologue
    .line 576
    const-string v0, "Android %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvAppInfo;->u:Z

    return v0
.end method
