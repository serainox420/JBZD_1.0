.class Lcom/adcolony/sdk/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 461
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 462
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 463
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 464
    invoke-static {v0}, Lcom/adcolony/sdk/bb;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    array-length v6, p0

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_1

    aget-byte v7, p0, v4

    .line 448
    ushr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0xf

    move v1, v2

    .line 452
    :goto_1
    if-ltz v0, :cond_0

    const/16 v3, 0x9

    if-gt v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    and-int/lit8 v3, v7, 0xf

    .line 454
    add-int/lit8 v0, v1, 0x1

    const/4 v8, 0x1

    if-lt v1, v8, :cond_2

    .line 446
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 452
    :cond_0
    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    goto :goto_2

    .line 456
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v1, v0

    move v0, v3

    goto :goto_1
.end method
