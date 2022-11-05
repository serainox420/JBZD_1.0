.class public Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;
.super Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;
.source "InterstitialVASTVideoAdapter.java"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field d:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

.field private f:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

.field private g:Lcom/millennialmedia/internal/MMActivity;

.field private volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;-><init>()V

    .line 29
    new-instance v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->d:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;Lcom/millennialmedia/internal/MMActivity;)Lcom/millennialmedia/internal/MMActivity;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->g:Lcom/millennialmedia/internal/MMActivity;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->h:Z

    return v0
.end method

.method static synthetic a(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/MMActivity;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->g:Lcom/millennialmedia/internal/MMActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->f:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V
    .locals 2

    .prologue
    .line 93
    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->c:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    .line 94
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->d:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->f:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    .line 95
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->f:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public show(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$DisplayOptions;)V
    .locals 2

    .prologue
    .line 102
    if-nez p2, :cond_1

    .line 103
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->e:Ljava/lang/String;

    const-string v1, "Display options not specified, using defaults."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    new-instance v0, Lcom/millennialmedia/InterstitialAd$DisplayOptions;

    invoke-direct {v0}, Lcom/millennialmedia/InterstitialAd$DisplayOptions;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InterstitialAd$DisplayOptions;->setImmersive(Z)Lcom/millennialmedia/InterstitialAd$DisplayOptions;

    move-result-object p2

    .line 111
    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;-><init>()V

    iget-boolean v1, p2, Lcom/millennialmedia/InterstitialAd$DisplayOptions;->immersive:Z

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setImmersive(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)V

    invoke-static {p1, v0, v1}, Lcom/millennialmedia/internal/MMActivity;->launch(Landroid/content/Context;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$MMActivityListener;)V

    .line 140
    return-void
.end method
