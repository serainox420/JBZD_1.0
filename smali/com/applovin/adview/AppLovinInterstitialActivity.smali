.class public Lcom/applovin/adview/AppLovinInterstitialActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/applovin/impl/adview/w;


# static fields
.field public static final KEY_WRAPPER_ID:Ljava/lang/String; = "com.applovin.interstitial.wrapper_id"

.field public static volatile lastKnownWrapper:Lcom/applovin/impl/adview/ah;


# instance fields
.field private A:Landroid/view/View;

.field private B:Lcom/applovin/impl/adview/s;

.field private volatile C:Ljava/util/UUID;

.field private D:Landroid/widget/ImageView;

.field private E:Ljava/lang/ref/WeakReference;

.field private a:Lcom/applovin/adview/AppLovinAdView;

.field private b:Lcom/applovin/impl/adview/ah;

.field private volatile c:Z

.field private d:Lcom/applovin/sdk/AppLovinLogger;

.field private e:Lcom/applovin/impl/sdk/cb;

.field private f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private volatile g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Z

.field private q:Z

.field private volatile r:Z

.field private s:Z

.field private t:I

.field private u:Landroid/os/Handler;

.field private v:Landroid/widget/FrameLayout;

.field private w:Lcom/applovin/impl/adview/AppLovinVideoView;

.field private x:Lcom/applovin/impl/adview/u;

.field private y:Landroid/view/View;

.field private z:Lcom/applovin/impl/adview/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/applovin/adview/AppLovinInterstitialActivity;->lastKnownWrapper:Lcom/applovin/impl/adview/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    invoke-static {}, Lcom/applovin/impl/sdk/di;->a()Lcom/applovin/impl/sdk/AppLovinAdImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->i:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->j:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->k:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->l:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->m:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->n:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->o:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->p:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->q:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->r:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Z

    iput v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->E:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static a(Landroid/view/Display;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;I)I
    .locals 0

    iput p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:I

    return p1
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/impl/sdk/AppLovinAdImpl;)Lcom/applovin/impl/sdk/AppLovinAdImpl;
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->E:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/applovin/impl/sdk/di;->a(F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)V

    return-void
.end method

.method private a(ILjava/util/UUID;)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-gtz p1, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/s;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Z

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/s;->a(I)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Landroid/os/Handler;

    new-instance v2, Lcom/applovin/adview/h;

    invoke-direct {v2, p0, v0, p2}, Lcom/applovin/adview/h;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;ILjava/util/UUID;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(JLcom/applovin/impl/adview/u;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/adview/g;

    invoke-direct {v1, p0, p3}, Lcom/applovin/adview/g;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/impl/adview/u;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;ILjava/util/UUID;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(ILjava/util/UUID;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->d()Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->i:Z

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->l:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->c()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V

    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    const/4 v3, -0x1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/AppLovinVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    new-instance v2, Lcom/applovin/adview/b;

    invoke-direct {v2, p0}, Lcom/applovin/adview/b;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v2}, Lcom/applovin/impl/adview/AppLovinVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    new-instance v2, Lcom/applovin/adview/k;

    invoke-direct {v2, p0}, Lcom/applovin/adview/k;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v2}, Lcom/applovin/impl/adview/AppLovinVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    new-instance v2, Lcom/applovin/adview/l;

    invoke-direct {v2, p0}, Lcom/applovin/adview/l;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v2}, Lcom/applovin/impl/adview/AppLovinVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    new-instance v1, Lcom/applovin/adview/AppLovinTouchToClickListener;

    new-instance v2, Lcom/applovin/adview/n;

    invoke-direct {v2, p0}, Lcom/applovin/adview/n;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/applovin/adview/AppLovinTouchToClickListener;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->l()V

    return-void
.end method

.method private a(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->r:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->E:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cb;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->n:Z

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cb;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->p:Z

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/AppLovinVideoView;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->w()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.applovin.interstitial.should_resume_video"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.applovin.interstitial.last_video_position"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Ljava/util/UUID;

    invoke-direct {p0, p1, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(ILjava/util/UUID;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private b(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->dismiss()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/adview/AppLovinInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->n:Z

    return p1
.end method

.method private c(I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method

.method private c(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->j:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->d()Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adHidden(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->G()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/applovin/adview/AppLovinInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->o:Z

    return p1
.end method

.method private d()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Landroid/os/Handler;

    return-void
.end method

.method static synthetic d(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->e()V

    return-void
.end method

.method private d(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->k:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->c()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/applovin/adview/AppLovinInterstitialActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->i()V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->d(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->start()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->n()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)V

    return-void
.end method

.method static synthetic f(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m()V

    return-void
.end method

.method private g()V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v1, 0x3

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getCloseStyle()Lcom/applovin/impl/adview/v;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lcom/applovin/impl/adview/u;->a(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;Lcom/applovin/impl/adview/v;)Lcom/applovin/impl/adview/u;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0, v8}, Lcom/applovin/impl/adview/u;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    new-instance v3, Lcom/applovin/adview/p;

    invoke-direct {v3, p0}, Lcom/applovin/adview/p;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v3}, Lcom/applovin/impl/adview/u;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->m()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    or-int/lit8 v0, v0, 0x30

    invoke-direct {v4, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/adview/u;->a(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->o()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v5

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->q()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v6

    invoke-virtual {v4, v6, v5, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getCloseStyle()Lcom/applovin/impl/adview/v;

    move-result-object v4

    invoke-static {v0, p0, v4}, Lcom/applovin/impl/adview/u;->a(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;Lcom/applovin/impl/adview/v;)Lcom/applovin/impl/adview/u;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0, v8}, Lcom/applovin/impl/adview/u;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    new-instance v4, Lcom/applovin/adview/q;

    invoke-direct {v4, p0}, Lcom/applovin/adview/q;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v4}, Lcom/applovin/impl/adview/u;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    or-int/lit8 v0, v0, 0x30

    invoke-direct {v4, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v6, v5, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/adview/u;->a(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->bringToFront()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/applovin/impl/sdk/cb;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v4}, Lcom/applovin/impl/sdk/cb;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v0

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/view/View;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Landroid/view/View;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    add-int/2addr v3, v0

    invoke-direct {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v0

    sub-int v4, v5, v0

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    or-int/lit8 v0, v0, 0x30

    invoke-direct {v5, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/cb;->w()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    or-int/lit8 v1, v1, 0x30

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/view/View;

    new-instance v2, Lcom/applovin/adview/r;

    invoke-direct {v2, p0}, Lcom/applovin/adview/r;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Landroid/view/View;

    new-instance v2, Lcom/applovin/adview/s;

    invoke-direct {v2, p0}, Lcom/applovin/adview/s;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/view/View;

    invoke-virtual {v1, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method static synthetic g(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->h()V

    return-void
.end method

.method private h()V
    .locals 7

    :try_start_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->D:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->B()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->C()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->D()I

    move-result v0

    invoke-direct {v2, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->D:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->E()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v0

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->r:Z

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getMuteImageFilename()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getFileManager()Lcom/applovin/impl/sdk/z;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, p0, v4}, Lcom/applovin/impl/sdk/z;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v4, "AppLovinInterstitialActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added mute button with params: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->D:Landroid/widget/ImageView;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->safePopulateImageView(Landroid/widget/ImageView;Landroid/net/Uri;I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->D:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->D:Landroid/widget/ImageView;

    new-instance v1, Lcom/applovin/adview/t;

    invoke-direct {v1, p0}, Lcom/applovin/adview/t;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "AppLovinInterstitialActivity"

    const-string v3, "Failed to attach mute button"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getUnmuteImageFilename()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "AppLovinInterstitialActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to add mute button but could not find cached file with intialFilename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->o()V

    return-void
.end method

.method private i()V
    .locals 1

    new-instance v0, Lcom/applovin/adview/e;

    invoke-direct {v0, p0}, Lcom/applovin/adview/e;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic i(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->f()V

    return-void
.end method

.method static synthetic j(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->s()V

    return-void
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->r()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method private k()V
    .locals 1

    new-instance v0, Lcom/applovin/adview/f;

    invoke-direct {v0, p0}, Lcom/applovin/adview/f;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic l(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/sdk/cb;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    return-object v0
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getVideoCloseDelay()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    :goto_0
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getVideoCloseDelay()F

    move-result v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/di;->c(F)J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(JLcom/applovin/impl/adview/u;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    goto :goto_0
.end method

.method static synthetic m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/s;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    return-object v0
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/applovin/impl/adview/s;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->p()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/s;->c(I)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/cb;->h()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/adview/s;->b(F)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/s;->d(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cb;->g()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/s;->a(F)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/s;->b(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cb;->f()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v1

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/cb;->f()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v2

    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/cb;->v()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cb;->u()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->bringToFront()V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Lcom/applovin/impl/adview/s;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->n()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/s;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private n()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getCountdownLength()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cb;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic n(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->q()V

    return-void
.end method

.method static synthetic o(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/u;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    return-object v0
.end method

.method private o()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Ljava/util/UUID;

    return-void
.end method

.method private p()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic p(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/u;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    return-object v0
.end method

.method private q()V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->s()V

    return-void
.end method

.method static synthetic q(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->t()V

    return-void
.end method

.method private r()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/applovin/adview/i;

    invoke-direct {v1, p0}, Lcom/applovin/adview/i;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/applovin/adview/j;

    invoke-direct {v1, p0}, Lcom/applovin/adview/j;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->b()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->d()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->g()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getFileManager()Lcom/applovin/impl/sdk/z;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Lcom/applovin/impl/sdk/z;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Ljava/io/File;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->bringToFront()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->bringToFront()V

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/ah;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/adview/ah;->a(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iput-boolean v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Video file was missing or null - please make sure your app has the WRITE_EXTERNAL_STORAGE permission!"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->s()V

    goto :goto_0

    :cond_4
    const-string v0, "AdView was null"

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic r(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->n:Z

    return v0
.end method

.method private s()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->v()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->stopPlayback()V

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    :cond_3
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->bringToFront()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getCloseDelay()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getCloseDelay()F

    move-result v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/di;->c(F)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(JLcom/applovin/impl/adview/u;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->p:Z

    return-void

    :cond_5
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/u;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic s(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic t(Lcom/applovin/adview/AppLovinInterstitialActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Landroid/view/View;

    return-object v0
.end method

.method private t()V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->u()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getMuteImageFilename()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/cb;->C()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v2

    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getFileManager()Lcom/applovin/impl/sdk/z;

    move-result-object v3

    invoke-virtual {v3, v0, p0, v1}, Lcom/applovin/impl/sdk/z;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->D:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->safePopulateImageView(Landroid/widget/ImageView;Landroid/net/Uri;I)V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getUnmuteImageFilename()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Attempt to toggle mute but no cached mute image file found."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->r:Z

    return v0
.end method

.method static synthetic u(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->o:Z

    return v0
.end method

.method static synthetic v(Lcom/applovin/adview/AppLovinInterstitialActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Landroid/view/View;

    return-object v0
.end method

.method private v()V
    .locals 8

    const/4 v3, 0x0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-boolean v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->l:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->m:Z

    if-eqz v2, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/ah;->g()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    double-to-int v5, v0

    invoke-virtual {v4, v5, v2}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getParametrizedCompletionUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/di;->isValidString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getPostbackService()Lcom/applovin/impl/sdk/PostbackServiceImpl;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/applovin/impl/sdk/PostbackServiceImpl;->dispatchPostbackAsync(Ljava/lang/String;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    :goto_3
    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    const-wide v4, 0x4057c00000000000L    # 95.0

    cmpl-double v2, v0, v4

    if-lez v2, :cond_5

    const/4 v2, 0x1

    :goto_4
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/sdk/AppLovinAd;DZ)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v2

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v4}, Lcom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v4

    int-to-double v4, v4

    int-to-double v6, v2

    div-double/2addr v4, v6

    mul-double/2addr v0, v4

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "No video view detected on video end"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "AppLovinInterstitialActivity"

    const-string v4, "Received invalid placement aware parameterized video completion url. No postback dispatched."

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4
.end method

.method private w()Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.applovin.interstitial.sharedpreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic w(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->i()V

    return-void
.end method

.method static synthetic x(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->k()V

    return-void
.end method

.method static synthetic y(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->i:Z

    return v0
.end method

.method static synthetic z(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/ah;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getAdViewController()Lcom/applovin/adview/AdViewController;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/adview/AdViewControllerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->setIsForegroundClickInvalidated(Z)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->v()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/ah;->a(Z)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->h()V

    :cond_1
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->finish()V

    return-void
.end method

.method public exitWithError(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/applovin/impl/adview/ah;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; CleanedUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/applovin/impl/adview/ah;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinInterstitialActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to properly render an Interstitial Activity, due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/applovin/impl/sdk/di;->a()Lcom/applovin/impl/sdk/AppLovinAdImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Failed to show a video ad due to error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Back button was pressed; forwarding to Android for handling..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Back button was pressed; forwarding as a click to skip button."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Back button was pressed; forwarding as a click to close button."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->performClick()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Back button was pressed, but was not eligible for dismissal."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->requestWindowFeature(I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.applovin.interstitial.wrapper_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v0}, Lcom/applovin/impl/adview/ah;->a(Ljava/lang/String;)Lcom/applovin/impl/adview/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    if-nez v0, :cond_0

    sget-object v0, Lcom/applovin/adview/AppLovinInterstitialActivity;->lastKnownWrapper:Lcom/applovin/impl/adview/ah;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/adview/AppLovinInterstitialActivity;->lastKnownWrapper:Lcom/applovin/impl/adview/ah;

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->b()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->a()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->a()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    new-instance v0, Lcom/applovin/impl/sdk/cb;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v4}, Lcom/applovin/impl/adview/ah;->a()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/applovin/impl/sdk/cb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    if-eqz v3, :cond_a

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Landroid/view/Display;)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-ne v3, v6, :cond_1

    if-eqz v4, :cond_4

    :cond_1
    if-ne v3, v6, :cond_2

    if-eq v4, v6, :cond_4

    :cond_2
    if-ne v3, v1, :cond_3

    if-eq v4, v1, :cond_4

    :cond_3
    if-ne v3, v1, :cond_6

    if-ne v4, v7, :cond_6

    :cond_4
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v3}, Lcom/applovin/impl/adview/ah;->f()Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    move-result-object v3

    sget-object v5, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->ACTIVITY_PORTRAIT:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    if-ne v3, v5, :cond_8

    if-eqz v0, :cond_7

    if-eq v4, v1, :cond_5

    if-eq v4, v7, :cond_5

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    invoke-virtual {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    :cond_5
    :goto_2
    new-instance v0, Lcom/applovin/adview/AppLovinAdView;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v0, v1, v3, p0}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v2}, Lcom/applovin/adview/AppLovinAdView;->setAutoDestroy(Z)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0, p0}, Lcom/applovin/impl/adview/ah;->a(Lcom/applovin/impl/adview/w;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->q:Z

    :goto_3
    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->w()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.applovin.interstitial.should_resume_video"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->r()V

    return-void

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_5

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    invoke-virtual {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_5

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    invoke-virtual {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_9
    if-eq v4, v1, :cond_5

    if-eq v4, v7, :cond_5

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    invoke-virtual {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_a
    const-string v0, "No current ad found."

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrapper is null; initialized state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/applovin/impl/adview/ah;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const-string v0, "Wrapper ID is null"

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->exitWithError(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/adview/AppLovinAdView;

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->pause()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AppLovinInterstitialActivity"

    const-string v3, "Unable to destroy video view"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->w()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.applovin.interstitial.last_video_position"

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.applovin.interstitial.should_resume_video"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/ah;->a(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/impl/adview/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/ah;->a(Z)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->w()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.applovin.interstitial.should_resume_video"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v1

    const-string v2, "com.applovin.interstitial.last_video_position"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v1, v0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->o()V

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v2, v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoView;->start()V

    invoke-direct {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/impl/sdk/cb;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinInterstitialActivity"

    const-string v2, "Fading in close button due to app resume."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Lcom/applovin/impl/adview/u;

    :goto_0
    invoke-direct {p0, v2, v3, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(JLcom/applovin/impl/adview/u;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/impl/adview/u;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->dismiss()V

    goto :goto_1
.end method
