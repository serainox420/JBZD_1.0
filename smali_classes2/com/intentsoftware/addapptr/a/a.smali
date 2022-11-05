.class public Lcom/intentsoftware/addapptr/a/a;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final CONFIG_DELIMITER:Ljava/lang/String; = ";"

.field private static final CONFIG_TYPE_BANNER:Ljava/lang/String; = "BANNER"

.field private static final CONFIG_TYPE_FULLSCREEN:Ljava/lang/String; = "FULLSCREEN"

.field private static final CONFIG_TYPE_IPADDR:Ljava/lang/String; = "IPADDR"

.field private static final CONFIG_TYPE_NATIVE:Ljava/lang/String; = "NATIVE"

.field private static final CONFIG_TYPE_OPTION:Ljava/lang/String; = "OPTION"

.field private static final CONFIG_TYPE_PLACEMENT:Ljava/lang/String; = "PLACEMENT"

.field private static final CONFIG_TYPE_PROMO:Ljava/lang/String; = "PROMO"

.field private static final ERROR_FLAG_PRIORITY:I = 0x8ab1

.field private static final NATIVE_BANNER_PREFIX:Ljava/lang/String; = "NativeBanner:"

.field private static final NATIVE_FULLSCREEN_PREFIX:Ljava/lang/String; = "NativeFullscreen:"


# instance fields
.field private IPaddr:Ljava/lang/String;

.field private final adConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            ">;"
        }
    .end annotation
.end field

.field private gotIP:Z

.field private final options:Ljava/util/Map;
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

.field private final placementConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intentsoftware/addapptr/t;",
            ">;"
        }
    .end annotation
.end field

.field private unrecognizedBundleId:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/a/a;->gotIP:Z

    .line 41
    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/a/a;->unrecognizedBundleId:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/a/a;->adConfigs:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/a/a;->placementConfigs:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/a/a;->options:Ljava/util/Map;

    .line 47
    invoke-direct {p0, p1}, Lcom/intentsoftware/addapptr/a/a;->processConfigData(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private processAdConfig(Ljava/lang/String;Ljava/util/Scanner;)V
    .locals 10

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x0

    const/4 v9, 0x3

    .line 261
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v8

    .line 262
    invoke-virtual {p2}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    .line 263
    invoke-virtual {p2}, Ljava/util/Scanner;->nextInt()I

    move-result v5

    .line 264
    invoke-virtual {p2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-virtual {p2}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v6

    .line 266
    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v6, v0

    .line 269
    :cond_0
    invoke-virtual {p2}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_1
    invoke-virtual {p2}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/InputMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 312
    :catch_0
    move-exception v0

    .line 313
    invoke-static {v9}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    const-string v1, "Scanner has been closed"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v6, v0

    .line 265
    goto :goto_0

    .line 275
    :cond_4
    const v1, 0x8ab1

    if-ne v4, v1, :cond_6

    .line 276
    const/4 v0, 0x6

    :try_start_1
    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    if-ne v5, v2, :cond_5

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/a/a;->unrecognizedBundleId:Z

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AATKit: The AddApptr server does not know your app\'s bundle ID ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getReportingAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "). You will receive no ads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/InputMismatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 316
    :catch_1
    move-exception v0

    .line 317
    invoke-static {v9}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    const-string v1, "Wrong type of argument for Ad"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 281
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AATKit: The AddApptr server has encountered an error. Please report the error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "to the AddApptr team"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/InputMismatchException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 320
    :catch_2
    move-exception v0

    .line 321
    invoke-static {v9}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    const-string v1, "Not enough config arguments for Ad"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 287
    :cond_6
    :try_start_3
    invoke-static {v8}, Lcom/intentsoftware/addapptr/AdNetwork;->fromServerConfigName(Ljava/lang/String;)Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v2

    .line 288
    invoke-static {p1}, Lcom/intentsoftware/addapptr/AdType;->valueOf(Ljava/lang/String;)Lcom/intentsoftware/addapptr/AdType;

    move-result-object v1

    .line 289
    sget-object v7, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    if-ne v1, v7, :cond_8

    const-string v7, "NativeBanner:"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 290
    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE_BANNER:Lcom/intentsoftware/addapptr/AdType;

    .line 291
    const-string v7, "NativeBanner:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 297
    :cond_7
    :goto_2
    invoke-static {v0}, Lcom/intentsoftware/addapptr/BannerSize;->fromServerConfigName(Ljava/lang/String;)Lcom/intentsoftware/addapptr/BannerSize;

    move-result-object v7

    .line 298
    if-eqz v0, :cond_9

    if-nez v7, :cond_9

    .line 299
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Banner size in server config ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") cannot be matched to any supported banner size. Rule for network: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " will be ignored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/InputMismatchException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 324
    :catch_3
    move-exception v0

    .line 325
    invoke-static {v9}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    const-string v1, "Too many config arguments for Ad"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 292
    :cond_8
    :try_start_4
    sget-object v7, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    if-ne v1, v7, :cond_7

    const-string v7, "NativeFullscreen:"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 293
    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE_INTERSTITIAL:Lcom/intentsoftware/addapptr/AdType;

    .line 294
    const-string v7, "NativeFullscreen:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 305
    :cond_9
    if-eqz v2, :cond_a

    invoke-static {v2, v1}, Lcom/intentsoftware/addapptr/ad;->isConfigSupported(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 306
    iget-object v8, p0, Lcom/intentsoftware/addapptr/a/a;->adConfigs:Ljava/util/ArrayList;

    new-instance v0, Lcom/intentsoftware/addapptr/b;

    invoke-direct/range {v0 .. v7}, Lcom/intentsoftware/addapptr/b;-><init>(Lcom/intentsoftware/addapptr/AdType;Lcom/intentsoftware/addapptr/AdNetwork;Ljava/lang/String;IILjava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 308
    :cond_a
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported ad network: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/InputMismatchException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1
.end method

.method private processConfigData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/util/Scanner;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 60
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/intentsoftware/addapptr/a/a;->processConfigLine(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 64
    return-void
.end method

.method private processConfigLine(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x3

    .line 69
    :try_start_0
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 70
    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 71
    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    .line 72
    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 91
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported config type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    :cond_1
    :goto_1
    return-void

    .line 72
    :sswitch_0
    const-string v2, "PLACEMENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "IPADDR"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "PROMO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "OPTION"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_4
    const-string v2, "BANNER"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "FULLSCREEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_6
    const-string v2, "NATIVE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 74
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/intentsoftware/addapptr/a/a;->processPlacementConfig(Ljava/util/Scanner;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const-string v1, "Empty config line"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 77
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v3}, Lcom/intentsoftware/addapptr/a/a;->processIPaddrConfig(Ljava/util/Scanner;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 100
    :catch_1
    move-exception v0

    .line 101
    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const-string v1, "Scanner has been closed"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 80
    :pswitch_2
    :try_start_2
    invoke-direct {p0, v3}, Lcom/intentsoftware/addapptr/a/a;->processPromoConfig(Ljava/util/Scanner;)V

    goto :goto_1

    .line 83
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/intentsoftware/addapptr/a/a;->processOptionConfig(Ljava/util/Scanner;)V

    goto :goto_1

    .line 88
    :pswitch_4
    invoke-direct {p0, v4, v3}, Lcom/intentsoftware/addapptr/a/a;->processAdConfig(Ljava/lang/String;Ljava/util/Scanner;)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ee84e68 -> :sswitch_1
        -0x772abbe9 -> :sswitch_6
        -0x74a2838b -> :sswitch_3
        0x48dd0ef -> :sswitch_2
        0x10f622c5 -> :sswitch_0
        0x237967bb -> :sswitch_5
        0x7458732c -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private processIPaddrConfig(Ljava/util/Scanner;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 109
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/a/a;->IPaddr:Ljava/lang/String;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/a/a;->gotIP:Z

    .line 111
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received IP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/a;->IPaddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/InputMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "Scanner has been closed"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    .line 119
    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "Wrong type of argument for IP address"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 122
    :catch_2
    move-exception v0

    .line 123
    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "Not enough config arguments for IP address"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processOptionConfig(Ljava/util/Scanner;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 131
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lcom/intentsoftware/addapptr/a/a;->options:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/InputMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-static {v3}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "Scanner has been closed"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    invoke-static {v3}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "Wrong type of argument for option"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 142
    :catch_2
    move-exception v0

    .line 143
    invoke-static {v3}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "Not enough config arguments for option"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processPlacementConfig(Ljava/util/Scanner;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 214
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {p1}, Ljava/util/Scanner;->nextInt()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 222
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 227
    invoke-virtual {p1}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    .line 229
    :goto_0
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 230
    invoke-virtual {p1}, Ljava/util/Scanner;->nextInt()I

    move-result v5

    .line 232
    :goto_1
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 233
    invoke-virtual {p1}, Ljava/util/Scanner;->nextInt()I

    move-result v6

    .line 235
    :goto_2
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 236
    invoke-virtual {p1}, Ljava/util/Scanner;->nextInt()I

    move-result v7

    .line 238
    :goto_3
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 239
    invoke-virtual {p1}, Ljava/util/Scanner;->nextInt()I

    move-result v9

    if-ne v9, v0, :cond_2

    :goto_4
    move v8, v0

    .line 242
    :goto_5
    iget-object v9, p0, Lcom/intentsoftware/addapptr/a/a;->placementConfigs:Ljava/util/ArrayList;

    new-instance v0, Lcom/intentsoftware/addapptr/t;

    invoke-direct/range {v0 .. v8}, Lcom/intentsoftware/addapptr/t;-><init>(Ljava/lang/String;JIIIIZ)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/InputMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2

    .line 257
    :cond_1
    :goto_6
    return-void

    :cond_2
    move v0, v8

    .line 239
    goto :goto_4

    .line 243
    :catch_0
    move-exception v0

    .line 244
    invoke-static {v10}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    const-string v1, "Scanner has been closed"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 247
    :catch_1
    move-exception v0

    .line 248
    invoke-static {v10}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    const-string v1, "Wrong type of argument for placement"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 251
    :catch_2
    move-exception v0

    .line 252
    invoke-static {v10}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    const-string v1, "Not enough config arguments for placement"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_3
    move v8, v0

    goto :goto_5

    :cond_4
    move v7, v8

    goto :goto_3

    :cond_5
    move v6, v8

    goto :goto_2

    :cond_6
    move v5, v8

    goto :goto_1

    :cond_7
    move v4, v8

    goto :goto_0
.end method

.method private processPromoConfig(Ljava/util/Scanner;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x3

    .line 151
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-virtual {p1}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    .line 153
    invoke-virtual {p1}, Ljava/util/Scanner;->nextInt()I

    move-result v5

    .line 154
    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 159
    :goto_1
    if-nez v6, :cond_0

    .line 160
    const-string v6, "promo"

    .line 163
    :cond_0
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/InputMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-static {v9}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    const-string v1, "Scanner has been closed"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    :cond_1
    :goto_2
    return-void

    :cond_2
    move-object v0, v6

    .line 155
    goto :goto_0

    .line 167
    :cond_3
    const v0, 0x8ab1

    if-ne v4, v0, :cond_5

    .line 168
    const/4 v0, 0x6

    :try_start_1
    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const/4 v0, 0x5

    if-ne v5, v0, :cond_4

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/a/a;->unrecognizedBundleId:Z

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AATKit: The AddApptr server does not know your app\'s bundle ID ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getReportingAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "). You will receive no ads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/InputMismatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 196
    :catch_1
    move-exception v0

    .line 197
    invoke-static {v9}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const-string v1, "Wrong type of argument for Ad"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 173
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AATKit: The AddApptr server has encountered an error. Please report the error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "to the AddApptr team"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/InputMismatchException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 200
    :catch_2
    move-exception v0

    .line 201
    invoke-static {v9}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    const-string v1, "Not enough config arguments for Ad"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 179
    :cond_5
    :try_start_3
    invoke-static {v7}, Lcom/intentsoftware/addapptr/AdNetwork;->fromServerConfigName(Ljava/lang/String;)Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v2

    .line 180
    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    .line 181
    const-string v0, "NativeFullscreen:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 182
    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE_INTERSTITIAL:Lcom/intentsoftware/addapptr/AdType;

    .line 183
    const-string v0, "NativeFullscreen:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    :cond_6
    if-eqz v2, :cond_7

    invoke-static {v2, v1}, Lcom/intentsoftware/addapptr/ad;->isConfigSupported(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 186
    iget-object v8, p0, Lcom/intentsoftware/addapptr/a/a;->adConfigs:Ljava/util/ArrayList;

    new-instance v0, Lcom/intentsoftware/addapptr/b;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/intentsoftware/addapptr/b;-><init>(Lcom/intentsoftware/addapptr/AdType;Lcom/intentsoftware/addapptr/AdNetwork;Ljava/lang/String;IILjava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/InputMismatchException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 204
    :catch_3
    move-exception v0

    .line 205
    invoke-static {v9}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const-string v1, "Too many config arguments for Ad"

    invoke-static {p0, v1, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 188
    :cond_7
    const/4 v0, 0x4

    :try_start_4
    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported ad network: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/InputMismatchException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    :cond_8
    move-object v6, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public getAdConfigs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/a;->adConfigs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIPaddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/a;->IPaddr:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/a;->options:Ljava/util/Map;

    return-object v0
.end method

.method public getPlacementConfigs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intentsoftware/addapptr/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/a;->placementConfigs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isGotIP()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/a;->gotIP:Z

    return v0
.end method

.method public isUnrecognizedBundleId()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/a;->unrecognizedBundleId:Z

    return v0
.end method
