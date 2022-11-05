.class Lcom/adcolony/sdk/bo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    .line 30
    const-string v0, "fuzz.tmp"

    iput-object v0, p0, Lcom/adcolony/sdk/bo;->d:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/bo;->a:Z

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    .line 30
    const-string v0, "fuzz.tmp"

    iput-object v0, p0, Lcom/adcolony/sdk/bo;->d:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/bo;->a:Z

    .line 38
    iput-object p1, p0, Lcom/adcolony/sdk/bo;->c:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 335
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v2

    const-string v3, "saveDeviceID()"

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/adcolony/sdk/bo;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/adcolony/sdk/bo;->d:Ljava/lang/String;

    const/4 v4, 0x0

    .line 338
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 339
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 340
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 341
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 342
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return v0

    .line 343
    :catch_0
    move-exception v2

    .line 344
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t save "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adcolony/sdk/bo;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    .line 345
    goto :goto_0
.end method

.method private s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bo;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/adcolony/sdk/bo;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x27

    const/16 v5, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 268
    const/4 v1, 0x0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/adcolony/sdk/bo;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/adcolony/sdk/bo;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 274
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 275
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v1, v0

    .line 281
    :goto_1
    if-nez v1, :cond_3

    .line 282
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Problem getting deviceID. generating a new one."

    invoke-static {v0, v2, v7}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 283
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->v()Ljava/lang/String;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/bo;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    :goto_2
    if-eqz v0, :cond_2

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 292
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 293
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 294
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 295
    const/16 v6, 0x15

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x44

    if-eq v1, v2, :cond_1

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid deviceID"

    invoke-static {v1, v2, v7}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    :goto_3
    return-object v0

    .line 308
    :cond_2
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not get deviceID"

    invoke-static {v1, v2, v7}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 278
    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v1, v0

    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_2

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private v()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x24

    const/16 v6, 0x12

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 315
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "generateDeviceID()"

    invoke-static {v0, v1, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 316
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generated deviceID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const/16 v0, 0x44

    invoke-virtual {v1, v5, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 325
    const/16 v0, 0x13

    const/16 v2, 0x4e

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 326
    const/16 v0, 0x14

    invoke-virtual {v1, v0, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 327
    const/16 v0, 0x41

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fuzzified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 330
    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "appVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "appVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "appVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0x24

    const/16 v3, 0x12

    const/4 v0, 0x0

    .line 351
    if-eqz p1, :cond_0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const/16 v2, 0x44

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 359
    const/16 v0, 0x13

    const/16 v2, 0x4e

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 360
    const/16 v0, 0x14

    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 361
    const/16 v0, 0x41

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fuzzified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 365
    invoke-direct {p0, v0}, Lcom/adcolony/sdk/bo;->b(Ljava/lang/String;)Z

    move-result v0

    .line 367
    :cond_0
    return v0
.end method

.method b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "androidVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "androidVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "androidVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method c()I
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "androidSdkVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "androidSdkVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "androidSdkVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "manufacturer"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "manufacturer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "manufacturer"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "model"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "model"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "model"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "country"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "country"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "country"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "countryCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "countryCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "countryCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "currencyCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "currencyCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "currencyCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "platform"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "platform"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "platform"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "realDeviceId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "realDeviceId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "realDeviceId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "sdkVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "sdkVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "sdkVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method m()F
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "contentScale"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "contentScale"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "contentScale"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0
.end method

.method n()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "applicationCapabilities"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "applicationCapabilities"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "applicationCapabilities"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 159
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 160
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method p()V
    .locals 9

    .prologue
    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 166
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bo;->c:Landroid/content/Context;

    .line 167
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 168
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 172
    :try_start_1
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 174
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 175
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 176
    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 177
    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 178
    invoke-static {v4, v5}, Lcom/adcolony/sdk/co;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v6, v7}, Lcom/adcolony/sdk/co;->b(J)Ljava/lang/String;

    move-result-object v4

    .line 181
    iget-object v5, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v6, "appInstallTime"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v5, "appUpdateTime"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v4, "appVersionCode"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v2, "appVersion"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ah()Ljava/lang/String;

    move-result-object v0

    .line 190
    if-nez v0, :cond_0

    const-string v0, ""

    .line 191
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->e()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->d()Ljava/lang/String;

    move-result-object v3

    .line 193
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 194
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->getAppOptions()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adcolony/sdk/AdColonyAppOptions;->getUserID()Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "advertisingID set in deviceData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pushToken set in deviceData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 197
    iget-object v6, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v7, "userId"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v5, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v6, "deviceIdAlt"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v2, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v5, "pushDeviceToken"

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v2, "advertisingId"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v2, "osVersion"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v2, "bundleId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "androidVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "androidSdkVersion"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "countryCode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "currencyCode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "languageCode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "platform"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "deviceId"

    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "contentScale"

    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "applicationCapabilities"

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->X()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "sdkVersion"

    invoke-static {}, Lcom/adcolony/sdk/bm;->H()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "initParams"

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->aF()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "screenHeight"

    invoke-static {}, Lcom/adcolony/sdk/co;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v1, "screenWidth"

    invoke-static {}, Lcom/adcolony/sdk/co;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 222
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 223
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    .line 224
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    .line 225
    iget-object v4, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v5, "timeZone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v4, "timeZoneGmtOffsetMinutes"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->b:Ljava/util/Map;

    const-string v2, "timeZoneIsDst"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->t()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/bn$a;->x:Lcom/adcolony/sdk/bn$a;

    const-string v2, "Invalid device data"

    const/4 v3, 0x1

    sget-object v4, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 232
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;ZLcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 238
    :cond_2
    :goto_1
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception in device data update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 235
    :catch_1
    move-exception v0

    .line 236
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to update deviceData due to exception:"

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method q()V
    .locals 5

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset deviceID"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 242
    invoke-direct {p0}, Lcom/adcolony/sdk/bo;->v()Ljava/lang/String;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/bo;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/bn$a;->x:Lcom/adcolony/sdk/bn$a;

    const-string v2, "Failed to reset deviceID"

    const/4 v3, 0x0

    sget-object v4, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 245
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;ZLcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 248
    :cond_0
    return-void
.end method

.method r()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/adcolony/sdk/bo;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/adcolony/sdk/bo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 255
    :cond_0
    return-void
.end method
