.class public Lcom/inmobi/commons/internal/EncryptionUtils;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/internal/EncryptionUtils$c;,
        Lcom/inmobi/commons/internal/EncryptionUtils$b;,
        Lcom/inmobi/commons/internal/EncryptionUtils$a;
    }
.end annotation


# static fields
.field private static a:[B

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/inmobi/commons/internal/EncryptionUtils;->a:[B

    .line 119
    const-string v0, "SHA1PRNG"

    sput-object v0, Lcom/inmobi/commons/internal/EncryptionUtils;->b:Ljava/lang/String;

    .line 120
    const-string v0, "Crypto"

    sput-object v0, Lcom/inmobi/commons/internal/EncryptionUtils;->c:Ljava/lang/String;

    .line 134
    const-string v0, "HmacSHA1"

    sput-object v0, Lcom/inmobi/commons/internal/EncryptionUtils;->d:Ljava/lang/String;

    .line 181
    const-string v0, "RSA"

    sput-object v0, Lcom/inmobi/commons/internal/EncryptionUtils;->e:Ljava/lang/String;

    .line 182
    const-string v0, "RSA/ECB/nopadding"

    sput-object v0, Lcom/inmobi/commons/internal/EncryptionUtils;->f:Ljava/lang/String;

    .line 235
    const-string v0, "aeskeygenerate"

    sput-object v0, Lcom/inmobi/commons/internal/EncryptionUtils;->g:Ljava/lang/String;

    .line 236
    const-string v0, "last_key_generate"

    sput-object v0, Lcom/inmobi/commons/internal/EncryptionUtils;->h:Ljava/lang/String;

    .line 266
    const-string v0, "AES/CBC/PKCS7Padding"

    sput-object v0, Lcom/inmobi/commons/internal/EncryptionUtils;->i:Ljava/lang/String;

    .line 267
    const-string v0, "AES"

    sput-object v0, Lcom/inmobi/commons/internal/EncryptionUtils;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    return-void
.end method

.method public static DeAe([B[B[B)[B
    .locals 1

    .prologue
    .line 114
    invoke-static {p0, p1, p2}, Lcom/inmobi/commons/internal/EncryptionUtils;->b([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static SeMeGe(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    invoke-static/range {p0 .. p5}, Lcom/inmobi/commons/internal/EncryptionUtils;->a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 35
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/inmobi/commons/internal/EncryptionUtils;->a([B[B[B)[B

    move-result-object v0

    .line 37
    invoke-static {v0, p3}, Lcom/inmobi/commons/internal/EncryptionUtils;->a([B[B)[B

    move-result-object v1

    .line 40
    invoke-static {v0}, Lcom/inmobi/commons/internal/EncryptionUtils;->a([B)[B

    move-result-object v0

    .line 41
    invoke-static {v1}, Lcom/inmobi/commons/internal/EncryptionUtils;->a([B)[B

    move-result-object v1

    .line 45
    invoke-static {p2}, Lcom/inmobi/commons/internal/EncryptionUtils;->a([B)[B

    move-result-object v2

    .line 46
    invoke-static {p1}, Lcom/inmobi/commons/internal/EncryptionUtils;->a([B)[B

    move-result-object v3

    .line 47
    invoke-static {p3}, Lcom/inmobi/commons/internal/EncryptionUtils;->a([B)[B

    move-result-object v4

    .line 50
    invoke-static {v3, v4}, Lcom/inmobi/commons/internal/EncryptionUtils;->b([B[B)[B

    move-result-object v3

    .line 51
    invoke-static {v3, v2}, Lcom/inmobi/commons/internal/EncryptionUtils;->b([B[B)[B

    move-result-object v2

    .line 53
    invoke-static {v2, p5, p4}, Lcom/inmobi/commons/internal/EncryptionUtils;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 54
    invoke-static {v2}, Lcom/inmobi/commons/internal/EncryptionUtils;->a([B)[B

    move-result-object v2

    .line 57
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/EncryptionUtils;->b([B[B)[B

    move-result-object v0

    .line 58
    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/EncryptionUtils;->b([B[B)[B

    move-result-object v0

    .line 60
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Base64;->encode([BI)[B

    move-result-object v1

    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()[B
    .locals 2

    .prologue
    .line 124
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/internal/EncryptionUtils;->b:Ljava/lang/String;

    sget-object v1, Lcom/inmobi/commons/internal/EncryptionUtils;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/inmobi/commons/internal/EncryptionUtils;->a:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :goto_0
    sget-object v0, Lcom/inmobi/commons/internal/EncryptionUtils;->a:[B

    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "NoSuchAlgorithmException"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :catch_1
    move-exception v0

    .line 129
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "NoSuchProviderException"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a([B)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 156
    .line 158
    array-length v0, p0

    int-to-long v0, v0

    .line 159
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 160
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 164
    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 166
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    return-object v1
.end method

.method private static a([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/16 v3, 0x10

    .line 185
    const/4 v1, 0x0

    .line 187
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 188
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 191
    :try_start_0
    sget-object v3, Lcom/inmobi/commons/internal/EncryptionUtils;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 193
    new-instance v4, Lcom/inmobi/commons/internal/EncryptionUtils$b;

    invoke-direct {v4, v0, v2}, Lcom/inmobi/commons/internal/EncryptionUtils$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 194
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 196
    sget-object v2, Lcom/inmobi/commons/internal/EncryptionUtils;->f:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 197
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 201
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v0, "[InMobi]-4.5.5"

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 215
    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    .line 206
    const-string v0, "[InMobi]-4.5.5"

    const-string v2, "InvalidKeySpecException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 215
    goto :goto_0

    .line 207
    :catch_2
    move-exception v0

    .line 208
    const-string v0, "[InMobi]-4.5.5"

    const-string v2, "NoSuchPaddingException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 215
    goto :goto_0

    .line 209
    :catch_3
    move-exception v0

    .line 210
    const-string v0, "[InMobi]-4.5.5"

    const-string v2, "InvalidKeyException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 215
    goto :goto_0

    .line 211
    :catch_4
    move-exception v0

    .line 212
    const-string v0, "[InMobi]-4.5.5"

    const-string v2, "IllegalBlockSizeException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 215
    goto :goto_0

    .line 213
    :catch_5
    move-exception v0

    .line 214
    const-string v0, "[InMobi]-4.5.5"

    const-string v2, "BadPaddingException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a([B[B)[B
    .locals 5

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 140
    new-instance v1, Lcom/inmobi/commons/internal/EncryptionUtils$c;

    const/4 v2, 0x0

    array-length v3, p1

    sget-object v4, Lcom/inmobi/commons/internal/EncryptionUtils;->d:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/inmobi/commons/internal/EncryptionUtils$c;-><init>([BIILjava/lang/String;)V

    .line 143
    :try_start_0
    sget-object v2, Lcom/inmobi/commons/internal/EncryptionUtils;->d:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 144
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 145
    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :catch_1
    move-exception v1

    .line 149
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "InvalidKeyException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a([B[B[B)[B
    .locals 5

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 86
    new-instance v1, Lcom/inmobi/commons/internal/EncryptionUtils$c;

    sget-object v2, Lcom/inmobi/commons/internal/EncryptionUtils;->j:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/inmobi/commons/internal/EncryptionUtils$c;-><init>([BLjava/lang/String;)V

    .line 88
    new-instance v2, Lcom/inmobi/commons/internal/EncryptionUtils$a;

    invoke-direct {v2, p2}, Lcom/inmobi/commons/internal/EncryptionUtils$a;-><init>([B)V

    .line 93
    :try_start_0
    sget-object v3, Lcom/inmobi/commons/internal/EncryptionUtils;->i:Ljava/lang/String;

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 94
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 95
    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :catch_1
    move-exception v1

    .line 100
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "NoSuchPaddingException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :catch_2
    move-exception v1

    .line 102
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "InvalidKeyException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :catch_3
    move-exception v1

    .line 104
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "IllegalBlockSizeException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :catch_4
    move-exception v1

    .line 106
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "BadPaddingException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :catch_5
    move-exception v1

    .line 108
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "InvalidAlgorithmParameterException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b()[B
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 239
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/internal/EncryptionUtils;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/inmobi/commons/internal/EncryptionUtils;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 243
    cmp-long v1, v8, v2

    if-nez v1, :cond_0

    .line 244
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Generating for first time"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 246
    sget-object v1, Lcom/inmobi/commons/internal/EncryptionUtils;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    invoke-static {}, Lcom/inmobi/commons/internal/EncryptionUtils;->a()[B

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 251
    const-wide/32 v6, 0x5265c00

    add-long/2addr v2, v6

    sub-long/2addr v2, v4

    .line 253
    cmp-long v1, v2, v8

    if-gtz v1, :cond_1

    .line 254
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "generated again"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    sget-object v1, Lcom/inmobi/commons/internal/EncryptionUtils;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    invoke-static {}, Lcom/inmobi/commons/internal/EncryptionUtils;->a()[B

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_1
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "already generated"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/inmobi/commons/internal/EncryptionUtils;->a:[B

    goto :goto_0
.end method

.method private static b([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    .line 223
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 225
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    return-object v0
.end method

.method private static b([B[B[B)[B
    .locals 5

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 290
    new-instance v1, Lcom/inmobi/commons/internal/EncryptionUtils$c;

    sget-object v2, Lcom/inmobi/commons/internal/EncryptionUtils;->j:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/inmobi/commons/internal/EncryptionUtils$c;-><init>([BLjava/lang/String;)V

    .line 295
    :try_start_0
    sget-object v2, Lcom/inmobi/commons/internal/EncryptionUtils;->i:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 296
    const/4 v3, 0x2

    new-instance v4, Lcom/inmobi/commons/internal/EncryptionUtils$a;

    invoke-direct {v4, p2}, Lcom/inmobi/commons/internal/EncryptionUtils$a;-><init>([B)V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 297
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :catch_1
    move-exception v1

    .line 301
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "NoSuchPaddingException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :catch_2
    move-exception v1

    .line 303
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "InvalidKeyException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :catch_3
    move-exception v1

    .line 305
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "IllegalBlockSizeException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :catch_4
    move-exception v1

    .line 307
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "BadPaddingException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :catch_5
    move-exception v1

    .line 309
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "InvalidAlgorithmParameterException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static generateKey(I)[B
    .locals 2

    .prologue
    .line 319
    :try_start_0
    new-array v0, p0, [B

    .line 320
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 321
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-object v0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static keag()[B
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/inmobi/commons/internal/EncryptionUtils;->b()[B

    move-result-object v0

    return-object v0
.end method
