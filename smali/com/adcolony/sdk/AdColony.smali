.class public Lcom/adcolony/sdk/AdColony;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 879
    .line 880
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 881
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 885
    :goto_0
    return-object v0

    .line 883
    :catch_0
    move-exception v0

    .line 885
    const-string v0, "unknown"

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;)V
    .locals 4

    .prologue
    .line 850
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    invoke-static {p0}, Lcom/adcolony/sdk/AdColony;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 861
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 862
    const-string v2, "sessionId"

    const-string v3, "unknown"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string v2, "packageName"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-string v0, "appId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string v0, "zoneIds"

    iget-object v2, p1, Lcom/adcolony/sdk/AdColonyAppOptions;->c:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string v0, "controllerVersion"

    const-string v2, "unknown"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const-string v0, "apiLevel"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    const-string v0, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const-string v0, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const-string v0, "osVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    invoke-static {v1}, Lcom/adcolony/sdk/w;->a(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method static a()Z
    .locals 4

    .prologue
    .line 779
    new-instance v0, Lcom/adcolony/sdk/au$b;

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-direct {v0, v2, v3}, Lcom/adcolony/sdk/au$b;-><init>(D)V

    .line 780
    :goto_0
    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v1, v1, Lcom/adcolony/sdk/h;->G:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/adcolony/sdk/au$b;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 784
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 786
    :catch_0
    move-exception v1

    goto :goto_0

    .line 792
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->G:Z

    return v0
.end method

.method static a(Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 804
    if-eqz p0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 806
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v1, Lcom/adcolony/sdk/AdColony$8;

    invoke-direct {v1, p1, p0}, Lcom/adcolony/sdk/AdColony$8;-><init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 822
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static a(Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 827
    if-eqz p0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 829
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v1, Lcom/adcolony/sdk/AdColony$9;

    invoke-direct {v1, p1, p0}, Lcom/adcolony/sdk/AdColony$9;-><init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 845
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static a(Ljava/lang/String;Lcom/adcolony/sdk/ay;II)Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 151
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    .line 157
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 158
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 159
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static addCustomMessageListener(Lcom/adcolony/sdk/AdColonyCustomMessageListener;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 515
    sget-boolean v1, Lcom/adcolony/sdk/a;->n:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v1, :cond_1

    .line 517
    :cond_0
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring call to AdColony.addCustomMessageListener as AdColony has not yet been configured."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 560
    :goto_0
    return v0

    .line 521
    :cond_1
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 523
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring call to AdColony.addCustomMessageListener."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 535
    :cond_2
    :try_start_0
    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v1, v1, Lcom/adcolony/sdk/h;->u:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v1, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/adcolony/sdk/AdColony$4;

    invoke-direct {v2, p1}, Lcom/adcolony/sdk/AdColony$4;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    const/4 v0, 0x1

    goto :goto_0

    .line 555
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static b()V
    .locals 2

    .prologue
    .line 894
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v1, "The AdColony API is not available while AdColony is disabled."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 895
    return-void
.end method

.method static c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 905
    sget-boolean v1, Lcom/adcolony/sdk/a;->n:Z

    if-nez v1, :cond_1

    .line 907
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring call to AdColony.isTablet() as AdColony has not yet been configured."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 922
    :cond_0
    :goto_0
    return v0

    .line 911
    :cond_1
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 916
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 917
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v3

    .line 918
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v1, v3, v1

    .line 919
    mul-float/2addr v2, v2

    mul-float/2addr v1, v1

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 922
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static clearCustomMessageListeners()Z
    .locals 2

    .prologue
    .line 621
    sget-boolean v0, Lcom/adcolony/sdk/a;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_1

    .line 623
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to AdColony.clearCustomMessageListeners as AdColony has not yet been configured."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 624
    const/4 v0, 0x0

    .line 645
    :goto_0
    return v0

    .line 627
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 629
    sget-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/adcolony/sdk/AdColony$6;

    invoke-direct {v1}, Lcom/adcolony/sdk/AdColony$6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 645
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static varargs configure(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/adcolony/sdk/af;->a(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Cannot configure AdColony; configuration mechanism requires 5 seconds between attempts."

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 146
    :goto_0
    return v1

    .line 66
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 68
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 72
    :cond_1
    if-nez p1, :cond_2

    .line 74
    new-instance p1, Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-direct {p1}, Lcom/adcolony/sdk/AdColonyAppOptions;-><init>()V

    .line 78
    :cond_2
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v2, "reconfigurable"

    .line 80
    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 82
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring call to AdColony.configure, as the app id does not match what was used during the initial configuration."

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 87
    :cond_3
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyAppOptions;->b:[Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyAppOptions;->b:[Ljava/lang/String;

    .line 88
    invoke-static {p3, v0}, Lcom/adcolony/sdk/AdColony;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring call to AdColony.configure, as the same zone ids were used during the previous configuration."

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/AdColonyAppOptions;->a(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, p3}, Lcom/adcolony/sdk/AdColonyAppOptions;->a([Ljava/lang/String;)V

    .line 100
    invoke-static {p0, p1}, Lcom/adcolony/sdk/AdColony;->a(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;)V

    .line 101
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss:SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 103
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    move v0, v1

    move v2, v3

    .line 107
    :goto_1
    array-length v7, p3

    if-ge v0, v7, :cond_6

    .line 109
    aget-object v7, p3, v0

    if-eqz v7, :cond_5

    aget-object v7, p3, v0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v2, v1

    .line 107
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_6
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v2, :cond_8

    .line 117
    :cond_7
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v2, "AdColony.configure() called with an empty app or zone id String."

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto/16 :goto_0

    .line 122
    :cond_8
    sput-boolean v3, Lcom/adcolony/sdk/a;->n:Z

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_9

    .line 128
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "The minimum API level for the AdColony SDK is 14."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 129
    invoke-static {p0, p1, v3}, Lcom/adcolony/sdk/a;->a(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Z)V

    .line 143
    :goto_2
    sget-object v0, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configure: Total Time (ms): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and started at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    move v1, v3

    .line 146
    goto/16 :goto_0

    .line 133
    :cond_9
    invoke-static {p0, p1, v1}, Lcom/adcolony/sdk/a;->a(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Z)V

    goto :goto_2
.end method

.method public static varargs configure(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 933
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    iget-object v0, v0, Lcom/adcolony/sdk/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 937
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->b()Ljava/lang/String;

    move-result-object v0

    .line 939
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 952
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    if-eqz v0, :cond_0

    .line 955
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 957
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getAppOptions()Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 1

    .prologue
    .line 426
    sget-boolean v0, Lcom/adcolony/sdk/a;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    if-nez v0, :cond_1

    .line 428
    :cond_0
    const/4 v0, 0x0

    .line 431
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    goto :goto_0
.end method

.method public static getCustomMessageListener(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyCustomMessageListener;
    .locals 1

    .prologue
    .line 572
    sget-boolean v0, Lcom/adcolony/sdk/a;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_1

    .line 574
    :cond_0
    const/4 v0, 0x0

    .line 576
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyCustomMessageListener;

    goto :goto_0
.end method

.method public static getRewardListener()Lcom/adcolony/sdk/AdColonyRewardListener;
    .locals 1

    .prologue
    .line 495
    sget-boolean v0, Lcom/adcolony/sdk/a;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_1

    .line 497
    :cond_0
    const/4 v0, 0x0

    .line 500
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->t:Lcom/adcolony/sdk/AdColonyRewardListener;

    goto :goto_0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    sget-boolean v0, Lcom/adcolony/sdk/a;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_1

    .line 482
    :cond_0
    const-string v0, ""

    .line 484
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    const-string v0, "3.0.7"

    goto :goto_0
.end method

.method public static getZone(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyZone;
    .locals 2

    .prologue
    .line 172
    sget-boolean v0, Lcom/adcolony/sdk/a;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_1

    .line 174
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to AdColony.getZone() as AdColony has not yet been configured."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 175
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    .line 178
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyZone;

    goto :goto_0

    .line 184
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/AdColonyZone;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 185
    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v1, v1, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static notifyIAPComplete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 200
    const/4 v0, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {p0, p1, v0, v2, v3}, Lcom/adcolony/sdk/AdColony;->notifyIAPComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Z

    move-result v0

    return v0
.end method

.method public static notifyIAPComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 215
    sget-boolean v1, Lcom/adcolony/sdk/a;->n:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v1, :cond_1

    .line 217
    :cond_0
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring call to notifyIAPComplete as AdColony has not yet been configured."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 263
    :goto_0
    return v0

    .line 221
    :cond_1
    invoke-static {p0}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 223
    :cond_2
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring call to notifyIAPComplete as one of the passed Strings is greater than 128 characters."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 227
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    .line 229
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "You are trying to report an IAP event with a currency String containing more than 3 characters."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 236
    :cond_4
    new-instance v1, Lcom/adcolony/sdk/AdColony$1;

    move-wide v2, p3

    move-object v4, p2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/adcolony/sdk/AdColony$1;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static removeCustomMessageListener(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 588
    sget-boolean v0, Lcom/adcolony/sdk/a;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_1

    .line 590
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to AdColony.removeCustomMessageListener as AdColony has not yet been configured."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 591
    const/4 v0, 0x0

    .line 610
    :goto_0
    return v0

    .line 594
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/adcolony/sdk/AdColony$5;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/AdColony$5;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 610
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static removeRewardListener()Z
    .locals 2

    .prologue
    .line 463
    sget-boolean v0, Lcom/adcolony/sdk/a;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_1

    .line 465
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to AdColony.removeRewardListener() as AdColony has not yet been configured."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 466
    const/4 v0, 0x0

    .line 469
    :goto_0
    return v0

    .line 468
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adcolony/sdk/h;->t:Lcom/adcolony/sdk/AdColonyRewardListener;

    .line 469
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;)Z
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    move-result v0

    return v0
.end method

.method public static requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 685
    sget-boolean v2, Lcom/adcolony/sdk/a;->n:Z

    if-nez v2, :cond_0

    .line 687
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring call to AdColony.requestInterstitial as AdColony has not yet been configured."

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 688
    new-instance v0, Lcom/adcolony/sdk/AdColonyZone;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V

    move v0, v1

    .line 766
    :goto_0
    return v0

    .line 694
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 695
    const-string v3, "zone_id"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-static {v0, v2}, Lcom/adcolony/sdk/af;->a(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 698
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyZone;

    .line 699
    if-nez v0, :cond_1

    .line 701
    new-instance v0, Lcom/adcolony/sdk/AdColonyZone;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 702
    sget-object v2, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Zone info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist in hashmap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 704
    :cond_1
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V

    move v0, v1

    .line 705
    goto :goto_0

    .line 708
    :cond_2
    new-instance v2, Lcom/adcolony/sdk/AdColony$7;

    invoke-direct {v2, p1, p0, p2}, Lcom/adcolony/sdk/AdColony$7;-><init>(Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdOptions;)V

    .line 759
    :try_start_0
    sget-object v3, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 761
    :catch_0
    move-exception v0

    .line 763
    invoke-static {p1, p0}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)Z

    move v0, v1

    .line 764
    goto :goto_0
.end method

.method public static requestNativeAdView(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;)Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/adcolony/sdk/AdColony;->requestNativeAdView(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    move-result v0

    return v0
.end method

.method public static requestNativeAdView(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 314
    sget-boolean v2, Lcom/adcolony/sdk/a;->n:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v2, :cond_1

    .line 316
    :cond_0
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring call to requestNativeAdView as AdColony has not yet been configured."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 317
    invoke-static {p1, p0}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Ljava/lang/String;)Z

    .line 371
    :goto_0
    return v0

    .line 322
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 323
    const-string v3, "zone_id"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {v1, v2}, Lcom/adcolony/sdk/af;->a(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    invoke-static {p1, p0}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Ljava/lang/String;)Z

    goto :goto_0

    .line 331
    :cond_2
    new-instance v2, Lcom/adcolony/sdk/AdColony$2;

    invoke-direct {v2, p1, p0, p2, p3}, Lcom/adcolony/sdk/AdColony$2;-><init>(Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)V

    .line 364
    :try_start_0
    sget-object v3, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 371
    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    .line 368
    invoke-static {p1, p0}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static setAppOptions(Lcom/adcolony/sdk/AdColonyAppOptions;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 384
    sget-boolean v1, Lcom/adcolony/sdk/a;->n:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v1, :cond_1

    .line 386
    :cond_0
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring call to AdColony.setAppOptions() as AdColony has not yet been configured."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 416
    :goto_0
    return v0

    .line 390
    :cond_1
    new-instance v1, Lcom/adcolony/sdk/AdColony$3;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/AdColony$3;-><init>(Lcom/adcolony/sdk/AdColonyAppOptions;)V

    .line 409
    :try_start_0
    sget-object v2, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    const/4 v0, 0x1

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setRewardListener(Lcom/adcolony/sdk/AdColonyRewardListener;)Z
    .locals 2

    .prologue
    .line 446
    sget-boolean v0, Lcom/adcolony/sdk/a;->n:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_1

    .line 448
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to AdColony.setRewardListener() as AdColony has not yet been configured."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 449
    const/4 v0, 0x0

    .line 452
    :goto_0
    return v0

    .line 451
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iput-object p0, v0, Lcom/adcolony/sdk/h;->t:Lcom/adcolony/sdk/AdColonyRewardListener;

    .line 452
    const/4 v0, 0x1

    goto :goto_0
.end method
