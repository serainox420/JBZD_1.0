.class public Lcom/smaato/soma/internal/c/d;
.super Ljava/lang/Object;
.source "Converter.java"


# static fields
.field private static a:Lcom/smaato/soma/internal/c/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static a()Lcom/smaato/soma/internal/c/d;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/smaato/soma/internal/c/d;->a:Lcom/smaato/soma/internal/c/d;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/smaato/soma/internal/c/d;

    invoke-direct {v0}, Lcom/smaato/soma/internal/c/d;-><init>()V

    sput-object v0, Lcom/smaato/soma/internal/c/d;->a:Lcom/smaato/soma/internal/c/d;

    .line 53
    :cond_0
    sget-object v0, Lcom/smaato/soma/internal/c/d;->a:Lcom/smaato/soma/internal/c/d;

    return-object v0
.end method

.method private a([B)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToConvertDataToHex;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 64
    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v4, v1

    .line 65
    :goto_0
    array-length v0, p1

    if-ge v4, v0, :cond_1

    .line 66
    aget-byte v0, p1, v4

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    move v2, v0

    move v0, v1

    .line 69
    :goto_1
    if-ltz v2, :cond_0

    const/16 v3, 0x9

    if-gt v2, v3, :cond_0

    .line 70
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    :goto_2
    aget-byte v2, p1, v4

    and-int/lit8 v3, v2, 0xf

    .line 75
    add-int/lit8 v2, v0, 0x1

    const/4 v6, 0x1

    if-lt v0, v6, :cond_2

    .line 65
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 72
    :cond_0
    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    throw v0

    .line 77
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 80
    :catch_1
    move-exception v0

    .line 81
    new-instance v1, Lcom/smaato/soma/exception/UnableToConvertDataToHex;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToConvertDataToHex;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move v0, v2

    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToCalculateMinimalHeight;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x1

    const/high16 v1, 0x42480000    # 50.0f

    .line 118
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 116
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    float-to-int v0, v0

    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    throw v0

    .line 122
    :catch_1
    move-exception v0

    .line 123
    new-instance v1, Lcom/smaato/soma/exception/UnableToCalculateMinimalHeight;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToCalculateMinimalHeight;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Landroid/content/Context;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/PixelToDpFailed;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x1

    int-to-float v1, p2

    .line 139
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 137
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    float-to-int v0, v0

    return v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    throw v0

    .line 143
    :catch_1
    move-exception v0

    .line 144
    new-instance v1, Lcom/smaato/soma/exception/PixelToDpFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/PixelToDpFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 93
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 94
    const/16 v1, 0x28

    new-array v1, v1, [B

    .line 95
    const-string v1, "iso-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 96
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/c/d;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v5

    .line 100
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA Converter"

    const-string v2, "Error generating generating SHA-1: "

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->EXCEPTION:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct/range {v0 .. v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method
