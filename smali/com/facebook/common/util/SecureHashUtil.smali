.class public Lcom/facebook/common/util/SecureHashUtil;
.super Ljava/lang/Object;
.source "SecureHashUtil.java"


# static fields
.field static final HEX_CHAR_TABLE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/common/util/SecureHashUtil;->HEX_CHAR_TABLE:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    .line 72
    and-int/lit16 v3, v3, 0xff

    .line 73
    sget-object v4, Lcom/facebook/common/util/SecureHashUtil;->HEX_CHAR_TABLE:[B

    ushr-int/lit8 v5, v3, 0x4

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    sget-object v4, Lcom/facebook/common/util/SecureHashUtil;->HEX_CHAR_TABLE:[B

    and-int/lit8 v3, v3, 0xf

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeHash([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 82
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 83
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/facebook/common/util/SecureHashUtil;->convertToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 87
    :catch_1
    move-exception v0

    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static makeMD5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/SecureHashUtil;->makeMD5Hash([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static makeMD5Hash([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/facebook/common/util/SecureHashUtil;->makeHash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeSHA1Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/SecureHashUtil;->makeSHA1Hash([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static makeSHA1Hash([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/facebook/common/util/SecureHashUtil;->makeHash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeSHA1HashBase64([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 43
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 44
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static makeSHA256Hash([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "SHA-256"

    invoke-static {p0, v0}, Lcom/facebook/common/util/SecureHashUtil;->makeHash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
