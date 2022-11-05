.class final enum Lcom/moat/analytics/mobile/aol/MoatNetImpl;
.super Ljava/lang/Enum;
.source "MoatNetImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/MoatNet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moat/analytics/mobile/aol/MoatNetImpl;",
        ">;",
        "Lcom/moat/analytics/mobile/aol/MoatNet;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moat/analytics/mobile/aol/MoatNetImpl;

.field public static final enum instance:Lcom/moat/analytics/mobile/aol/MoatNetImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/moat/analytics/mobile/aol/MoatNetImpl;

    const-string v1, "instance"

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/aol/MoatNetImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/aol/MoatNetImpl;->instance:Lcom/moat/analytics/mobile/aol/MoatNetImpl;

    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/moat/analytics/mobile/aol/MoatNetImpl;

    sget-object v1, Lcom/moat/analytics/mobile/aol/MoatNetImpl;->instance:Lcom/moat/analytics/mobile/aol/MoatNetImpl;

    aput-object v1, v0, v2

    sput-object v0, Lcom/moat/analytics/mobile/aol/MoatNetImpl;->$VALUES:[Lcom/moat/analytics/mobile/aol/MoatNetImpl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private readIntoString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 23
    const/16 v0, 0x100

    new-array v2, v0, [C

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v0, "UTF-8"

    invoke-direct {v4, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move v0, v1

    .line 28
    :cond_0
    array-length v5, v2

    invoke-virtual {v4, v2, v1, v5}, Ljava/io/Reader;->read([CII)I

    move-result v5

    if-lez v5, :cond_1

    .line 29
    add-int/2addr v0, v5

    .line 30
    invoke-virtual {v3, v2, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 31
    const/16 v5, 0x400

    if-lt v0, v5, :cond_0

    .line 35
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/MoatNetImpl;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/moat/analytics/mobile/aol/MoatNetImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/MoatNetImpl;

    return-object v0
.end method

.method public static values()[Lcom/moat/analytics/mobile/aol/MoatNetImpl;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatNetImpl;->$VALUES:[Lcom/moat/analytics/mobile/aol/MoatNetImpl;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/aol/MoatNetImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/aol/MoatNetImpl;

    return-object v0
.end method


# virtual methods
.method public request(Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/moat/analytics/mobile/aol/base/functional/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 43
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 46
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 47
    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 48
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 51
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 52
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 53
    const/16 v3, 0x190

    if-lt v2, v3, :cond_1

    .line 54
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 65
    if-eqz v1, :cond_0

    .line 67
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 57
    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/aol/MoatNetImpl;->readIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 65
    if-eqz v1, :cond_0

    .line 67
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    .line 60
    :try_start_4
    sget-object v2, Lcom/moat/analytics/mobile/aol/BuildConfig;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    const-string v2, "MoatNetImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "On/off status check error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_2
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 65
    if-eqz v1, :cond_0

    .line 67
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 68
    :catch_2
    move-exception v1

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 67
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 68
    :cond_3
    :goto_1
    throw v0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_1
.end method
