.class public Lcom/smaato/soma/mediation/p;
.super Lcom/smaato/soma/mediation/f;
.source "MillennialMediationBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/mediation/p$a;
    }
.end annotation


# instance fields
.field private a:Lcom/millennialmedia/InlineAd;

.field private b:Lcom/smaato/soma/mediation/f$a;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/smaato/soma/mediation/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/mediation/p;)Lcom/smaato/soma/mediation/f$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smaato/soma/mediation/p;->b:Lcom/smaato/soma/mediation/f$a;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/smaato/soma/mediation/p;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/p;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/smaato/soma/mediation/p;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 202
    iput-object v1, p0, Lcom/smaato/soma/mediation/p;->d:Landroid/os/Handler;

    .line 203
    iput-object v1, p0, Lcom/smaato/soma/mediation/p;->e:Ljava/lang/Runnable;

    .line 206
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MMediaBanner"

    const-string v2, " cancelTimeout called inMMediaBanner"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 210
    return-void
.end method

.method static synthetic b(Lcom/smaato/soma/mediation/p;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/smaato/soma/mediation/p;->b()V

    return-void
.end method

.method static synthetic c(Lcom/smaato/soma/mediation/p;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smaato/soma/mediation/p;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 305
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MMediaBanner"

    const-string v2, "MillennialMedia dependecies missing. Check configurations of MMediaBanner"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 310
    iget-object v0, p0, Lcom/smaato/soma/mediation/p;->b:Lcom/smaato/soma/mediation/f$a;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/smaato/soma/mediation/p;->b:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/p;->a()V

    .line 315
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 319
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MMediaBanner"

    const-string v2, "Exception happened with Mediation inputs. Check in MMediaBanner"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 324
    iget-object v0, p0, Lcom/smaato/soma/mediation/p;->b:Lcom/smaato/soma/mediation/f$a;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/smaato/soma/mediation/p;->b:Lcom/smaato/soma/mediation/f$a;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/smaato/soma/mediation/p;->a()V

    .line 329
    return-void
.end method

.method static synthetic d(Lcom/smaato/soma/mediation/p;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/smaato/soma/mediation/p;->c()V

    return-void
.end method

.method static synthetic e(Lcom/smaato/soma/mediation/p;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/smaato/soma/mediation/p;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 157
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/smaato/soma/mediation/p;->a:Lcom/millennialmedia/InlineAd;

    .line 159
    iget-object v0, p0, Lcom/smaato/soma/mediation/p;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/mediation/p;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/smaato/soma/mediation/p;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/mediation/p;->d:Landroid/os/Handler;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/mediation/p;->e:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MMediaBanner"

    const-string v2, "NoClassDefFoundError in invalidating MMSDKMMediaBanner"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    .line 172
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MMediaBanner"

    const-string v2, "Exception in invalidating MMSDKMMediaBanner"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/smaato/soma/mediation/f$a;Ljava/util/Map;Lcom/smaato/soma/mediation/o;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/smaato/soma/mediation/f$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/smaato/soma/mediation/o;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 41
    iput-object p2, p0, Lcom/smaato/soma/mediation/p;->b:Lcom/smaato/soma/mediation/f$a;

    .line 43
    iput-object v3, p0, Lcom/smaato/soma/mediation/p;->a:Lcom/millennialmedia/InlineAd;

    .line 47
    invoke-virtual {p0, p4}, Lcom/smaato/soma/mediation/p;->a(Lcom/smaato/soma/mediation/o;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/smaato/soma/mediation/p;->b:Lcom/smaato/soma/mediation/f$a;

    sget-object v3, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v2, v3}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 150
    :goto_0
    return-void

    .line 54
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/millennialmedia/MMSDK;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_5

    .line 56
    invoke-static {}, Lcom/millennialmedia/MMSDK;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    instance-of v2, p1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_4

    .line 59
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-static {v2}, Lcom/millennialmedia/MMSDK;->initialize(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :cond_1
    :goto_1
    :try_start_2
    sget v2, Lcom/smaato/soma/debug/a;->a:I

    if-le v2, v8, :cond_6

    .line 75
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/millennialmedia/MMLog;->setLogLevel(I)V

    .line 81
    :goto_2
    new-instance v2, Lcom/millennialmedia/AppInfo;

    invoke-direct {v2}, Lcom/millennialmedia/AppInfo;-><init>()V

    const-string v4, "Smaato"

    invoke-virtual {v2, v4}, Lcom/millennialmedia/AppInfo;->setMediator(Ljava/lang/String;)Lcom/millennialmedia/AppInfo;

    move-result-object v4

    .line 83
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 84
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s*;\\s*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_2

    array-length v3, v2

    if-le v3, v8, :cond_2

    .line 87
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Lcom/millennialmedia/AppInfo;->setSiteId(Ljava/lang/String;)Lcom/millennialmedia/AppInfo;

    .line 91
    :cond_2
    :goto_3
    invoke-static {v4}, Lcom/millennialmedia/MMSDK;->setAppInfo(Lcom/millennialmedia/AppInfo;)V

    .line 93
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/smaato/soma/mediation/p;->c:Landroid/widget/LinearLayout;

    .line 94
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    const/4 v4, 0x1

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 98
    if-eqz v2, :cond_7

    array-length v3, v2

    if-lez v3, :cond_7

    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-eqz v3, :cond_7

    .line 99
    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/smaato/soma/mediation/p;->c:Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Lcom/millennialmedia/InlineAd;->createInstance(Ljava/lang/String;Landroid/view/ViewGroup;)Lcom/millennialmedia/InlineAd;

    move-result-object v2

    iput-object v2, p0, Lcom/smaato/soma/mediation/p;->a:Lcom/millennialmedia/InlineAd;

    .line 105
    :goto_4
    iget-object v2, p0, Lcom/smaato/soma/mediation/p;->a:Lcom/millennialmedia/InlineAd;

    new-instance v3, Lcom/smaato/soma/mediation/p$a;

    invoke-direct {v3, p0}, Lcom/smaato/soma/mediation/p$a;-><init>(Lcom/smaato/soma/mediation/p;)V

    invoke-virtual {v2, v3}, Lcom/millennialmedia/InlineAd;->setListener(Lcom/millennialmedia/InlineAd$InlineListener;)V

    .line 108
    const/16 v3, 0x140

    .line 109
    const/16 v2, 0x32

    .line 112
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->f()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->g()I

    move-result v4

    if-lez v4, :cond_3

    .line 113
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->f()I

    move-result v3

    .line 114
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->g()I

    move-result v2

    .line 118
    :cond_3
    new-instance v4, Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    invoke-direct {v4}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;-><init>()V

    new-instance v5, Lcom/millennialmedia/InlineAd$AdSize;

    invoke-direct {v5, v3, v2}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->setAdSize(Lcom/millennialmedia/InlineAd$AdSize;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    move-result-object v2

    .line 120
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/smaato/soma/mediation/p;->d:Landroid/os/Handler;

    .line 121
    new-instance v3, Lcom/smaato/soma/mediation/p$1;

    invoke-direct {v3, p0}, Lcom/smaato/soma/mediation/p$1;-><init>(Lcom/smaato/soma/mediation/p;)V

    iput-object v3, p0, Lcom/smaato/soma/mediation/p;->e:Ljava/lang/Runnable;

    .line 136
    iget-object v3, p0, Lcom/smaato/soma/mediation/p;->d:Landroid/os/Handler;

    iget-object v4, p0, Lcom/smaato/soma/mediation/p;->e:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1d4c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    iget-object v3, p0, Lcom/smaato/soma/mediation/p;->a:Lcom/millennialmedia/InlineAd;

    invoke-virtual {v3, v2}, Lcom/millennialmedia/InlineAd;->request(Lcom/millennialmedia/InlineAd$InlineAdMetadata;)V
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 140
    :catch_0
    move-exception v2

    .line 141
    invoke-direct {p0}, Lcom/smaato/soma/mediation/p;->c()V

    goto/16 :goto_0

    .line 62
    :cond_4
    :try_start_3
    new-instance v2, Lcom/smaato/soma/debug/b;

    const-string v4, "MMediaBanner"

    const-string v5, "\"MMSDK.initialize must be explicitly called with Activity.\" MMediaBanner"

    const/4 v6, 0x1

    sget-object v7, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v2}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 66
    invoke-direct {p0}, Lcom/smaato/soma/mediation/p;->c()V
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 144
    :catch_1
    move-exception v2

    .line 146
    invoke-direct {p0}, Lcom/smaato/soma/mediation/p;->d()V

    goto/16 :goto_0

    .line 70
    :cond_5
    :try_start_4
    invoke-direct {p0}, Lcom/smaato/soma/mediation/p;->c()V

    goto/16 :goto_1

    .line 78
    :cond_6
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/millennialmedia/MMLog;->setLogLevel(I)V

    goto/16 :goto_2

    .line 101
    :cond_7
    invoke-virtual {p4}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/mediation/p;->c:Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Lcom/millennialmedia/InlineAd;->createInstance(Ljava/lang/String;Landroid/view/ViewGroup;)Lcom/millennialmedia/InlineAd;

    move-result-object v2

    iput-object v2, p0, Lcom/smaato/soma/mediation/p;->a:Lcom/millennialmedia/InlineAd;
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 60
    :catch_2
    move-exception v2

    goto/16 :goto_1

    :cond_8
    move-object v2, v3

    goto/16 :goto_3
.end method

.method public a(Lcom/smaato/soma/mediation/o;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 183
    if-nez p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/smaato/soma/mediation/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 187
    goto :goto_0

    .line 189
    :catch_0
    move-exception v2

    .line 190
    new-instance v2, Lcom/smaato/soma/debug/b;

    const-string v3, "MMediaBanner"

    const-string v4, "Mediation inputs are invalidMMediaBanner"

    sget-object v5, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v2}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0
.end method
