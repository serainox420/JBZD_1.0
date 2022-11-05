.class Lcom/apprupt/sdk/CvBase64;
.super Ljava/lang/Object;
.source "CvBase64.java"


# static fields
.field private static final a:[C

.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvBase64;->a:[C

    .line 14
    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lcom/apprupt/sdk/CvBase64;->b:[I

    .line 17
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/apprupt/sdk/CvBase64;->a:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 18
    sget-object v1, Lcom/apprupt/sdk/CvBase64;->b:[I

    sget-object v2, Lcom/apprupt/sdk/CvBase64;->a:[C

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x3d

    const/4 v1, 0x0

    .line 29
    array-length v5, p0

    .line 30
    add-int/lit8 v0, v5, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v6, v0, [C

    move v2, v1

    move v3, v1

    .line 33
    :goto_0
    if-ge v2, v5, :cond_2

    .line 34
    add-int/lit8 v0, v2, 0x1

    aget-byte v7, p0, v2

    .line 35
    if-ge v0, v5, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    move v4, v0

    move v0, v2

    .line 36
    :goto_1
    if-ge v0, v5, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    .line 38
    :goto_2
    const/16 v8, 0x3f

    .line 39
    add-int/lit8 v9, v3, 0x1

    sget-object v10, Lcom/apprupt/sdk/CvBase64;->a:[C

    shr-int/lit8 v11, v7, 0x2

    and-int/2addr v11, v8

    aget-char v10, v10, v11

    aput-char v10, v6, v3

    .line 40
    add-int/lit8 v3, v9, 0x1

    sget-object v10, Lcom/apprupt/sdk/CvBase64;->a:[C

    shl-int/lit8 v7, v7, 0x4

    and-int/lit16 v11, v4, 0xff

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v7, v11

    and-int/2addr v7, v8

    aget-char v7, v10, v7

    aput-char v7, v6, v9

    .line 41
    add-int/lit8 v7, v3, 0x1

    sget-object v9, Lcom/apprupt/sdk/CvBase64;->a:[C

    shl-int/lit8 v4, v4, 0x2

    and-int/lit16 v10, v0, 0xff

    shr-int/lit8 v10, v10, 0x6

    or-int/2addr v4, v10

    and-int/2addr v4, v8

    aget-char v4, v9, v4

    aput-char v4, v6, v3

    .line 42
    add-int/lit8 v3, v7, 0x1

    sget-object v4, Lcom/apprupt/sdk/CvBase64;->a:[C

    and-int/2addr v0, v8

    aget-char v0, v4, v0

    aput-char v0, v6, v7

    goto :goto_0

    :cond_0
    move v4, v1

    .line 35
    goto :goto_1

    :cond_1
    move v2, v0

    move v0, v1

    .line 36
    goto :goto_2

    .line 44
    :cond_2
    rem-int/lit8 v0, v5, 0x3

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 46
    :pswitch_0
    add-int/lit8 v0, v3, -0x1

    aput-char v12, v6, v0

    .line 48
    :goto_4
    add-int/lit8 v0, v0, -0x1

    aput-char v12, v6, v0

    goto :goto_3

    :pswitch_1
    move v0, v3

    goto :goto_4

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 79
    :try_start_0
    const-string v0, "=="

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 80
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int v0, v2, v0

    new-array v0, v0, [B

    .line 81
    const/16 v3, 0xff

    move v2, v1

    .line 83
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 84
    sget-object v4, Lcom/apprupt/sdk/CvBase64;->b:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v4, v4, v5

    .line 85
    sget-object v5, Lcom/apprupt/sdk/CvBase64;->b:[I

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v5, v5, v6

    .line 86
    add-int/lit8 v6, v2, 0x1

    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v7, v5, 0x4

    or-int/2addr v4, v7

    and-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 87
    array-length v2, v0

    if-lt v6, v2, :cond_3

    .line 100
    :cond_0
    :goto_2
    return-object v0

    .line 79
    :cond_1
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 90
    :cond_3
    sget-object v2, Lcom/apprupt/sdk/CvBase64;->b:[I

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v4, v2, v4

    .line 91
    add-int/lit8 v7, v6, 0x1

    shl-int/lit8 v2, v5, 0x4

    shr-int/lit8 v5, v4, 0x2

    or-int/2addr v2, v5

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 92
    array-length v2, v0

    if-ge v7, v2, :cond_0

    .line 95
    sget-object v2, Lcom/apprupt/sdk/CvBase64;->b:[I

    add-int/lit8 v5, v1, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v5, v2, v5

    .line 96
    add-int/lit8 v2, v7, 0x1

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v5

    and-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v7
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static b([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    invoke-static {p0}, Lcom/apprupt/sdk/CvBase64;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 55
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 56
    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    .line 55
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :sswitch_0
    const/16 v2, 0x2d

    aput-char v2, v1, v0

    goto :goto_1

    .line 61
    :sswitch_1
    const/16 v2, 0x5f

    aput-char v2, v1, v0

    goto :goto_1

    .line 64
    :sswitch_2
    const/16 v2, 0x7e

    aput-char v2, v1, v0

    goto :goto_1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x2f -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 107
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 108
    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    .line 107
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :sswitch_0
    const/16 v2, 0x2b

    aput-char v2, v1, v0

    goto :goto_1

    .line 113
    :sswitch_1
    const/16 v2, 0x2f

    aput-char v2, v1, v0

    goto :goto_1

    .line 116
    :sswitch_2
    const/16 v2, 0x3d

    aput-char v2, v1, v0

    goto :goto_1

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvBase64;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_0
        0x5f -> :sswitch_1
        0x7e -> :sswitch_2
    .end sparse-switch
.end method
