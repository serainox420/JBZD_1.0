.class public Lcom/apprupt/sdk/CvSDK;
.super Ljava/lang/Object;
.source "CvSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;
    }
.end annotation


# static fields
.field static final a:Lcom/apprupt/sdk/CvContentManager;

.field static final b:Lcom/apprupt/sdk/CvConfig;

.field static final c:Lcom/apprupt/sdk/CvMediation;

.field public static final d:Lcom/apprupt/sdk/CvValueExchange;

.field static e:Lcom/apprupt/sdk/Messages;

.field private static final f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Lcom/apprupt/sdk/CvAnimationType;

.field private static i:I

.field private static j:Z

.field private static k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pi."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/apprupt/sdk/CvRandomString;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".%d.%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvSDK;->f:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/apprupt/sdk/CvAnimationType;->NONE:Lcom/apprupt/sdk/CvAnimationType;

    sput-object v0, Lcom/apprupt/sdk/CvSDK;->h:Lcom/apprupt/sdk/CvAnimationType;

    .line 43
    sput v2, Lcom/apprupt/sdk/CvSDK;->i:I

    .line 44
    sput-boolean v2, Lcom/apprupt/sdk/CvSDK;->j:Z

    .line 56
    new-instance v0, Lcom/apprupt/sdk/CvContentManager;

    invoke-direct {v0}, Lcom/apprupt/sdk/CvContentManager;-><init>()V

    sput-object v0, Lcom/apprupt/sdk/CvSDK;->a:Lcom/apprupt/sdk/CvContentManager;

    .line 57
    new-instance v0, Lcom/apprupt/sdk/CvConfig;

    const-string v1, "android_4.2.7"

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/CvConfig;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/apprupt/sdk/CvSDK;->b:Lcom/apprupt/sdk/CvConfig;

    .line 59
    sput-boolean v2, Lcom/apprupt/sdk/CvSDK;->k:Z

    .line 60
    new-instance v0, Lcom/apprupt/sdk/CvMediation;

    invoke-direct {v0}, Lcom/apprupt/sdk/CvMediation;-><init>()V

    sput-object v0, Lcom/apprupt/sdk/CvSDK;->c:Lcom/apprupt/sdk/CvMediation;

    .line 61
    new-instance v0, Lcom/apprupt/sdk/CvValueExchange;

    invoke-direct {v0}, Lcom/apprupt/sdk/CvValueExchange;-><init>()V

    sput-object v0, Lcom/apprupt/sdk/CvSDK;->d:Lcom/apprupt/sdk/CvValueExchange;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 70
    invoke-static {}, Lcom/apprupt/sdk/CvAdColony;->a()V

    .line 71
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 66
    invoke-static {p0}, Lcom/apprupt/sdk/CvSDK;->a(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 78
    .line 79
    const-class v1, Lcom/apprupt/sdk/CvSDK;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-boolean v2, Lcom/apprupt/sdk/CvSDK;->j:Z

    if-eqz v2, :cond_2

    .line 81
    const/4 v0, 0x0

    .line 86
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/apprupt/sdk/CvSDK;->b(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/CvAppInfo;->a(Landroid/content/Context;)V

    .line 90
    invoke-static {p0}, Lcom/apprupt/sdk/CvViewHelper;->a(Landroid/content/Context;)V

    .line 92
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->d:Lcom/apprupt/sdk/CvValueExchange;

    invoke-virtual {v0, p0}, Lcom/apprupt/sdk/CvValueExchange;->a(Landroid/content/Context;)V

    .line 93
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 94
    sget-object v1, Lcom/apprupt/sdk/CvSDK;->c:Lcom/apprupt/sdk/CvMediation;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/apprupt/sdk/CvMediation;->a(Landroid/app/Activity;)V

    .line 95
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-virtual {v0, p0}, Lcom/apprupt/sdk/CvConfig;->a(Landroid/content/Context;)V

    .line 98
    :cond_1
    return-void

    .line 83
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcom/apprupt/sdk/CvSDK;->j:Z

    .line 84
    new-instance v2, Lcom/apprupt/sdk/Messages;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/apprupt/sdk/Messages;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/apprupt/sdk/CvSDK;->e:Lcom/apprupt/sdk/Messages;

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;ILcom/apprupt/sdk/CvContentManager$PreloaderListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-static {p0, p1, p2, v0, v0}, Lcom/apprupt/sdk/CvSDK;->a(Landroid/content/Context;ILcom/apprupt/sdk/CvContentManager$PreloaderListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/apprupt/sdk/CvContentManager$PreloaderListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 215
    invoke-static {}, Lcom/apprupt/sdk/CvInterstitialManager;->a()Lcom/apprupt/sdk/CvInterstitialManager;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/apprupt/sdk/CvInterstitialManager;->a(Landroid/content/Context;ILcom/apprupt/sdk/CvContentManager$PreloaderListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/apprupt/sdk/CvSDK$CvInterstitialListener;)V
    .locals 6

    .prologue
    .line 163
    invoke-static {}, Lcom/apprupt/sdk/CvInterstitialManager;->a()Lcom/apprupt/sdk/CvInterstitialManager;

    move-result-object v0

    const-string v4, ""

    const-string v5, ""

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/apprupt/sdk/CvInterstitialManager;->a(Landroid/content/Context;ILcom/apprupt/sdk/CvSDK$CvInterstitialListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 111
    invoke-static {p0, v0}, Lcom/apprupt/sdk/CvSDK;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    const-string v0, ""

    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v0, ", "

    move-object v1, v0

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activities declaration missing in AndroidManifest.xml: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_3
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 3

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/apprupt/sdk/CvInterstitialManager;->a()Lcom/apprupt/sdk/CvInterstitialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInterstitialManager;->b()V

    .line 184
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 74
    invoke-static {p0}, Lcom/apprupt/sdk/CvAdColony;->a(Landroid/app/Activity;)V

    .line 75
    return-void
.end method

.method static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    const-class v1, Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-class v1, Lcom/apprupt/sdk/CvOverlayActivity;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-class v1, Lcom/apprupt/sdk/CvExpandActivity;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {p0, v0}, Lcom/apprupt/sdk/CvSDK;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 106
    return-void
.end method

.method public static c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 296
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->f:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/apprupt/sdk/CvRandomString;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvSDK;->g:Ljava/lang/String;

    .line 297
    invoke-static {}, Lcom/apprupt/sdk/Logger;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NEW PI KEY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/apprupt/sdk/CvSDK;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method static c(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 367
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 368
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    move v1, v2

    .line 369
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 370
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 371
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v3, :cond_1

    .line 372
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    .line 375
    :cond_0
    return v2

    .line 369
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->c()V

    .line 304
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Lcom/apprupt/sdk/CvAnimationType;
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->h:Lcom/apprupt/sdk/CvAnimationType;

    return-object v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 325
    sget v0, Lcom/apprupt/sdk/CvSDK;->i:I

    return v0
.end method
