.class public Lpl/jbzd/core/a/a;
.super Ljava/lang/Object;
.source "CoreUtils.java"


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput v0, Lpl/jbzd/core/a/a;->a:I

    .line 28
    sput v0, Lpl/jbzd/core/a/a;->b:I

    return-void
.end method

.method public static a(I)I
    .locals 2

    .prologue
    .line 32
    int-to-float v0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 50
    sget v0, Lpl/jbzd/core/a/a;->b:I

    if-nez v0, :cond_0

    .line 52
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 53
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 56
    iget v0, v1, Landroid/graphics/Point;->x:I

    sput v0, Lpl/jbzd/core/a/a;->a:I

    .line 57
    iget v0, v1, Landroid/graphics/Point;->y:I

    sput v0, Lpl/jbzd/core/a/a;->b:I

    .line 60
    :cond_0
    sget v0, Lpl/jbzd/core/a/a;->b:I

    return v0
.end method

.method public static a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 136
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 140
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, v2, v0

    .line 141
    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 148
    :goto_1
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    const-string v0, ""

    goto :goto_1
.end method

.method public static a(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 162
    if-eqz p0, :cond_0

    .line 164
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 168
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 170
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lpl/jbzd/core/a/a;->a(Ljava/io/File;)Z

    move-result v4

    .line 172
    if-nez v4, :cond_1

    .line 185
    :cond_0
    :goto_1
    return v0

    .line 168
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_1
.end method

.method public static b(ILandroid/content/Context;)I
    .locals 2

    .prologue
    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 202
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 203
    invoke-static {p1, p0}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v0

    .line 206
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 65
    sget v0, Lpl/jbzd/core/a/a;->a:I

    if-nez v0, :cond_0

    .line 67
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 68
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 71
    iget v0, v1, Landroid/graphics/Point;->x:I

    sput v0, Lpl/jbzd/core/a/a;->a:I

    .line 72
    iget v0, v1, Landroid/graphics/Point;->y:I

    sput v0, Lpl/jbzd/core/a/a;->b:I

    .line 75
    :cond_0
    sget v0, Lpl/jbzd/core/a/a;->a:I

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    if-eqz p0, :cond_1

    .line 93
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 95
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 98
    goto :goto_0

    :cond_1
    move v0, v1

    .line 102
    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lpl/jbzd/core/a/a;->a(Ljava/io/File;)Z
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
