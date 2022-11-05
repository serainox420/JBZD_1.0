.class Lcom/adcolony/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/j$a;
    }
.end annotation


# static fields
.field static final f:Ljava/lang/String; = "3.0.7"

.field static final h:Ljava/lang/String; = "Development"


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Z

.field d:Z

.field e:I

.field g:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lorg/json/JSONArray;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/adcolony/sdk/j;->e:I

    .line 39
    const-string v0, "android"

    iput-object v0, p0, Lcom/adcolony/sdk/j;->i:Ljava/lang/String;

    .line 40
    const-string v0, "android_native"

    iput-object v0, p0, Lcom/adcolony/sdk/j;->j:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/j;->g:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/j;->k:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 63
    const-string v0, ""

    .line 65
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lcom/adcolony/sdk/j;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 452
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 454
    const-string v0, "carrier_name"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 455
    const-string v0, "data_path"

    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v2, v2, Lcom/adcolony/sdk/am;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 456
    const-string v0, "device_api"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->n()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 457
    const-string v0, "device_id"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 458
    const-string v0, "display_width"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->l()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 459
    const-string v0, "display_height"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->m()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 460
    const-string v0, "screen_width"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->l()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 461
    const-string v0, "screen_height"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->m()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 462
    const-string v0, "device_type"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 463
    const-string v0, "locale_language_code"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 464
    const-string v0, "ln"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 465
    const-string v0, "locale_country_code"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 466
    const-string v0, "locale"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 467
    const-string v0, "mac_address"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 468
    const-string v0, "manufacturer"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 469
    const-string v0, "device_brand"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 470
    const-string v0, "media_path"

    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v2, v2, Lcom/adcolony/sdk/am;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 471
    const-string v0, "temp_storage_path"

    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    iget-object v2, v2, Lcom/adcolony/sdk/am;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 472
    const-string v0, "memory_class"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->h()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 473
    const-string v0, "network_speed"

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 474
    const-string v0, "memory_used_mb"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->i()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;J)Z

    .line 475
    const-string v0, "model"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 476
    const-string v0, "device_model"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 477
    const-string v0, "sdk_type"

    const-string v2, "android_native"

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 478
    const-string v0, "sdk_version"

    const-string v2, "3.0.7"

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 479
    const-string v0, "network_type"

    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->p:Lcom/adcolony/sdk/ae;

    invoke-virtual {v2}, Lcom/adcolony/sdk/ae;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 480
    const-string v0, "os_version"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 481
    const-string v0, "os_name"

    const-string v2, "android"

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 482
    const-string v0, "platform"

    const-string v2, "android"

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 483
    const-string v0, "arch"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 484
    const-string v0, "user_id"

    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v2, v2, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v3, "user_id"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 485
    const-string v0, "app_id"

    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v2, v2, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 486
    const-string v0, "immersion"

    iget-boolean v2, p0, Lcom/adcolony/sdk/j;->d:Z

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 488
    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->w()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/j;->e:I

    .line 489
    const-string v0, "current_orientation"

    iget v2, p0, Lcom/adcolony/sdk/j;->e:I

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 491
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v0

    .line 494
    const-string v2, "com.android.vending"

    invoke-static {v2}, Lcom/adcolony/sdk/au;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    const-string v2, "google"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 498
    :cond_0
    const-string v2, "com.amazon.venezia"

    invoke-static {v2}, Lcom/adcolony/sdk/au;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    const-string v2, "amazon"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 502
    :cond_1
    const-string v2, "available_stores"

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 505
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 509
    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    .line 510
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    .line 509
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 511
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 513
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/j;->k:Lorg/json/JSONArray;

    .line 514
    const/4 v0, 0x0

    :goto_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 516
    iget-object v3, p0, Lcom/adcolony/sdk/j;->k:Lorg/json/JSONArray;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 524
    :cond_2
    const-string v0, "permissions"

    iget-object v2, p0, Lcom/adcolony/sdk/j;->k:Lorg/json/JSONArray;

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 527
    const/16 v0, 0x28

    .line 528
    :goto_1
    iget-boolean v2, p1, Lcom/adcolony/sdk/j;->b:Z

    if-nez v2, :cond_3

    if-lez v0, :cond_3

    .line 532
    const-wide/16 v2, 0x32

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 533
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 540
    :cond_3
    const-string v0, "advertiser_id"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 541
    const-string v0, "limit_tracking"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->f()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 543
    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 545
    :cond_4
    const-string v0, "android_id_sha1"

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adcolony/sdk/au;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 548
    :cond_5
    return-object v1

    .line 535
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adcolony/sdk/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/j;->b:Z

    .line 91
    const-string v0, "Device.get_info"

    new-instance v1, Lcom/adcolony/sdk/j$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/j$1;-><init>(Lcom/adcolony/sdk/j;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 106
    const-string v0, "Device.application_exists"

    new-instance v1, Lcom/adcolony/sdk/j$2;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/j$2;-><init>(Lcom/adcolony/sdk/j;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 116
    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tablet"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "phone"

    goto :goto_0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/adcolony/sdk/j;->c:Z

    return v0
.end method

.method g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 144
    const-string v0, ""

    .line 152
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 147
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const-string v0, "unknown"

    goto :goto_0
.end method

.method h()I
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    .line 164
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 165
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    goto :goto_0
.end method

.method i()J
    .locals 6

    .prologue
    .line 173
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 174
    const/high16 v1, 0x100000

    .line 175
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v0, v1

    div-long v0, v2, v0

    return-wide v0
.end method

.method j()F
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method

.method k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 197
    const-string v0, ""

    .line 199
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adcolony/sdk/bc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method l()I
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    .line 211
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 212
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 213
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method m()I
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    .line 225
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 226
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 227
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method n()I
    .locals 1

    .prologue
    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method o()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 245
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 250
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v3

    .line 251
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v1, v3, v1

    .line 252
    mul-float/2addr v2, v2

    mul-float/2addr v1, v1

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 254
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 266
    :catch_0
    move-exception v0

    .line 268
    const-string v0, ""

    goto :goto_0
.end method

.method q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    .line 281
    :catch_0
    move-exception v0

    .line 283
    const-string v0, ""

    goto :goto_0
.end method

.method r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    const-string v0, ""

    return-object v0
.end method

.method s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method v()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/adcolony/sdk/j;->k:Lorg/json/JSONArray;

    return-object v0
.end method

.method w()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 336
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 348
    :goto_0
    return v0

    .line 341
    :cond_0
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method x()Z
    .locals 7

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 358
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v0

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->w()I

    move-result v2

    .line 365
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 384
    :pswitch_0
    iget v3, p0, Lcom/adcolony/sdk/j;->e:I

    if-ne v3, v1, :cond_0

    .line 386
    sget-object v3, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v4, "Sending device info update"

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 387
    iput v2, p0, Lcom/adcolony/sdk/j;->e:I

    .line 388
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->n()I

    move-result v2

    if-ge v2, v6, :cond_3

    .line 390
    new-instance v2, Lcom/adcolony/sdk/j$a;

    invoke-direct {v2, p0, v5, p0, v1}, Lcom/adcolony/sdk/j$a;-><init>(Lcom/adcolony/sdk/j;Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/j;Z)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/j$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    move v0, v1

    .line 396
    goto :goto_0

    .line 368
    :pswitch_1
    iget v3, p0, Lcom/adcolony/sdk/j;->e:I

    if-nez v3, :cond_0

    .line 370
    sget-object v3, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v4, "Sending device info update"

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 371
    iput v2, p0, Lcom/adcolony/sdk/j;->e:I

    .line 372
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->n()I

    move-result v2

    if-ge v2, v6, :cond_2

    .line 374
    new-instance v2, Lcom/adcolony/sdk/j$a;

    invoke-direct {v2, p0, v5, p0, v1}, Lcom/adcolony/sdk/j$a;-><init>(Lcom/adcolony/sdk/j;Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/j;Z)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/j$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_2
    move v0, v1

    .line 380
    goto :goto_0

    .line 378
    :cond_2
    new-instance v2, Lcom/adcolony/sdk/j$a;

    invoke-direct {v2, p0, v5, p0, v1}, Lcom/adcolony/sdk/j$a;-><init>(Lcom/adcolony/sdk/j;Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/j;Z)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v0}, Lcom/adcolony/sdk/j$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 394
    :cond_3
    new-instance v2, Lcom/adcolony/sdk/j$a;

    invoke-direct {v2, p0, v5, p0, v1}, Lcom/adcolony/sdk/j$a;-><init>(Lcom/adcolony/sdk/j;Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/j;Z)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v0}, Lcom/adcolony/sdk/j$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
