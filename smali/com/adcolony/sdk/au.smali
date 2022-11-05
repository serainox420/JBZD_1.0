.class Lcom/adcolony/sdk/au;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/au$b;,
        Lcom/adcolony/sdk/au$a;
    }
.end annotation


# static fields
.field static final a:I = 0x80

.field static b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adcolony/sdk/au;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 171
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "1.0"

    .line 68
    :goto_0
    return-object v0

    .line 62
    :cond_0
    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    .line 63
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    sget-object v0, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v1, "Failed to retrieve package info."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 68
    const-string v0, "1.0"

    goto :goto_0
.end method

.method static a(DI)Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    invoke-static {p0, p1, p2, v0}, Lcom/adcolony/sdk/au;->a(DILjava/lang/StringBuilder;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 269
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(I)Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 102
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v1

    .line 103
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 105
    invoke-static {}, Lcom/adcolony/sdk/au;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-object v1
.end method

.method static a(DILjava/lang/StringBuilder;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0xa

    const/16 v7, 0x30

    .line 205
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    :cond_0
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    .line 213
    neg-double p0, p0

    .line 214
    const/16 v0, 0x2d

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    :cond_3
    if-nez p2, :cond_4

    .line 219
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 223
    :cond_4
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v2, v0

    .line 224
    long-to-double v0, v2

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 225
    div-long v4, v0, v2

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 226
    const/16 v4, 0x2e

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    rem-long v4, v0, v2

    .line 228
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_5

    .line 230
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    .line 232
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :cond_5
    mul-long v0, v4, v8

    :goto_2
    cmp-long v6, v0, v2

    if-gez v6, :cond_6

    .line 239
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    mul-long/2addr v0, v8

    goto :goto_2

    .line 241
    :cond_6
    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static a(Landroid/media/AudioManager;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 155
    if-nez p0, :cond_1

    .line 157
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "is_audio_enabled() called with a null AudioManager"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 160
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 36
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 49
    :goto_0
    return v0

    .line 43
    :cond_0
    :try_start_0
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 44
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 323
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 334
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 342
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 346
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 348
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 360
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Unable to process file for MD5"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 364
    :catchall_0
    move-exception v0

    .line 366
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 371
    :goto_1
    throw v0

    .line 325
    :catch_1
    move-exception v1

    .line 327
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "Exception while getting Digest"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 371
    :goto_2
    return v0

    .line 336
    :catch_2
    move-exception v1

    .line 338
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "Exception while getting FileInputStream"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_2

    .line 350
    :cond_0
    :try_start_5
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 351
    new-instance v1, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 352
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    const-string v1, "%40s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    .line 366
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 368
    :catch_3
    move-exception v1

    .line 370
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "Exception on closing MD5 input stream"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_2

    .line 368
    :catch_4
    move-exception v1

    .line 370
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "Exception on closing MD5 input stream"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_1
.end method

.method static b(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 74
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 76
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/zip/CRC32;->update(I)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c()D
    .locals 4

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    :try_start_0
    invoke-static {p0}, Lcom/adcolony/sdk/bb;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 260
    const-string v0, ""

    .line 263
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 139
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 143
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "String must be non-null and the max length is 128 characters."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static e()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 288
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 294
    if-lez v1, :cond_0

    .line 296
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method static e(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 176
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_1

    .line 180
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 182
    aget-object v2, v1, v0

    .line 183
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    sget-object v3, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adcolony/sdk/au;->e(Ljava/lang/String;)V

    .line 180
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    sget-object v3, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_1

    .line 194
    :cond_1
    return-void
.end method

.method static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    if-nez p0, :cond_0

    .line 251
    const-string v0, ""

    .line 253
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static f()Z
    .locals 2

    .prologue
    .line 304
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    .line 306
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static g(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 277
    const/16 v0, 0x10

    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 282
    :goto_0
    return v0

    .line 279
    :catch_0
    move-exception v0

    .line 281
    sget-object v0, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as a color."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 282
    const/high16 v0, -0x1000000

    goto :goto_0
.end method
