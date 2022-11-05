.class public Lcom/inmobi/commons/internal/InternalSDKUtil;
.super Ljava/lang/Object;
.source "InternalSDKUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/internal/InternalSDKUtil$a;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTIVITY_UPDATE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final ACTION_RECEIVER_REFERRER:Ljava/lang/String; = "com.android.vending.INSTALL_REFERRER"

.field public static final ACTION_SHARE_INMID:Ljava/lang/String; = "com.inmobi.share.id"

.field public static final BASE_LOG_TAG:Ljava/lang/String; = "[InMobi]"

.field public static final CACHE_DIR_NAME:Ljava/lang/String; = "im_cached_content"

.field public static final IM_PREF:Ljava/lang/String; = "impref"

.field public static final INMOBI_SDK_RELEASE_DATE:Ljava/lang/String; = "20150522"

.field public static final INMOBI_SDK_RELEASE_VERSION:Ljava/lang/String; = "4.5.5"

.field public static final KEY_LTVID:Ljava/lang/String; = "ltvid"

.field public static final LOGGING_TAG:Ljava/lang/String; = "[InMobi]-4.5.5"

.field public static final PRODUCT_COMMONS:Ljava/lang/String; = "commons"

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/inmobi/commons/internal/CommonsConfig;

.field private static c:Ljava/lang/String;

.field private static d:Landroid/content/Context;

.field private static e:Lcom/inmobi/commons/cache/CacheController$Validator;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->a:Ljava/util/Map;

    .line 74
    new-instance v0, Lcom/inmobi/commons/internal/CommonsConfig;

    invoke-direct {v0}, Lcom/inmobi/commons/internal/CommonsConfig;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Lcom/inmobi/commons/internal/CommonsConfig;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Landroid/content/Context;

    .line 761
    new-instance v0, Lcom/inmobi/commons/internal/InternalSDKUtil$1;

    invoke-direct {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil$1;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    .line 767
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    return-void
.end method

.method public static JSONToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 720
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 721
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 724
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 731
    :goto_1
    return-object v0

    .line 730
    :catch_1
    move-exception v0

    .line 731
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 785
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/uid/UID;->getMapForEncryption(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->a:Ljava/util/Map;

    .line 786
    return-void
.end method

.method static a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 770
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a()V

    .line 773
    :try_start_0
    new-instance v0, Lcom/inmobi/commons/internal/CommonsConfig;

    invoke-direct {v0}, Lcom/inmobi/commons/internal/CommonsConfig;-><init>()V

    .line 774
    invoke-virtual {v0, p0}, Lcom/inmobi/commons/internal/CommonsConfig;->setFromMap(Ljava/util/Map;)V

    .line 775
    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Lcom/inmobi/commons/internal/CommonsConfig;

    .line 776
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/CommonsConfig;->getApiStatsConfig()Lcom/inmobi/commons/metric/MetricConfigParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/metric/Logger;->setMetricConfigParams(Lcom/inmobi/commons/metric/MetricConfigParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    const/4 v0, 0x1

    .line 780
    :goto_0
    return v0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 780
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([BILjavax/crypto/Cipher;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x40

    const/4 v0, 0x0

    .line 228
    new-array v2, v0, [B

    .line 229
    new-array v3, v0, [B

    .line 231
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 232
    :cond_0
    array-length v4, p0

    .line 234
    new-array v2, v1, [B

    move v7, v0

    move-object v0, v2

    move-object v2, v3

    move v3, v7

    .line 236
    :goto_0
    if-ge v3, v4, :cond_2

    .line 237
    if-lez v3, :cond_1

    rem-int v5, v3, v1

    if-nez v5, :cond_1

    .line 238
    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 239
    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B[B)[B

    move-result-object v2

    .line 241
    add-int/lit8 v0, v3, 0x40

    if-le v0, v4, :cond_3

    .line 242
    sub-int v0, v4, v3

    .line 244
    :goto_1
    new-array v0, v0, [B

    .line 246
    :cond_1
    rem-int v5, v3, v1

    aget-byte v6, p0, v3

    aput-byte v6, v0, v5

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 250
    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B[B)[B

    move-result-object v0

    .line 252
    return-object v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static a([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 755
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 756
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 758
    return-object v0
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    const/16 v0, 0x10

    :try_start_0
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 162
    const/4 v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    aput-char v3, v1, v2

    const/4 v2, 0x1

    and-int/lit8 v3, p0, 0xf

    aget-char v0, v0, v3

    aput-char v0, v1, v2

    .line 163
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static checkNetworkAvailibility(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 361
    if-nez p0, :cond_0

    move v0, v1

    .line 373
    :goto_0
    return v0

    .line 365
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 367
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    .line 368
    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot check network state"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 373
    goto :goto_0
.end method

.method public static clearSdkCacheDirectory(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    invoke-static {p0}, Lcom/inmobi/commons/internal/FileOperations;->deleteDirectory(Ljava/io/File;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inmobi/commons/internal/FileOperations;->deleteDirectory(Ljava/io/File;)V

    goto :goto_0
.end method

.method public static convertListToDelimitedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 649
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 650
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    :catch_0
    move-exception v1

    .line 654
    const-string v3, "[InMobi]-4.5.5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception Converting map to deliminated string "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 658
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeMapAndconvertToDelimitedString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 633
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 634
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    :cond_0
    const-string v3, "%s=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    const-string v3, "[InMobi]-4.5.5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception Converting map to deliminated string "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 642
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptRSA(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 196
    .line 197
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 222
    :goto_0
    return-object v0

    .line 202
    :cond_1
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "C10F7968CFE2C76AC6F0650C877806D4514DE58FC239592D2385BCE5609A84B2A0FBDAF29B05505EAD1FDFEF3D7209ACBF34B5D0A806DF18147EA9C0337D6B5B"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 203
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "010001"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 204
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 205
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v4, v0, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 206
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 208
    const-string v2, "RSA/ECB/nopadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 209
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 211
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 213
    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([BILjavax/crypto/Cipher;)[B

    move-result-object v0

    .line 215
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/inmobi/commons/thirdparty/Base64;->encode([BI)[B

    move-result-object v2

    .line 217
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Exception in encryptRSA"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 407
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 415
    :goto_0
    return p2

    .line 408
    :catch_0
    move-exception v0

    .line 410
    :try_start_1
    const-string v0, "[InMobi]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON with property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found but has bad datatype("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Reverting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 413
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 505
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 506
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 507
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 509
    :cond_0
    const-string v0, "[InMobi]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has illegal value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getConfig()Lcom/inmobi/commons/internal/CommonsConfig;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Lcom/inmobi/commons/internal/CommonsConfig;

    return-object v0
.end method

.method public static getConnectivityType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 326
    const/4 v1, 0x0

    .line 328
    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 329
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 331
    if-eqz v0, :cond_5

    .line 332
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_5

    .line 334
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 335
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 336
    if-ne v2, v4, :cond_1

    .line 337
    const-string v0, "wifi"

    .line 357
    :cond_0
    :goto_0
    return-object v0

    .line 338
    :cond_1
    if-nez v2, :cond_5

    .line 339
    const-string v0, "carrier"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    if-ne v3, v4, :cond_2

    .line 341
    :try_start_1
    const-string v0, "gprs"

    goto :goto_0

    .line 342
    :cond_2
    const/4 v1, 0x2

    if-ne v3, v1, :cond_3

    .line 343
    const-string v0, "edge"

    goto :goto_0

    .line 344
    :cond_3
    const/4 v1, 0x3

    if-ne v3, v1, :cond_4

    .line 345
    const-string v0, "umts"

    goto :goto_0

    .line 346
    :cond_4
    if-nez v3, :cond_0

    .line 347
    const-string v0, "carrier"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 355
    :goto_1
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Error getting the network info"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 354
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static getDigested(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    const-string v0, "TEST_EMULATOR"

    .line 275
    :goto_0
    return-object v0

    .line 260
    :cond_1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 264
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 267
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 269
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Exception in getting ODIN-1"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEncodedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 573
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    :try_start_0
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    const-string v3, "[InMobi]-4.5.5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception Map encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 580
    :cond_0
    return-object v1
.end method

.method public static getFinalRedirectedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 434
    move v3, v0

    move-object v2, p0

    .line 439
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 440
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 442
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 444
    const/16 v4, 0x12c

    if-lt v1, v4, :cond_2

    const/16 v4, 0x190

    if-ge v1, v4, :cond_2

    .line 445
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 446
    if-nez v1, :cond_1

    move-object v1, v2

    .line 452
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    .line 456
    :goto_2
    return-object v0

    .line 451
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_0

    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    move v3, v2

    move-object v2, v1

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 454
    :goto_3
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get redirect url"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 453
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public static getInMobiInternalVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 597
    const-string v0, "[.]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 598
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 602
    :try_start_0
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    .line 603
    const-string v4, "T"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_0
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    const-string v0, ""

    .line 610
    :goto_2
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 604
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static getIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 393
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 401
    :goto_0
    return p2

    .line 394
    :catch_0
    move-exception v0

    .line 396
    :try_start_1
    const-string v0, "[InMobi]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON with property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found but has bad datatype("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Reverting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 399
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "IJ)I"
        }
    .end annotation

    .prologue
    .line 526
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 527
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 528
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 529
    int-to-long v2, v0

    cmp-long v1, v2, p3

    if-gtz v1, :cond_0

    if-lt v0, p2, :cond_0

    .line 530
    return v0

    .line 533
    :cond_0
    const-string v0, "[InMobi]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has illegal value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 379
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 387
    :goto_0
    return-wide p2

    .line 380
    :catch_0
    move-exception v0

    .line 382
    :try_start_1
    const-string v0, "[InMobi]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON with property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found but has bad datatype("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Reverting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 385
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "JJ)J"
        }
    .end annotation

    .prologue
    const-wide/32 v2, 0x7fffffff

    const-wide/32 v4, -0x80000000

    .line 514
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 515
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 516
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 517
    cmp-long v6, v0, p4

    if-gtz v6, :cond_0

    cmp-long v6, v0, p2

    if-ltz v6, :cond_0

    .line 521
    :goto_0
    return-wide v0

    :cond_0
    cmp-long v0, p2, v4

    if-gez v0, :cond_1

    move-wide p2, v4

    :cond_1
    long-to-int v0, p2

    cmp-long v1, p4, v2

    if-lez v1, :cond_2

    move-wide p4, v2

    :cond_2
    long-to-int v1, p4

    int-to-long v2, v1

    invoke-static {p0, p1, v0, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static getLtvpSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 699
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "inmobiAppAnalyticsSession"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 701
    const-string v1, "APP_SESSION_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    return-object v0
.end method

.method public static getObjectFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 489
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 491
    if-eqz v1, :cond_0

    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 492
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    const-string v0, "[InMobi]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has empty object as value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 500
    :cond_0
    const-string v0, "[InMobi]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has illegal value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 496
    :cond_1
    return-object v1
.end method

.method public static getSavedUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdkCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "im_cached_content"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 421
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 429
    :goto_0
    return-object p2

    .line 422
    :catch_0
    move-exception v0

    .line 424
    :try_start_1
    const-string v0, "[InMobi]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON with property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found but has bad datatype("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Reverting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 427
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 538
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 539
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 540
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 542
    :cond_0
    const-string v0, "[InMobi]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has illegal value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getURLDecoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 585
    const-string v0, ""

    .line 587
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 591
    :goto_0
    return-object v0

    .line 588
    :catch_0
    move-exception v1

    .line 589
    const-string v2, "[InMobi]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception URL decoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 562
    const-string v0, ""

    .line 564
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 568
    :goto_0
    return-object v0

    .line 565
    :catch_0
    move-exception v1

    .line 566
    const-string v2, "[InMobi]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception URL encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 296
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Ljava/lang/String;

    .line 301
    :cond_0
    :goto_0
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Ljava/lang/String;

    .line 304
    :goto_1
    return-object v0

    .line 298
    :cond_1
    new-instance v0, Landroid/webkit/WebView;

    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Cannot get user agent"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 104
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    if-nez p0, :cond_1

    .line 107
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 112
    :cond_0
    :goto_0
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 127
    :goto_1
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Landroid/content/Context;

    goto :goto_0

    .line 115
    :cond_2
    sget-boolean v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->f:Z

    if-eqz v0, :cond_3

    .line 116
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->f:Z

    .line 117
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a()V

    .line 120
    :cond_3
    :try_start_0
    const-string v0, "commons"

    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->a:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a(Ljava/util/Map;)Z
    :try_end_0
    .catch Lcom/inmobi/commons/internal/CommonsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v1, "[InMobi]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMCommons config init: IMCommonsException caught. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/CommonsException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :catch_1
    move-exception v0

    .line 125
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "Exception while getting commons config data."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isHexString(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 706
    const-string v0, "[0-9A-F]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInitializedSuccessfully()Z
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully(Z)Z

    move-result v0

    return v0
.end method

.method public static isInitializedSuccessfully(Z)Z
    .locals 2

    .prologue
    .line 547
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 548
    :cond_0
    if-eqz p0, :cond_1

    .line 549
    const-string v0, "[InMobi]-4.5.5"

    const-string v1, "InMobi not initialized. Call InMobi.initialize before using any InMobi API"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_1
    const/4 v0, 0x0

    .line 554
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static mapToJSONs(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 614
    if-eqz p0, :cond_1

    .line 615
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 616
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 618
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 619
    :catch_0
    move-exception v3

    .line 620
    const-string v3, "[InMobi]-4.5.5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to convert map to JSON for key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static populate(Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 461
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 462
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 463
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 467
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 468
    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_2

    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 469
    if-nez p2, :cond_1

    .line 470
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 472
    check-cast v0, Ljava/util/Map;

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Ljava/util/Map;Ljava/util/Map;Z)V

    goto :goto_0

    .line 475
    :cond_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 478
    :cond_3
    return-void
.end method

.method public static populate(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 663
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 664
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 666
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 673
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 674
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 675
    instance-of v5, v2, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    instance-of v5, v3, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    .line 676
    if-nez p2, :cond_0

    .line 677
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v1

    .line 688
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot populate to json exception"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 667
    :catch_1
    move-exception v2

    .line 668
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 679
    :cond_0
    :try_start_2
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 685
    :cond_1
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 692
    :cond_2
    return-void
.end method

.method public static populateToNewJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 711
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 712
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 713
    invoke-static {p0, v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 714
    return-object v0
.end method

.method public static populateToNewMap(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 483
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 484
    invoke-static {p0, v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 485
    return-object v0
.end method

.method public static resetMediaCache(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 151
    invoke-static {p0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getSdkCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 152
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->clearSdkCacheDirectory(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const-class v0, Lcom/inmobi/commons/internal/InternalSDKUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot create media cache directory"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Landroid/content/Context;

    .line 90
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a()V

    .line 96
    :try_start_0
    const-string v0, "commons"

    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->a:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;
    :try_end_0
    .catch Lcom/inmobi/commons/internal/CommonsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v0, "commons"

    const-string v1, "Unable retrive config for commons product"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static union(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 746
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 747
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 748
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 747
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 751
    :cond_1
    return-object p1
.end method

.method public static validateAppId(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 310
    if-nez p0, :cond_0

    .line 311
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "appId is null"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_0
    return v0

    .line 315
    :cond_0
    const-string v1, "(x)+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "appId is all xxxxxxx"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_1
    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "appId is all blank"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static xorWithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 170
    const-string v1, ""

    .line 175
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 177
    array-length v0, v2

    new-array v3, v0, [B

    .line 178
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 180
    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 181
    aget-byte v5, v2, v0

    array-length v6, v4

    rem-int v6, v0, v6

    aget-byte v6, v4, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    const/4 v0, 0x2

    invoke-static {v3, v0}, Lcom/inmobi/commons/thirdparty/Base64;->encode([BI)[B

    move-result-object v2

    .line 184
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_1
    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Exception in xor with random integer"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method
