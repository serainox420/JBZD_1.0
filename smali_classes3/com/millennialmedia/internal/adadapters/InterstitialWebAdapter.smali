.class public Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;
.super Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;
.source "InterstitialWebAdapter.java"

# interfaces
.implements Lcom/millennialmedia/internal/adadapters/MMAdAdapter;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field d:Lcom/millennialmedia/internal/adcontrollers/WebController;

.field e:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;-><init>()V

    .line 28
    new-instance v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->e:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->b:Lcom/millennialmedia/internal/AdMetadata;

    const-string v1, "enhancedAdControlEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/AdMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getImpressionDelay()J
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3e8

    goto :goto_0
.end method

.method public getMinImpressionViewabilityPercentage()I
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x32

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V
    .locals 4

    .prologue
    .line 111
    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->c:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    .line 113
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

    const/4 v1, 0x1

    .line 114
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->isMoatEnabled()Z

    move-result v2

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->a()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;-><init>(ZZZ)V

    .line 116
    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/WebController;

    iget-object v2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->e:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-direct {v1, v2}, Lcom/millennialmedia/internal/adcontrollers/WebController;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)V

    iput-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->d:Lcom/millennialmedia/internal/adcontrollers/WebController;

    .line 117
    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->d:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iget-object v2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->b:Lcom/millennialmedia/internal/AdMetadata;

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->init(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;)V

    .line 118
    return-void
.end method

.method public show(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$DisplayOptions;)V
    .locals 3

    .prologue
    .line 124
    if-nez p2, :cond_1

    .line 125
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->f:Ljava/lang/String;

    const-string v1, "Display options not specified, using defaults."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    new-instance p2, Lcom/millennialmedia/InterstitialAd$DisplayOptions;

    invoke-direct {p2}, Lcom/millennialmedia/InterstitialAd$DisplayOptions;-><init>()V

    .line 133
    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;-><init>()V

    iget-boolean v1, p2, Lcom/millennialmedia/InterstitialAd$DisplayOptions;->immersive:Z

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setImmersive(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object v0

    iget-object v1, p2, Lcom/millennialmedia/InterstitialAd$DisplayOptions;->enterAnimationId:Ljava/lang/Integer;

    iget-object v2, p2, Lcom/millennialmedia/InterstitialAd$DisplayOptions;->exitAnimationId:Ljava/lang/Integer;

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setTransitionAnimation(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->b:Lcom/millennialmedia/internal/AdMetadata;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->b:Lcom/millennialmedia/internal/AdMetadata;

    .line 135
    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdMetadata;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setTransparent(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->d:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->showExpanded(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V

    .line 138
    return-void

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
