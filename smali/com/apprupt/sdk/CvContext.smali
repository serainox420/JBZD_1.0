.class public Lcom/apprupt/sdk/CvContext;
.super Landroid/content/ContextWrapper;
.source "CvContext.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvContext;->b:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    .line 64
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83
    if-lez v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/apprupt/sdk/CvContext;->b:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    .line 86
    :cond_0
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iput-object p1, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 201
    const-string v2, "checkSelfPermission"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 202
    iget-object v2, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 204
    :goto_0
    return v0

    .line 203
    :catch_0
    move-exception v0

    move v0, v1

    .line 204
    goto :goto_0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 7

    .prologue
    .line 671
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public clearWallpaper()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->clearWallpaper()V

    .line 462
    return-void
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 702
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 696
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public databaseList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    .line 687
    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    .line 682
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 632
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 6

    .prologue
    .line 676
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    .line 677
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8

    .prologue
    .line 691
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 692
    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    monitor-exit p0

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCodeCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 357
    const-string v1, "getCodeCacheDir"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-object v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCacheDirs()[Ljava/io/File;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalMediaDirs()[Ljava/io/File;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 379
    const-string v1, "getExternalMediaDirs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    check-cast v0, [Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-object v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    new-array v0, v3, [Ljava/io/File;

    goto :goto_0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getNoBackupFilesDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 318
    const-string v1, "getNoBackupFilesDir"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-object v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObbDir()Ljava/io/File;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getObbDirs()[Ljava/io/File;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 212
    const-string v1, "getSystemServiceName"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getWallpaperDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getWallpaperDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 647
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 724
    return-object v0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    :catchall_0
    move-exception v0

    throw v0

    .line 718
    :catch_1
    move-exception v0

    .line 719
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected invocation exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 720
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->peekWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 549
    return-void
.end method

.method public removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 567
    return-void
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 652
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 501
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 522
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 515
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 516
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 534
    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 539
    return-void
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 555
    return-void
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 543
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 544
    return-void
.end method

.method public sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 561
    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 252
    return-void
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->setWallpaper(Landroid/graphics/Bitmap;)V

    .line 450
    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->setWallpaper(Ljava/io/InputStream;)V

    .line 456
    return-void
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    .line 479
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 485
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 467
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 473
    return-void
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    .line 490
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 496
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 602
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/apprupt/sdk/CvContext;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 582
    return-void
.end method
