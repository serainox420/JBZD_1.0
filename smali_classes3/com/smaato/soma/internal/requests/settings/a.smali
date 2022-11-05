.class public Lcom/smaato/soma/internal/requests/settings/a;
.super Ljava/lang/Object;
.source "DeviceDataCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/internal/requests/settings/a$b;,
        Lcom/smaato/soma/internal/requests/settings/a$a;
    }
.end annotation


# static fields
.field private static final d:Landroid/net/Uri;

.field private static e:Lcom/smaato/soma/internal/requests/settings/a;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smaato/soma/internal/requests/settings/a;->d:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->a:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->b:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->c:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->g:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->h:Ljava/lang/String;

    .line 99
    const-string v0, "SOMA_DATA"

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->i:Ljava/lang/String;

    .line 100
    const-string v0, "SOMA_GAID"

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->j:Ljava/lang/String;

    .line 101
    const-string v0, "SOMA_DNT"

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->k:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/a$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/settings/a$1;-><init>(Lcom/smaato/soma/internal/requests/settings/a;)V

    .line 118
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a$1;->c()Ljava/lang/Object;

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/internal/requests/settings/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/smaato/soma/internal/requests/settings/a;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/smaato/soma/internal/requests/settings/a;->e:Lcom/smaato/soma/internal/requests/settings/a;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/a;

    invoke-direct {v0}, Lcom/smaato/soma/internal/requests/settings/a;-><init>()V

    sput-object v0, Lcom/smaato/soma/internal/requests/settings/a;->e:Lcom/smaato/soma/internal/requests/settings/a;

    .line 129
    :cond_0
    sget-object v0, Lcom/smaato/soma/internal/requests/settings/a;->e:Lcom/smaato/soma/internal/requests/settings/a;

    return-object v0
.end method

.method static synthetic a(Lcom/smaato/soma/internal/requests/settings/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/internal/requests/settings/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 264
    :try_start_0
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/settings/a;->o()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->j:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->k:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToGetDeviceType;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 607
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    move v2, v0

    .line 610
    :goto_0
    if-eqz v2, :cond_1

    .line 613
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 607
    goto :goto_0

    :cond_1
    move v0, v1

    .line 613
    goto :goto_1

    .line 615
    :catch_0
    move-exception v0

    .line 616
    throw v0

    .line 617
    :catch_1
    move-exception v0

    .line 618
    new-instance v1, Lcom/smaato/soma/exception/UnableToGetDeviceType;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToGetDeviceType;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic b(Lcom/smaato/soma/internal/requests/settings/a;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/smaato/soma/internal/requests/settings/a;->q()V

    return-void
.end method

.method static synthetic p()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/smaato/soma/internal/requests/settings/a;->d:Landroid/net/Uri;

    return-object v0
.end method

.method private q()V
    .locals 3

    .prologue
    .line 276
    :try_start_0
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/settings/a;->o()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private r()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/settings/a;->o()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/smaato/soma/internal/requests/settings/a;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :try_start_1
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->j:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    iget-object v3, p0, Lcom/smaato/soma/internal/requests/settings/a;->k:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    iget-object v3, p0, Lcom/smaato/soma/internal/requests/settings/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    :cond_1
    :goto_0
    return-object v0

    .line 306
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(II)I
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 531
    .line 532
    const/16 v0, 0x9

    .line 534
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-gt v4, v1, :cond_0

    move v0, v2

    move v1, v3

    .line 539
    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_4

    .line 540
    :cond_1
    if-ne p2, v2, :cond_3

    move v0, v2

    .line 566
    :cond_2
    :goto_0
    return v0

    .line 542
    :cond_3
    if-ne p2, v5, :cond_6

    move v0, v3

    .line 543
    goto :goto_0

    .line 545
    :cond_4
    if-eq p1, v5, :cond_5

    const/4 v3, 0x3

    if-ne p1, v3, :cond_6

    .line 547
    :cond_5
    if-eq p2, v2, :cond_2

    .line 549
    if-ne p2, v5, :cond_6

    move v0, v1

    .line 550
    goto :goto_0

    :cond_6
    move v0, v2

    .line 554
    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 558
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Data_Collector"

    const-string v3, "Exception in getting Device Orientations"

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    move v0, v2

    .line 563
    goto :goto_0

    .line 564
    :catch_1
    move-exception v0

    .line 565
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    .line 566
    goto :goto_0
.end method

.method public final a(Lcom/smaato/soma/internal/requests/a;DD)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/GeneratingDeviceDataFailedException;
        }
    .end annotation

    .prologue
    .line 328
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/a$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/settings/a$3;-><init>(Lcom/smaato/soma/internal/requests/settings/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 329
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 330
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/settings/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 333
    const-string v1, "&connection="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    invoke-static {v0}, Lcom/smaato/soma/internal/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 337
    const-string v0, "&carrier="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/smaato/soma/internal/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 341
    const-string v0, "&carriercode="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/smaato/soma/internal/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 345
    const-string v0, "&fattributionid="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/smaato/soma/internal/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 350
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/smaato/soma/internal/requests/a;->a()Lcom/smaato/soma/internal/requests/settings/c;

    move-result-object v0

    .line 351
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/smaato/soma/internal/requests/settings/c;->a(DD)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/settings/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 355
    const-string v1, "&osversion="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    invoke-static {v0}, Lcom/smaato/soma/internal/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    :cond_4
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/settings/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 360
    const-string v1, "&devicemodel="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    invoke-static {v0}, Lcom/smaato/soma/internal/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    :cond_5
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/settings/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 365
    const-string v1, "&devicebrand="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    invoke-static {v0}, Lcom/smaato/soma/internal/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :cond_6
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a;->g()I

    move-result v0

    .line 370
    if-lez v0, :cond_7

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&screenwidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    :cond_7
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a;->h()I

    move-result v0

    .line 375
    if-lez v0, :cond_8

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&screenheight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&devicetype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/smaato/soma/internal/requests/settings/a;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a;->l()Ljava/lang/String;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&osname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/settings/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&portrait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/settings/a;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    const-string v0, "&mraidver=2"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    :try_start_2
    invoke-direct {p0}, Lcom/smaato/soma/internal/requests/settings/a;->r()Ljava/util/HashMap;

    move-result-object v1

    .line 392
    if-eqz v1, :cond_b

    .line 394
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&googleadid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    :cond_a
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&googlednt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 412
    :cond_b
    :goto_0
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 406
    :catch_0
    move-exception v5

    .line 407
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Data_Collector"

    const-string v2, "Cannot retreive device info"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->EXCEPTION:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct/range {v0 .. v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 413
    :catch_1
    move-exception v0

    .line 414
    throw v0

    .line 415
    :catch_2
    move-exception v0

    .line 416
    new-instance v1, Lcom/smaato/soma/exception/GeneratingDeviceDataFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/GeneratingDeviceDataFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 404
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    .line 317
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RetrievingReleaseVersionFailed;
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    throw v0

    .line 141
    :catch_1
    move-exception v0

    .line 142
    new-instance v1, Lcom/smaato/soma/exception/RetrievingReleaseVersionFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/RetrievingReleaseVersionFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RetrievingDeviceModelFailed;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    throw v0

    .line 155
    :catch_1
    move-exception v0

    .line 156
    new-instance v1, Lcom/smaato/soma/exception/RetrievingDeviceModelFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/RetrievingDeviceModelFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final d()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RetrievingDeviceBrandFailed;
        }
    .end annotation

    .prologue
    .line 166
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    throw v0

    .line 169
    :catch_1
    move-exception v0

    .line 170
    new-instance v1, Lcom/smaato/soma/exception/RetrievingDeviceBrandFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/RetrievingDeviceBrandFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final e()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RetrievingConnectionTypeFailed;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 183
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/a$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/settings/a$2;-><init>(Lcom/smaato/soma/internal/requests/settings/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->f:Ljava/lang/String;

    .line 242
    :goto_0
    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 189
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Data_Collector"

    const-string v2, "You should add the permission ACCESS_NETWORK_STATE in the manifest file."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->VERVOSE:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 193
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 197
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 199
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    const-string v2, "phone"

    .line 200
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 201
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smaato/soma/internal/requests/settings/a;->g:Ljava/lang/String;

    .line 202
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->h:Ljava/lang/String;

    .line 203
    if-eqz v1, :cond_4

    .line 204
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 205
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 207
    if-ne v0, v3, :cond_3

    .line 208
    const-string v0, "wifi"

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->f:Ljava/lang/String;

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->f:Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_3
    if-nez v0, :cond_2

    .line 210
    packed-switch v1, :pswitch_data_0

    .line 230
    const-string v0, "carrier"

    goto :goto_0

    .line 216
    :pswitch_0
    const-string v0, "2g"

    goto :goto_0

    .line 226
    :pswitch_1
    const-string v0, "3g"

    goto :goto_0

    .line 228
    :pswitch_2
    const-string v0, "4g"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 242
    :cond_4
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 237
    :catch_1
    move-exception v0

    goto :goto_1

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/FacebookAttributionFailedException;
        }
    .end annotation

    .prologue
    .line 251
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smaato/soma/internal/requests/settings/a$a;-><init>(Lcom/smaato/soma/internal/requests/settings/a;Lcom/smaato/soma/internal/requests/settings/a$1;)V

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a$a;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    throw v0

    .line 254
    :catch_1
    move-exception v0

    .line 255
    new-instance v1, Lcom/smaato/soma/exception/FacebookAttributionFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/FacebookAttributionFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public g()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToGetScreenWidth;
        }
    .end annotation

    .prologue
    .line 426
    .line 428
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/a$4;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/settings/a$4;-><init>(Lcom/smaato/soma/internal/requests/settings/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 429
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 431
    :try_start_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 432
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 433
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_0

    .line 435
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 440
    :goto_0
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 449
    :goto_1
    return v0

    .line 437
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 438
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, v2, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    :try_start_2
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    goto :goto_1

    .line 444
    :catch_1
    move-exception v0

    .line 445
    throw v0

    .line 446
    :catch_2
    move-exception v0

    .line 447
    new-instance v1, Lcom/smaato/soma/exception/UnableToGetScreenWidth;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToGetScreenWidth;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToGetTheScreenHeight;
        }
    .end annotation

    .prologue
    .line 458
    .line 460
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/a$5;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/settings/a$5;-><init>(Lcom/smaato/soma/internal/requests/settings/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 462
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 464
    :try_start_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 465
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 466
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_0

    .line 468
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 473
    :goto_0
    iget v0, v2, Landroid/graphics/Point;->y:I

    .line 482
    :goto_1
    return v0

    .line 470
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 471
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, v2, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 474
    :catch_0
    move-exception v1

    .line 475
    :try_start_2
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    goto :goto_1

    .line 477
    :catch_1
    move-exception v0

    .line 478
    throw v0

    .line 479
    :catch_2
    move-exception v0

    .line 480
    new-instance v1, Lcom/smaato/soma/exception/UnableToGetTheScreenHeight;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToGetTheScreenHeight;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public i()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RetrievingDeviceOrientationFailed;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 495
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v1, v0, :cond_0

    .line 498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    throw v0

    .line 501
    :catch_1
    move-exception v0

    .line 502
    new-instance v1, Lcom/smaato/soma/exception/RetrievingDeviceOrientationFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/RetrievingDeviceOrientationFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RetrievingDeviceOrientationFailed;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/a$6;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/settings/a$6;-><init>(Lcom/smaato/soma/internal/requests/settings/a;)V

    .line 514
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a$6;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 507
    return v0
.end method

.method public k()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RetrievingDeviceOrientationFailed;
        }
    .end annotation

    .prologue
    .line 519
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/a$7;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/requests/settings/a$7;-><init>(Lcom/smaato/soma/internal/requests/settings/a;)V

    .line 525
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a$7;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 519
    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/GettingDisplayLanguageFailed;
        }
    .end annotation

    .prologue
    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 579
    const-string v0, ""

    .line 591
    :goto_0
    return-object v0

    .line 581
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 583
    iget-object v2, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 584
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v2, :cond_1

    .line 586
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    throw v0

    .line 594
    :catch_1
    move-exception v0

    .line 595
    new-instance v1, Lcom/smaato/soma/exception/GettingDisplayLanguageFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/GettingDisplayLanguageFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final m()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/GoogleAdvertisingIdFailed;
        }
    .end annotation

    .prologue
    .line 629
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smaato/soma/internal/requests/settings/a$b;-><init>(Lcom/smaato/soma/internal/requests/settings/a;Lcom/smaato/soma/internal/requests/settings/a$1;)V

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a$b;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    return-void

    .line 633
    :catch_0
    move-exception v0

    goto :goto_0

    .line 631
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/OsNameFailedException;
        }
    .end annotation

    .prologue
    .line 688
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blackberry"

    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    const-string v0, "blackberry"

    .line 695
    :goto_0
    return-object v0

    .line 691
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kindle"

    .line 692
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    const-string v0, "kindle"

    goto :goto_0

    .line 695
    :cond_1
    const-string v0, "android"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    throw v0

    .line 699
    :catch_1
    move-exception v0

    .line 700
    new-instance v1, Lcom/smaato/soma/exception/OsNameFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/OsNameFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final o()Landroid/content/Context;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a;->l:Landroid/content/Context;

    return-object v0
.end method
