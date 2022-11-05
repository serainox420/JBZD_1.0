.class public Lpl/jbzd/app/MyApplication;
.super Lpl/jbzd/core/MvpApplication;
.source "MyApplication.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/AATKit$Delegate;


# instance fields
.field private a:Lcom/google/android/gms/analytics/Tracker;

.field private b:Lpl/jbzd/b/b;

.field private c:Lpl/jbzd/a/a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lpl/jbzd/core/MvpApplication;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/MyApplication;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lpl/jbzd/b/b;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/MyApplication;

    iget-object v0, v0, Lpl/jbzd/app/MyApplication;->b:Lpl/jbzd/b/b;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 121
    invoke-static {p0, p0}, Lcom/intentsoftware/addapptr/AATKit;->initWithoutDebugScreen(Landroid/app/Application;Lcom/intentsoftware/addapptr/AATKit$Delegate;)V

    .line 123
    iget-object v0, p0, Lpl/jbzd/app/MyApplication;->d:Ljava/util/List;

    const-string v1, "jbzd 1"

    sget-object v2, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-static {v1, v2}, Lcom/intentsoftware/addapptr/AATKit;->createPlacement(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lpl/jbzd/app/MyApplication;->d:Ljava/util/List;

    const-string v1, "jbzd 2"

    sget-object v2, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-static {v1, v2}, Lcom/intentsoftware/addapptr/AATKit;->createPlacement(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/android/gms/analytics/Tracker;
    .locals 2

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lpl/jbzd/app/MyApplication;->a:Lcom/google/android/gms/analytics/Tracker;

    if-nez v0, :cond_0

    .line 112
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 113
    const-string v1, "UA-26374187-7"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/app/MyApplication;->a:Lcom/google/android/gms/analytics/Tracker;

    .line 116
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/MyApplication;->a:Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lpl/jbzd/a/a;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lpl/jbzd/app/MyApplication;->c:Lpl/jbzd/a/a;

    .line 139
    return-void
.end method

.method public aatkitHaveAd(I)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lpl/jbzd/app/MyApplication;->c:Lpl/jbzd/a/a;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lpl/jbzd/app/MyApplication;->c:Lpl/jbzd/a/a;

    invoke-interface {v0, p1}, Lpl/jbzd/a/a;->a(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public aatkitHaveAdForPlacementWithBannerView(ILcom/intentsoftware/addapptr/k;)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public aatkitNoAd(I)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lpl/jbzd/app/MyApplication;->c:Lpl/jbzd/a/a;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lpl/jbzd/app/MyApplication;->c:Lpl/jbzd/a/a;

    invoke-interface {v0, p1}, Lpl/jbzd/a/a;->b(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public aatkitObtainedAdRules(Z)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public aatkitPauseForAd(I)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public aatkitResumeAfterAd(I)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public aatkitShowingEmpty(I)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public aatkitUnknownBundleId()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public aatkitUserEarnedIncentive(I)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0, p1}, Lpl/jbzd/core/MvpApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 105
    invoke-static {p0}, Landroid/support/multidex/a;->a(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lpl/jbzd/app/MyApplication;->d:Ljava/util/List;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lpl/jbzd/core/MvpApplication;->onCreate()V

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Lio/fabric/sdk/android/h;

    const/4 v1, 0x0

    new-instance v2, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v2}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lio/fabric/sdk/android/c;->a(Landroid/content/Context;[Lio/fabric/sdk/android/h;)Lio/fabric/sdk/android/c;

    .line 78
    invoke-static {p0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;)V

    .line 79
    invoke-static {p0}, Lpl/jbzd/api/ApiClient;->init(Landroid/content/Context;)Lpl/jbzd/api/ApiClient;

    .line 81
    invoke-static {p0}, Lio/realm/l;->a(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lio/realm/p$a;

    invoke-direct {v0}, Lio/realm/p$a;-><init>()V

    .line 83
    invoke-virtual {v0}, Lio/realm/p$a;->a()Lio/realm/p$a;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lio/realm/p$a;->b()Lio/realm/p;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lio/realm/l;->c(Lio/realm/p;)V

    .line 86
    invoke-direct {p0}, Lpl/jbzd/app/MyApplication;->c()V

    .line 87
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;)V

    .line 88
    invoke-static {p0}, Lpl/jbzd/a/b;->a(Lpl/jbzd/app/MyApplication;)Lpl/jbzd/a/b;

    .line 90
    const-string v0, "pl.jbzd"

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->d:Ljava/lang/String;

    .line 91
    new-instance v0, Lnet/gotev/uploadservice/okhttp/b;

    invoke-direct {v0}, Lnet/gotev/uploadservice/okhttp/b;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->e:Lnet/gotev/uploadservice/a/c;

    .line 93
    new-instance v0, Lpl/jbzd/b/b;

    invoke-direct {v0, p0}, Lpl/jbzd/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/jbzd/app/MyApplication;->b:Lpl/jbzd/b/b;

    .line 94
    return-void
.end method
