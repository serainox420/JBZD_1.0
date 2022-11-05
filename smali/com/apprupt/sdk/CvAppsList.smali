.class public Lcom/apprupt/sdk/CvAppsList;
.super Ljava/lang/Object;
.source "CvAppsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvAppsList$MultiAppInfoListener;,
        Lcom/apprupt/sdk/CvAppsList$AppInfoListener;,
        Lcom/apprupt/sdk/CvAppsList$MultiListener;,
        Lcom/apprupt/sdk/CvAppsList$SingleListener;,
        Lcom/apprupt/sdk/CvAppsList$State;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private e:J

.field private f:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppsList;->a:Ljava/util/Set;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppsList;->b:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppsList;->c:Ljava/util/Map;

    .line 51
    iput-wide v2, p0, Lcom/apprupt/sdk/CvAppsList;->e:J

    .line 52
    iput-wide v2, p0, Lcom/apprupt/sdk/CvAppsList;->f:J

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAppsList;->d:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    .line 107
    iget-object v2, p0, Lcom/apprupt/sdk/CvAppsList;->b:Ljava/util/Set;

    monitor-enter v2

    .line 108
    :try_start_0
    iget-wide v0, p0, Lcom/apprupt/sdk/CvAppsList;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    monitor-exit v2

    .line 133
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v4, 0x2932e00

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/apprupt/sdk/CvAppsList;->e:J

    .line 110
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 111
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 112
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 113
    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 115
    iget-object v1, p0, Lcom/apprupt/sdk/CvAppsList;->b:Ljava/util/Set;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 119
    const-string v1, "package"

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v7, "name"

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v1, "version"

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v1, "versionCode"

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    iget-object v1, p0, Lcom/apprupt/sdk/CvAppsList;->c:Ljava/util/Map;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v1

    .line 125
    :try_start_2
    const-string v5, "AppsList"

    invoke-static {v5}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Cannot get package info for"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v0, v6, v7

    invoke-interface {v5, v1, v6}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 120
    :cond_1
    :try_start_3
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 126
    :catch_1
    move-exception v1

    .line 127
    :try_start_4
    const-string v5, "AppsList"

    invoke-static {v5}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Cannot build app info json for"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v0, v6, v7

    invoke-interface {v5, v1, v6}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 128
    :catch_2
    move-exception v1

    .line 129
    const-string v5, "AppsList"

    invoke-static {v5}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Error building info for"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v0, v6, v7

    invoke-interface {v5, v1, v6}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 132
    :cond_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvAppsList;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/apprupt/sdk/CvAppsList;->a()V

    return-void
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvAppsList;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList;->b:Ljava/util/Set;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 167
    iget-object v1, p0, Lcom/apprupt/sdk/CvAppsList;->a:Ljava/util/Set;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-wide v2, p0, Lcom/apprupt/sdk/CvAppsList;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    monitor-exit v1

    .line 180
    :goto_0
    return-void

    .line 169
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 170
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/apprupt/sdk/CvAppsList;->f:J

    .line 171
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 172
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList;->d:Landroid/content/Context;

    const-string v2, "android.permission.GET_TASKS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 173
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList;->d:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 174
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 176
    iget-object v3, p0, Lcom/apprupt/sdk/CvAppsList;->a:Ljava/util/Set;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/apprupt/sdk/CvAppsList;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/apprupt/sdk/CvAppsList;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/apprupt/sdk/CvAppsList;->b()V

    return-void
.end method

.method static synthetic e(Lcom/apprupt/sdk/CvAppsList;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList;->a:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/CvAppsList$MultiAppInfoListener;)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apprupt/sdk/CvAppsList$3;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvAppsList$3;-><init>(Lcom/apprupt/sdk/CvAppsList;Lcom/apprupt/sdk/CvAppsList$MultiAppInfoListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    return-void
.end method

.method public a(Lcom/apprupt/sdk/CvAppsList$MultiListener;)V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apprupt/sdk/CvAppsList$2;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvAppsList$2;-><init>(Lcom/apprupt/sdk/CvAppsList;Lcom/apprupt/sdk/CvAppsList$MultiListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apprupt/sdk/CvAppsList$AppInfoListener;)V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/apprupt/sdk/CvAppsList$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/apprupt/sdk/CvAppsList$6;-><init>(Lcom/apprupt/sdk/CvAppsList;Ljava/lang/String;Lcom/apprupt/sdk/CvAppsList$AppInfoListener;)V

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvAppsList;->a(Lcom/apprupt/sdk/CvAppsList$MultiListener;)V

    .line 194
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apprupt/sdk/CvAppsList$SingleListener;)V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/apprupt/sdk/CvAppsList$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/apprupt/sdk/CvAppsList$1;-><init>(Lcom/apprupt/sdk/CvAppsList;Lcom/apprupt/sdk/CvAppsList$SingleListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvAppsList;->a(Lcom/apprupt/sdk/CvAppsList$MultiListener;)V

    .line 70
    return-void
.end method

.method public b(Lcom/apprupt/sdk/CvAppsList$MultiListener;)V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apprupt/sdk/CvAppsList$5;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvAppsList$5;-><init>(Lcom/apprupt/sdk/CvAppsList;Lcom/apprupt/sdk/CvAppsList$MultiListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 162
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/apprupt/sdk/CvAppsList$SingleListener;)V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/apprupt/sdk/CvAppsList$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/apprupt/sdk/CvAppsList$4;-><init>(Lcom/apprupt/sdk/CvAppsList;Lcom/apprupt/sdk/CvAppsList$SingleListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvAppsList;->b(Lcom/apprupt/sdk/CvAppsList$MultiListener;)V

    .line 147
    return-void
.end method
