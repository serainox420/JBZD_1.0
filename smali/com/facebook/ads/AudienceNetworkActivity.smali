.class public Lcom/facebook/ads/AudienceNetworkActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/AudienceNetworkActivity$Type;,
        Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;
    }
.end annotation


# static fields
.field public static final AUDIENCE_NETWORK_UNIQUE_ID_EXTRA:Ljava/lang/String; = "uniqueId"

.field public static final AUTOPLAY:Ljava/lang/String; = "autoplay"

.field public static final BROWSER_URL:Ljava/lang/String; = "browserURL"

.field public static final CLIENT_TOKEN:Ljava/lang/String; = "clientToken"

.field public static final CLOSE_REPORT_URL:Ljava/lang/String; = "closeReportURL"

.field public static final CONTEXT_SWITCH_BEHAVIOR:Ljava/lang/String; = "contextSwitchBehavior"

.field public static final END_CARD_ACTIVATION_COMMAND:Ljava/lang/String; = "facebookRewardedVideoEndCardActivationCommand"

.field public static final END_CARD_MARKUP:Ljava/lang/String; = "facebookRewardedVideoEndCardMarkup"

.field public static final HANDLER_TIME:Ljava/lang/String; = "handlerTime"

.field public static final IMPRESSION_REPORT_URL:Ljava/lang/String; = "impressionReportURL"

.field public static final PREDEFINED_ORIENTATION_KEY:Ljava/lang/String; = "predefinedOrientationKey"

.field public static final REWARD_SERVER_URL:Ljava/lang/String; = "rewardServerURL"

.field public static final SKIP_DELAY_SECONDS_KEY:Ljava/lang/String; = "skipAfterSeconds"

.field public static final VIDEO_LOGGER:Ljava/lang/String; = "videoLogger"

.field public static final VIDEO_MPD:Ljava/lang/String; = "videoMPD"

.field public static final VIDEO_PLAY_REPORT_URL:Ljava/lang/String; = "videoPlayReportURL"

.field public static final VIDEO_REPORT_URL:Ljava/lang/String; = "videoReportURL"

.field public static final VIDEO_SEEK_TIME:Ljava/lang/String; = "videoSeekTime"

.field public static final VIDEO_TIME_REPORT_URL:Ljava/lang/String; = "videoTimeReportURL"

.field public static final VIDEO_URL:Ljava/lang/String; = "videoURL"

.field public static final VIEW_TYPE:Ljava/lang/String; = "viewType"

.field public static final WEBVIEW_ENCODING:Ljava/lang/String; = "utf-8"

.field public static final WEBVIEW_MIME_TYPE:Ljava/lang/String; = "text/html"

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/facebook/ads/internal/view/c;

.field private e:Z

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/content/Intent;

.field private h:Lcom/facebook/ads/internal/g;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Lcom/facebook/ads/AudienceNetworkActivity$Type;

.field private l:J

.field private m:J

.field private n:I

.field private o:Lcom/facebook/ads/internal/view/d;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/AudienceNetworkActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->i:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->p:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/AudienceNetworkActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/AudienceNetworkActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    const-string v0, "predefinedOrientationKey"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->i:I

    const-string v0, "uniqueId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Ljava/lang/String;

    const-string v0, "viewType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    :goto_0
    return-void

    :cond_0
    const-string v0, "predefinedOrientationKey"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->i:I

    const-string v0, "uniqueId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Ljava/lang/String;

    const-string v0, "viewType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    const-string v0, "skipAfterSeconds"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/AudienceNetworkActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/AudienceNetworkActivity;Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/l;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/l;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/AudienceNetworkActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/AudienceNetworkActivity;)Lcom/facebook/ads/internal/g;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->h:Lcom/facebook/ads/internal/g;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    const-string v1, "rewardServerURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/facebook/ads/internal/util/z;

    invoke-direct {v2, v1}, Lcom/facebook/ads/internal/util/z;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/util/z;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/util/aa;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/j;->h:Lcom/facebook/ads/internal/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/j;->i:Lcom/facebook/ads/internal/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    sget-object v0, Lcom/facebook/ads/internal/j;->i:Lcom/facebook/ads/internal/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private c()V
    .locals 6

    new-instance v0, Lcom/facebook/ads/internal/view/c;

    new-instance v1, Lcom/facebook/ads/AudienceNetworkActivity$8;

    invoke-direct {v1, p0}, Lcom/facebook/ads/AudienceNetworkActivity$8;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/internal/view/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/c$b;I)V

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->d:Lcom/facebook/ads/internal/view/c;

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    const-string v1, "facebookRewardedVideoEndCardMarkup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    const-string v1, "facebookRewardedVideoEndCardActivationCommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->d:Lcom/facebook/ads/internal/view/c;

    invoke-static {}, Lcom/facebook/ads/internal/util/i;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->d:Lcom/facebook/ads/internal/view/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->d:Lcom/facebook/ads/internal/view/c;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->b()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/ads/AudienceNetworkActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/facebook/ads/AudienceNetworkActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/ads/AudienceNetworkActivity;)Lcom/facebook/ads/internal/view/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->d:Lcom/facebook/ads/internal/view/c;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/ads/AudienceNetworkActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->m:J

    iget-wide v4, p0, Lcom/facebook/ads/AudienceNetworkActivity;->l:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->m:J

    iput-wide v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->l:J

    iget-wide v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->m:J

    iget v2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    invoke-interface {v0}, Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;->interceptBackButton()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    instance-of v0, v0, Lcom/facebook/ads/internal/adapters/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    check-cast v0, Lcom/facebook/ads/internal/adapters/k;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/k;->a(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0x400

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/AudienceNetworkActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    const-string v1, "useNativeCloseButton"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/g;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->h:Lcom/facebook/ads/internal/g;

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->h:Lcom/facebook/ads/internal/g;

    const v1, 0x186a2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g;->setId(I)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->h:Lcom/facebook/ads/internal/g;

    new-instance v1, Lcom/facebook/ads/AudienceNetworkActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/AudienceNetworkActivity$1;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    const-string v1, "clientToken"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/facebook/ads/internal/view/q;

    new-instance v1, Lcom/facebook/ads/AudienceNetworkActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/ads/AudienceNetworkActivity$2;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/view/q;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/q;->a(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    invoke-interface {v0, v1, p1, p0}, Lcom/facebook/ads/internal/view/d;->a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V

    const-string v0, "com.facebook.ads.interstitial.displayed"

    invoke-direct {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->l:J

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->REWARDED_VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->c()V

    new-instance v0, Lcom/facebook/ads/internal/view/k;

    new-instance v1, Lcom/facebook/ads/AudienceNetworkActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/ads/AudienceNetworkActivity$3;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/view/k;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/d$a;)V

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/AudienceNetworkActivity$4;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->addBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->DISPLAY:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/facebook/ads/internal/view/h;

    new-instance v1, Lcom/facebook/ads/AudienceNetworkActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/ads/AudienceNetworkActivity$5;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/view/h;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->BROWSER:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/facebook/ads/internal/view/f;

    new-instance v1, Lcom/facebook/ads/AudienceNetworkActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/ads/AudienceNetworkActivity$6;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/view/f;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->NATIVE:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    const-string v1, "uniqueId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/j;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/view/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    if-nez v0, :cond_5

    const-string v0, "Unable to find view"

    invoke-static {v3, v0}, Lcom/facebook/ads/internal/util/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/d;->a(Lcom/facebook/ads/internal/util/c;)V

    const-string v0, "com.facebook.ads.interstitial.error"

    invoke-direct {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->finish()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    new-instance v1, Lcom/facebook/ads/AudienceNetworkActivity$7;

    invoke-direct {v1, p0}, Lcom/facebook/ads/AudienceNetworkActivity$7;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/d;->a(Lcom/facebook/ads/internal/view/d$a;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "Unable to infer viewType from intent or savedInstanceState"

    invoke-static {v3, v0}, Lcom/facebook/ads/internal/util/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/d;->a(Lcom/facebook/ads/internal/util/c;)V

    const-string v0, "com.facebook.ads.interstitial.error"

    invoke-direct {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->finish()V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->REWARDED_VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/j;->g:Lcom/facebook/ads/internal/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;)V

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :cond_1
    const-string v0, "com.facebook.ads.interstitial.dismissed"

    invoke-direct {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    iget-wide v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->m:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/ads/AudienceNetworkActivity;->l:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->m:J

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d;->e()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->l:J

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d;->f()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Lcom/facebook/ads/internal/view/d;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/d;->a(Landroid/os/Bundle;)V

    :cond_0
    const-string v0, "predefinedOrientationKey"

    iget v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "uniqueId"

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "viewType"

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->i:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public removeBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
