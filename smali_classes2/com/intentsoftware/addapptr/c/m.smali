.class public Lcom/intentsoftware/addapptr/c/m;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final MINIMUM_TABLET_SIZE_INCHES:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 74
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 75
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 76
    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 77
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 46
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const/4 v0, 0x0

    .line 50
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const-class v1, Lcom/intentsoftware/addapptr/c/m;

    const-string v2, "Decoding bitmap failed!"

    invoke-static {v1, v2}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadBitmapForView(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/intentsoftware/addapptr/c/m$1;

    invoke-direct {v0, p1}, Lcom/intentsoftware/addapptr/c/m$1;-><init>(Landroid/widget/ImageView;)V

    .line 69
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    return-void
.end method

.method public static stringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x0

    .line 22
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    new-array v2, v6, [C

    .line 28
    :goto_0
    invoke-virtual {v0, v2, v5, v6}, Ljava/io/BufferedReader;->read([CII)I

    move-result v3

    .line 30
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 31
    invoke-virtual {v1, v2, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
