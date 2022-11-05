.class public Lcom/smaato/soma/video/a/a;
.super Ljava/lang/Object;
.source "DiskCacheService.java"


# static fields
.field private static a:Lcom/smaato/soma/video/a/b;


# direct methods
.method public static a(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 96
    const-wide/32 v0, 0x1e00000

    invoke-static {p0, v0, v1}, Lcom/smaato/soma/video/a/a;->a(Ljava/io/File;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/io/File;J)J
    .locals 5

    .prologue
    .line 103
    .line 105
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    .line 107
    const-wide/16 v2, 0x32

    div-long p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    const-wide/32 v0, 0x6400000

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x1e00000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "DiskCacheService"

    const-string v2, "DiskCacheServiceUnable to calculate 2% of available disk space, defaulting to minimum"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/smaato/soma/video/a/b;)Lcom/smaato/soma/video/a/b;
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/smaato/soma/video/a/a;->a:Lcom/smaato/soma/video/a/b;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smaato/soma/internal/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 49
    :cond_0
    sget-object v0, Lcom/smaato/soma/video/a/a;->a:Lcom/smaato/soma/video/a/b;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/smaato/soma/video/a/a$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/a/a$1;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v0}, Lcom/smaato/soma/video/a/a$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 198
    sget-object v2, Lcom/smaato/soma/video/a/a;->a:Lcom/smaato/soma/video/a/b;

    if-nez v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    const/4 v2, 0x0

    .line 204
    :try_start_0
    sget-object v3, Lcom/smaato/soma/video/a/a;->a:Lcom/smaato/soma/video/a/b;

    invoke-static {p0}, Lcom/smaato/soma/video/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smaato/soma/video/a/b;->b(Ljava/lang/String;)Lcom/smaato/soma/video/a/b$a;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_0

    .line 211
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/4 v4, 0x0

    .line 212
    invoke-virtual {v2, v4}, Lcom/smaato/soma/video/a/b$a;->a(I)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    invoke-static {p1, v3}, Lcom/smaato/soma/video/a/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 214
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 215
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 217
    sget-object v3, Lcom/smaato/soma/video/a/a;->a:Lcom/smaato/soma/video/a/b;

    invoke-virtual {v3}, Lcom/smaato/soma/video/a/b;->b()V

    .line 218
    invoke-virtual {v2}, Lcom/smaato/soma/video/a/b$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 235
    goto :goto_0

    .line 219
    :catch_0
    move-exception v3

    .line 221
    new-instance v3, Lcom/smaato/soma/debug/b;

    const-string v4, "DiskCacheService"

    const-string v5, "DiskCacheServiceUnable to put to DiskLruCache"

    sget-object v6, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v3}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 227
    if-eqz v2, :cond_0

    .line 228
    :try_start_1
    invoke-virtual {v2}, Lcom/smaato/soma/video/a/b$a;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 230
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/smaato/soma/video/a/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 124
    sget-object v1, Lcom/smaato/soma/video/a/a;->a:Lcom/smaato/soma/video/a/b;

    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    :try_start_0
    sget-object v1, Lcom/smaato/soma/video/a/a;->a:Lcom/smaato/soma/video/a/b;

    invoke-static {p0}, Lcom/smaato/soma/video/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smaato/soma/video/a/b;->a(Ljava/lang/String;)Lcom/smaato/soma/video/a/b$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "smaato-cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/smaato/soma/video/a/a;->a:Lcom/smaato/soma/video/a/b;

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/smaato/soma/video/a/a;->a:Lcom/smaato/soma/video/a/b;

    invoke-virtual {v1}, Lcom/smaato/soma/video/a/b;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    invoke-static {p0}, Lcom/smaato/soma/video/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
