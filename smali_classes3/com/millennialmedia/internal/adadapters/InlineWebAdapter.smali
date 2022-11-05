.class public Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;
.super Lcom/millennialmedia/internal/adadapters/InlineAdapter;
.source "InlineWebAdapter.java"

# interfaces
.implements Lcom/millennialmedia/internal/adadapters/MMAdAdapter;


# instance fields
.field c:Lcom/millennialmedia/internal/adcontrollers/WebController;

.field d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

.field e:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;-><init>()V

    .line 26
    new-instance v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->e:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->b:Lcom/millennialmedia/internal/AdMetadata;

    const-string v1, "enhancedAdControlEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/AdMetadata;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public display(Landroid/widget/RelativeLayout;II)V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->c:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v1, p1, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->attach(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 118
    return-void
.end method

.method public getImpressionDelay()J
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->a()Z

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
    .line 131
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x32

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;)V
    .locals 4

    .prologue
    .line 101
    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->d:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    .line 103
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

    const/4 v1, 0x0

    .line 104
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->isMoatEnabled()Z

    move-result v2

    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->a()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;-><init>(ZZZ)V

    .line 106
    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/WebController;

    iget-object v2, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->e:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-direct {v1, v2}, Lcom/millennialmedia/internal/adcontrollers/WebController;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)V

    iput-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->c:Lcom/millennialmedia/internal/adcontrollers/WebController;

    .line 107
    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->c:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iget-object v2, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->b:Lcom/millennialmedia/internal/AdMetadata;

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->init(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;)V

    .line 108
    return-void
.end method
