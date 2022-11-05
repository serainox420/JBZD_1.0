.class public abstract Lnet/gotev/uploadservice/j;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;

.field protected static final b:[B


# instance fields
.field protected c:Lnet/gotev/uploadservice/UploadService;

.field protected d:Lnet/gotev/uploadservice/UploadTaskParameters;

.field protected e:Z

.field protected f:J

.field protected g:J

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:J

.field private k:Landroid/app/NotificationManager;

.field private l:Landroid/support/v4/app/aj$d;

.field private m:Landroid/os/Handler;

.field private final n:J

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lnet/gotev/uploadservice/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/gotev/uploadservice/j;->a:Ljava/lang/String;

    .line 35
    const-string v0, ""

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lnet/gotev/uploadservice/j;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/j;->h:Ljava/util/List;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/gotev/uploadservice/j;->e:Z

    .line 104
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/gotev/uploadservice/j;->n:J

    .line 105
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 11

    .prologue
    .line 377
    sget-object v0, Lnet/gotev/uploadservice/j;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting error for upload with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 378
    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v0, Lnet/gotev/uploadservice/UploadInfo;

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lnet/gotev/uploadservice/j;->n:J

    iget-wide v4, p0, Lnet/gotev/uploadservice/j;->g:J

    iget-wide v6, p0, Lnet/gotev/uploadservice/j;->f:J

    iget v8, p0, Lnet/gotev/uploadservice/j;->o:I

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lnet/gotev/uploadservice/j;->h:Ljava/util/List;

    iget-object v10, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 383
    invoke-virtual {v10}, Lnet/gotev/uploadservice/UploadTaskParameters;->a()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lnet/gotev/uploadservice/UploadInfo;-><init>(Ljava/lang/String;JJJILjava/util/List;I)V

    .line 385
    new-instance v1, Lnet/gotev/uploadservice/BroadcastData;

    invoke-direct {v1}, Lnet/gotev/uploadservice/BroadcastData;-><init>()V

    sget-object v2, Lnet/gotev/uploadservice/BroadcastData$Status;->ERROR:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 386
    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/BroadcastData;->a(Lnet/gotev/uploadservice/BroadcastData$Status;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v1

    .line 387
    invoke-virtual {v1, v0}, Lnet/gotev/uploadservice/BroadcastData;->a(Lnet/gotev/uploadservice/UploadInfo;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v1

    .line 388
    invoke-virtual {v1, p1}, Lnet/gotev/uploadservice/BroadcastData;->a(Ljava/lang/Exception;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v1

    .line 390
    iget-object v2, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/gotev/uploadservice/UploadService;->b(Ljava/lang/String;)Lnet/gotev/uploadservice/i;

    move-result-object v2

    .line 391
    if-eqz v2, :cond_1

    .line 392
    iget-object v1, p0, Lnet/gotev/uploadservice/j;->m:Landroid/os/Handler;

    new-instance v3, Lnet/gotev/uploadservice/j$4;

    invoke-direct {v3, p0, v2, v0, p1}, Lnet/gotev/uploadservice/j$4;-><init>(Lnet/gotev/uploadservice/j;Lnet/gotev/uploadservice/i;Lnet/gotev/uploadservice/UploadInfo;Ljava/lang/Exception;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    :goto_0
    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    .line 404
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 405
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->l()Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->o()Z

    move-result v4

    .line 407
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->c()I

    move-result v5

    .line 408
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->g()I

    move-result v6

    move-object v1, p0

    move-object v2, v0

    .line 405
    invoke-direct/range {v1 .. v6}, Lnet/gotev/uploadservice/j;->a(Lnet/gotev/uploadservice/UploadInfo;Ljava/lang/String;ZII)V

    .line 411
    :cond_0
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/UploadService;->a(Ljava/lang/String;)V

    .line 412
    return-void

    .line 399
    :cond_1
    iget-object v2, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/BroadcastData;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/gotev/uploadservice/UploadService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Lnet/gotev/uploadservice/UploadInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 420
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadNotificationConfig;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->l:Landroid/support/v4/app/aj$d;

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/gotev/uploadservice/g;->a(Ljava/lang/String;Lnet/gotev/uploadservice/UploadInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 423
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/gotev/uploadservice/g;->a(Ljava/lang/String;Lnet/gotev/uploadservice/UploadInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 424
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/UploadNotificationConfig;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 425
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(I)Landroid/support/v4/app/aj$d;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 426
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->c(I)Landroid/support/v4/app/aj$d;

    move-result-object v0

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->d:Ljava/lang/String;

    .line 427
    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(Ljava/lang/String;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 428
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/aj$d;->a(IIZ)Landroid/support/v4/app/aj$d;

    move-result-object v0

    .line 429
    invoke-virtual {v0, v3}, Landroid/support/v4/app/aj$d;->a(Z)Landroid/support/v4/app/aj$d;

    .line 431
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->l:Landroid/support/v4/app/aj$d;

    invoke-virtual {v0}, Landroid/support/v4/app/aj$d;->a()Landroid/app/Notification;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    iget-object v2, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lnet/gotev/uploadservice/UploadService;->a(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->k:Landroid/app/NotificationManager;

    iget v1, p0, Lnet/gotev/uploadservice/j;->i:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v1, p0, Lnet/gotev/uploadservice/j;->k:Landroid/app/NotificationManager;

    iget v2, p0, Lnet/gotev/uploadservice/j;->i:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private a(Lnet/gotev/uploadservice/UploadInfo;Ljava/lang/String;ZII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 479
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->k:Landroid/app/NotificationManager;

    iget v1, p0, Lnet/gotev/uploadservice/j;->i:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 483
    if-eqz p2, :cond_0

    .line 485
    if-nez p3, :cond_0

    .line 486
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->l:Landroid/support/v4/app/aj$d;

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/gotev/uploadservice/g;->a(Ljava/lang/String;Lnet/gotev/uploadservice/UploadInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    .line 487
    invoke-static {p2, p1}, Lnet/gotev/uploadservice/g;->a(Ljava/lang/String;Lnet/gotev/uploadservice/UploadInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 488
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/UploadNotificationConfig;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 489
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->c(Z)Landroid/support/v4/app/aj$d;

    move-result-object v0

    .line 490
    invoke-virtual {v0, p4}, Landroid/support/v4/app/aj$d;->a(I)Landroid/support/v4/app/aj$d;

    move-result-object v0

    .line 491
    invoke-virtual {v0, p5}, Landroid/support/v4/app/aj$d;->c(I)Landroid/support/v4/app/aj$d;

    move-result-object v0

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->d:Ljava/lang/String;

    .line 492
    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(Ljava/lang/String;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    .line 493
    invoke-virtual {v0, v3, v3, v3}, Landroid/support/v4/app/aj$d;->a(IIZ)Landroid/support/v4/app/aj$d;

    move-result-object v0

    .line 494
    invoke-virtual {v0, v3}, Landroid/support/v4/app/aj$d;->a(Z)Landroid/support/v4/app/aj$d;

    .line 495
    invoke-direct {p0}, Lnet/gotev/uploadservice/j;->b()V

    .line 499
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->k:Landroid/app/NotificationManager;

    iget v1, p0, Lnet/gotev/uploadservice/j;->i:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lnet/gotev/uploadservice/j;->l:Landroid/support/v4/app/aj$d;

    invoke-virtual {v2}, Landroid/support/v4/app/aj$d;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)Z
    .locals 6

    .prologue
    .line 511
    const/4 v1, 0x0

    .line 514
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 516
    if-nez v0, :cond_0

    .line 517
    :try_start_1
    sget-object v1, Lnet/gotev/uploadservice/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 518
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 517
    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :goto_0
    return v0

    .line 520
    :cond_0
    sget-object v1, Lnet/gotev/uploadservice/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 521
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v1

    .line 525
    :goto_1
    sget-object v2, Lnet/gotev/uploadservice/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while deleting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 526
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Check if you granted: android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 525
    invoke-static {v2, v3, v1}, Lnet/gotev/uploadservice/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 524
    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadNotificationConfig;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->l:Landroid/support/v4/app/aj$d;

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(Landroid/net/Uri;)Landroid/support/v4/app/aj$d;

    .line 470
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->l:Landroid/support/v4/app/aj$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->b(Z)Landroid/support/v4/app/aj$d;

    .line 473
    :cond_0
    return-void
.end method

.method private b(Lnet/gotev/uploadservice/UploadInfo;)V
    .locals 4

    .prologue
    .line 446
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadNotificationConfig;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->l:Landroid/support/v4/app/aj$d;

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/gotev/uploadservice/g;->a(Ljava/lang/String;Lnet/gotev/uploadservice/UploadInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 449
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/gotev/uploadservice/g;->a(Ljava/lang/String;Lnet/gotev/uploadservice/UploadInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 450
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/UploadNotificationConfig;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 451
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(I)Landroid/support/v4/app/aj$d;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 452
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->c(I)Landroid/support/v4/app/aj$d;

    move-result-object v0

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->d:Ljava/lang/String;

    .line 453
    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(Ljava/lang/String;)Landroid/support/v4/app/aj$d;

    move-result-object v0

    .line 454
    invoke-virtual {p1}, Lnet/gotev/uploadservice/UploadInfo;->g()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {p1}, Lnet/gotev/uploadservice/UploadInfo;->f()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/aj$d;->a(IIZ)Landroid/support/v4/app/aj$d;

    move-result-object v0

    const/4 v1, 0x1

    .line 455
    invoke-virtual {v0, v1}, Landroid/support/v4/app/aj$d;->a(Z)Landroid/support/v4/app/aj$d;

    .line 457
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->l:Landroid/support/v4/app/aj$d;

    invoke-virtual {v0}, Landroid/support/v4/app/aj$d;->a()Landroid/app/Notification;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    iget-object v2, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lnet/gotev/uploadservice/UploadService;->a(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->k:Landroid/app/NotificationManager;

    iget v1, p0, Lnet/gotev/uploadservice/j;->i:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 462
    :cond_2
    iget-object v1, p0, Lnet/gotev/uploadservice/j;->k:Landroid/app/NotificationManager;

    iget v2, p0, Lnet/gotev/uploadservice/j;->i:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a(J)Lnet/gotev/uploadservice/j;
    .locals 1

    .prologue
    .line 178
    iput-wide p1, p0, Lnet/gotev/uploadservice/j;->j:J

    .line 179
    return-object p0
.end method

.method protected abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final a(JJ)V
    .locals 11

    .prologue
    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 203
    iget-wide v2, p0, Lnet/gotev/uploadservice/j;->j:J

    const-wide/16 v4, 0xa6

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 234
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0, v0, v1}, Lnet/gotev/uploadservice/j;->a(J)Lnet/gotev/uploadservice/j;

    .line 209
    sget-object v0, Lnet/gotev/uploadservice/j;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting upload progress for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lnet/gotev/uploadservice/UploadInfo;

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lnet/gotev/uploadservice/j;->n:J

    iget v4, p0, Lnet/gotev/uploadservice/j;->o:I

    add-int/lit8 v8, v4, -0x1

    iget-object v9, p0, Lnet/gotev/uploadservice/j;->h:Ljava/util/List;

    iget-object v4, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 215
    invoke-virtual {v4}, Lnet/gotev/uploadservice/UploadTaskParameters;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lnet/gotev/uploadservice/j;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int v10, v4, v5

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v10}, Lnet/gotev/uploadservice/UploadInfo;-><init>(Ljava/lang/String;JJJILjava/util/List;I)V

    .line 217
    new-instance v1, Lnet/gotev/uploadservice/BroadcastData;

    invoke-direct {v1}, Lnet/gotev/uploadservice/BroadcastData;-><init>()V

    sget-object v2, Lnet/gotev/uploadservice/BroadcastData$Status;->IN_PROGRESS:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 218
    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/BroadcastData;->a(Lnet/gotev/uploadservice/BroadcastData$Status;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v0}, Lnet/gotev/uploadservice/BroadcastData;->a(Lnet/gotev/uploadservice/UploadInfo;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v1

    .line 221
    iget-object v2, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/gotev/uploadservice/UploadService;->b(Ljava/lang/String;)Lnet/gotev/uploadservice/i;

    move-result-object v2

    .line 222
    if-eqz v2, :cond_1

    .line 223
    iget-object v1, p0, Lnet/gotev/uploadservice/j;->m:Landroid/os/Handler;

    new-instance v3, Lnet/gotev/uploadservice/j$1;

    invoke-direct {v3, p0, v2, v0}, Lnet/gotev/uploadservice/j$1;-><init>(Lnet/gotev/uploadservice/j;Lnet/gotev/uploadservice/i;Lnet/gotev/uploadservice/UploadInfo;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    :goto_1
    invoke-direct {p0, v0}, Lnet/gotev/uploadservice/j;->b(Lnet/gotev/uploadservice/UploadInfo;)V

    goto/16 :goto_0

    .line 230
    :cond_1
    iget-object v2, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/BroadcastData;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/gotev/uploadservice/UploadService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_0
    return-void
.end method

.method protected final a(Lnet/gotev/uploadservice/ServerResponse;)V
    .locals 12

    .prologue
    .line 246
    invoke-virtual {p1}, Lnet/gotev/uploadservice/ServerResponse;->a()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    move v11, v0

    .line 248
    :goto_0
    if-eqz v11, :cond_1

    .line 249
    invoke-virtual {p0}, Lnet/gotev/uploadservice/j;->d()V

    .line 251
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/gotev/uploadservice/j;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lnet/gotev/uploadservice/j;->a(Ljava/io/File;)Z

    goto :goto_1

    .line 246
    :cond_0
    const/4 v0, 0x0

    move v11, v0

    goto :goto_0

    .line 258
    :cond_1
    sget-object v0, Lnet/gotev/uploadservice/j;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting upload completed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v0, Lnet/gotev/uploadservice/UploadInfo;

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lnet/gotev/uploadservice/j;->n:J

    iget-wide v4, p0, Lnet/gotev/uploadservice/j;->g:J

    iget-wide v6, p0, Lnet/gotev/uploadservice/j;->f:J

    iget v8, p0, Lnet/gotev/uploadservice/j;->o:I

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lnet/gotev/uploadservice/j;->h:Ljava/util/List;

    iget-object v10, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 263
    invoke-virtual {v10}, Lnet/gotev/uploadservice/UploadTaskParameters;->a()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lnet/gotev/uploadservice/UploadInfo;-><init>(Ljava/lang/String;JJJILjava/util/List;I)V

    .line 265
    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/gotev/uploadservice/UploadService;->b(Ljava/lang/String;)Lnet/gotev/uploadservice/i;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_3

    .line 267
    iget-object v2, p0, Lnet/gotev/uploadservice/j;->m:Landroid/os/Handler;

    new-instance v3, Lnet/gotev/uploadservice/j$2;

    invoke-direct {v3, p0, v1, v0, p1}, Lnet/gotev/uploadservice/j$2;-><init>(Lnet/gotev/uploadservice/j;Lnet/gotev/uploadservice/i;Lnet/gotev/uploadservice/UploadInfo;Lnet/gotev/uploadservice/ServerResponse;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    :goto_2
    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_2

    .line 285
    if-eqz v11, :cond_4

    .line 286
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->k()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->n()Z

    move-result v4

    .line 288
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->b()I

    move-result v5

    .line 289
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->f()I

    move-result v6

    move-object v1, p0

    move-object v2, v0

    .line 286
    invoke-direct/range {v1 .. v6}, Lnet/gotev/uploadservice/j;->a(Lnet/gotev/uploadservice/UploadInfo;Ljava/lang/String;ZII)V

    .line 298
    :cond_2
    :goto_3
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/UploadService;->a(Ljava/lang/String;)V

    .line 299
    return-void

    .line 274
    :cond_3
    new-instance v1, Lnet/gotev/uploadservice/BroadcastData;

    invoke-direct {v1}, Lnet/gotev/uploadservice/BroadcastData;-><init>()V

    sget-object v2, Lnet/gotev/uploadservice/BroadcastData$Status;->COMPLETED:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 275
    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/BroadcastData;->a(Lnet/gotev/uploadservice/BroadcastData$Status;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v1

    .line 276
    invoke-virtual {v1, v0}, Lnet/gotev/uploadservice/BroadcastData;->a(Lnet/gotev/uploadservice/UploadInfo;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v1

    .line 277
    invoke-virtual {v1, p1}, Lnet/gotev/uploadservice/BroadcastData;->a(Lnet/gotev/uploadservice/ServerResponse;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/BroadcastData;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/gotev/uploadservice/UploadService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 291
    :cond_4
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->l()Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->o()Z

    move-result v4

    .line 293
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->c()I

    move-result v5

    .line 294
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->g()I

    move-result v6

    move-object v1, p0

    move-object v2, v0

    .line 291
    invoke-direct/range {v1 .. v6}, Lnet/gotev/uploadservice/j;->a(Lnet/gotev/uploadservice/UploadInfo;Ljava/lang/String;ZII)V

    goto :goto_3
.end method

.method protected a(Lnet/gotev/uploadservice/UploadService;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lnet/gotev/uploadservice/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lnet/gotev/uploadservice/j;->k:Landroid/app/NotificationManager;

    .line 118
    new-instance v0, Landroid/support/v4/app/aj$d;

    invoke-direct {v0, p1}, Landroid/support/v4/app/aj$d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/gotev/uploadservice/j;->l:Landroid/support/v4/app/aj$d;

    .line 119
    iput-object p1, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lnet/gotev/uploadservice/UploadService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/gotev/uploadservice/j;->m:Landroid/os/Handler;

    .line 121
    const-string v0, "taskParameters"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/UploadTaskParameters;

    iput-object v0, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 122
    return-void
.end method

.method protected final b(I)Lnet/gotev/uploadservice/j;
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lnet/gotev/uploadservice/j;->i:I

    .line 191
    return-object p0
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method protected final e()V
    .locals 11

    .prologue
    .line 310
    sget-object v0, Lnet/gotev/uploadservice/j;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting cancellation for upload with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v0, Lnet/gotev/uploadservice/UploadInfo;

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lnet/gotev/uploadservice/j;->n:J

    iget-wide v4, p0, Lnet/gotev/uploadservice/j;->g:J

    iget-wide v6, p0, Lnet/gotev/uploadservice/j;->f:J

    iget v8, p0, Lnet/gotev/uploadservice/j;->o:I

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lnet/gotev/uploadservice/j;->h:Ljava/util/List;

    iget-object v10, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    .line 315
    invoke-virtual {v10}, Lnet/gotev/uploadservice/UploadTaskParameters;->a()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lnet/gotev/uploadservice/UploadInfo;-><init>(Ljava/lang/String;JJJILjava/util/List;I)V

    .line 317
    new-instance v1, Lnet/gotev/uploadservice/BroadcastData;

    invoke-direct {v1}, Lnet/gotev/uploadservice/BroadcastData;-><init>()V

    sget-object v2, Lnet/gotev/uploadservice/BroadcastData$Status;->CANCELLED:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 318
    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/BroadcastData;->a(Lnet/gotev/uploadservice/BroadcastData$Status;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v1

    .line 319
    invoke-virtual {v1, v0}, Lnet/gotev/uploadservice/BroadcastData;->a(Lnet/gotev/uploadservice/UploadInfo;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v1

    .line 321
    iget-object v2, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/gotev/uploadservice/UploadService;->b(Ljava/lang/String;)Lnet/gotev/uploadservice/i;

    move-result-object v2

    .line 322
    if-eqz v2, :cond_1

    .line 323
    iget-object v1, p0, Lnet/gotev/uploadservice/j;->m:Landroid/os/Handler;

    new-instance v3, Lnet/gotev/uploadservice/j$3;

    invoke-direct {v3, p0, v2, v0}, Lnet/gotev/uploadservice/j$3;-><init>(Lnet/gotev/uploadservice/j;Lnet/gotev/uploadservice/i;Lnet/gotev/uploadservice/UploadInfo;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    :goto_0
    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->b()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->m()Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->p()Z

    move-result v4

    .line 338
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->d()I

    move-result v5

    .line 339
    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->h()I

    move-result v6

    move-object v1, p0

    move-object v2, v0

    .line 336
    invoke-direct/range {v1 .. v6}, Lnet/gotev/uploadservice/j;->a(Lnet/gotev/uploadservice/UploadInfo;Ljava/lang/String;ZII)V

    .line 342
    :cond_0
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/UploadService;->a(Ljava/lang/String;)V

    .line 343
    return-void

    .line 330
    :cond_1
    iget-object v2, p0, Lnet/gotev/uploadservice/j;->c:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/BroadcastData;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/gotev/uploadservice/UploadService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lnet/gotev/uploadservice/j;->h:Ljava/util/List;

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/gotev/uploadservice/j;->e:Z

    .line 535
    return-void
.end method

.method public final run()V
    .locals 8

    .prologue
    .line 127
    new-instance v0, Lnet/gotev/uploadservice/UploadInfo;

    iget-object v1, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/gotev/uploadservice/UploadInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/gotev/uploadservice/j;->a(Lnet/gotev/uploadservice/UploadInfo;)V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lnet/gotev/uploadservice/j;->o:I

    .line 131
    sget v0, Lnet/gotev/uploadservice/UploadService;->g:I

    .line 133
    :cond_0
    :goto_0
    iget v1, p0, Lnet/gotev/uploadservice/j;->o:I

    iget-object v2, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadTaskParameters;->e()I

    move-result v2

    if-gt v1, v2, :cond_1

    iget-boolean v1, p0, Lnet/gotev/uploadservice/j;->e:Z

    if-eqz v1, :cond_1

    .line 134
    iget v1, p0, Lnet/gotev/uploadservice/j;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/gotev/uploadservice/j;->o:I

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lnet/gotev/uploadservice/j;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_1
    iget-boolean v0, p0, Lnet/gotev/uploadservice/j;->e:Z

    if-nez v0, :cond_2

    .line 167
    invoke-virtual {p0}, Lnet/gotev/uploadservice/j;->e()V

    .line 169
    :cond_2
    return-void

    .line 140
    :catch_0
    move-exception v1

    .line 141
    iget-boolean v2, p0, Lnet/gotev/uploadservice/j;->e:Z

    if-eqz v2, :cond_1

    .line 143
    iget v2, p0, Lnet/gotev/uploadservice/j;->o:I

    iget-object v3, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/UploadTaskParameters;->e()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 144
    invoke-direct {p0, v1}, Lnet/gotev/uploadservice/j;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 146
    :cond_3
    sget-object v2, Lnet/gotev/uploadservice/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in uploadId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v4}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/gotev/uploadservice/j;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Waiting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit16 v4, v0, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s before next attempt. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lnet/gotev/uploadservice/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 152
    :goto_1
    iget-boolean v1, p0, Lnet/gotev/uploadservice/j;->e:Z

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v6, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    .line 154
    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 155
    :catch_1
    move-exception v1

    goto :goto_1

    .line 158
    :cond_4
    sget v1, Lnet/gotev/uploadservice/UploadService;->h:I

    mul-int/2addr v0, v1

    .line 159
    sget v1, Lnet/gotev/uploadservice/UploadService;->i:I

    if-le v0, v1, :cond_0

    .line 160
    sget v0, Lnet/gotev/uploadservice/UploadService;->i:I

    goto/16 :goto_0
.end method
