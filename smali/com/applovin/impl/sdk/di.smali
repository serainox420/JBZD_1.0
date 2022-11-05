.class public Lcom/applovin/impl/sdk/di;
.super Lcom/applovin/sdk/AppLovinSdkUtils;


# static fields
.field private static final a:[C

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/di;->a:[C

    const-string v0, "-\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/di;->b:[C

    return-void
.end method

.method public static a(F)F
    .locals 1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    return v0
.end method

.method public static a(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v5, p2, :cond_0

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v5, p2, :cond_1

    :cond_0
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, p2

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v4, v1

    div-double v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    int-to-double v4, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v1, v4

    :cond_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :try_start_1
    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v4, p1, :cond_0

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v4, p1, :cond_1

    :cond_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, p1

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v0, v4

    :cond_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    throw v0

    :catch_1
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method public static a()Lcom/applovin/impl/sdk/AppLovinAdImpl;
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setHtml(Ljava/lang/String;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setSize(Lcom/applovin/sdk/AppLovinAdSize;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setType(Lcom/applovin/sdk/AppLovinAdType;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setVideoFilename(Ljava/lang/String;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->DEFAULT:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setTarget(Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/adview/v;->a:Lcom/applovin/impl/adview/v;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setCloseStyle(Lcom/applovin/impl/adview/v;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setVideoCloseDelay(F)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setCloseDelay(F)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setCountdownLength(I)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setCurrentAdIdNumber(J)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->setClCode(Ljava/lang/String;)Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl$Builder;->build()Lcom/applovin/impl/sdk/AppLovinAdImpl;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NOKEY"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/applovin/impl/sdk/bx;->n:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->m:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/applovin/impl/sdk/di;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No algorithm specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_3

    :cond_1
    const-string p0, ""

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_2

    const-string v0, "none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/di;->a([B)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown algorithm \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Programming error: UTF-8 is not know encoding"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    :goto_0
    invoke-static {p0}, Lcom/applovin/impl/sdk/di;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{PLACEMENT}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method static a(Ljava/util/Collection;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No glue specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-lt v1, p2, :cond_5

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No data specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/applovin/impl/sdk/di;->a:[C

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/applovin/impl/sdk/di;->a:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(Lcom/applovin/sdk/AppLovinSdk;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    check-cast p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v0, Lcom/applovin/impl/sdk/bx;->C:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static b(F)J
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SHA-1"

    invoke-static {p0, v0, v1}, Lcom/applovin/impl/sdk/di;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(F)J
    .locals 2

    invoke-static {p0}, Lcom/applovin/impl/sdk/di;->a(F)F

    move-result v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/di;->b(F)J

    move-result-wide v0

    return-wide v0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/applovin/impl/sdk/di;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
