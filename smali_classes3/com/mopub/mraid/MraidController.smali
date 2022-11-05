.class public Lcom/mopub/mraid/MraidController;
.super Ljava/lang/Object;
.source "MraidController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidController$a;,
        Lcom/mopub/mraid/MraidController$b;,
        Lcom/mopub/mraid/MraidController$UseCustomCloseListener;,
        Lcom/mopub/mraid/MraidController$MraidListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/mopub/common/AdReport;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/mopub/mraid/PlacementType;

.field private final e:Landroid/widget/FrameLayout;

.field private final f:Lcom/mopub/common/CloseableLayout;

.field private g:Landroid/view/ViewGroup;

.field private final h:Lcom/mopub/mraid/MraidController$b;

.field private final i:Lcom/mopub/mraid/c;

.field private j:Lcom/mopub/mraid/ViewState;

.field private k:Lcom/mopub/mraid/MraidController$MraidListener;

.field private l:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

.field private m:Lcom/mopub/mraid/MraidWebViewDebugListener;

.field private n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

.field private o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

.field private final p:Lcom/mopub/mraid/MraidBridge;

.field private final q:Lcom/mopub/mraid/MraidBridge;

.field private r:Lcom/mopub/mraid/MraidController$a;

.field private s:Ljava/lang/Integer;

.field private t:Z

.field private u:Lcom/mopub/mraid/b;

.field private final v:Lcom/mopub/mraid/MraidNativeCommandHandler;

.field private w:Z

.field private final x:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field private final y:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V
    .locals 7

    .prologue
    .line 125
    new-instance v4, Lcom/mopub/mraid/MraidBridge;

    invoke-direct {v4, p2, p3}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    new-instance v5, Lcom/mopub/mraid/MraidBridge;

    sget-object v0, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    invoke-direct {v5, p2, v0}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    new-instance v6, Lcom/mopub/mraid/MraidController$b;

    invoke-direct {v6}, Lcom/mopub/mraid/MraidController$b;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidController$b;)V

    .line 129
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidController$b;)V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    .line 108
    new-instance v0, Lcom/mopub/mraid/MraidController$a;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$a;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidController$a;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->t:Z

    .line 117
    sget-object v0, Lcom/mopub/mraid/b;->NONE:Lcom/mopub/mraid/b;

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/mraid/b;

    .line 181
    new-instance v0, Lcom/mopub/mraid/MraidController$3;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$3;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 252
    new-instance v0, Lcom/mopub/mraid/MraidController$4;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$4;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->y:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    .line 137
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 138
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->a:Lcom/mopub/common/AdReport;

    .line 139
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    .line 147
    :goto_0
    iput-object p3, p0, Lcom/mopub/mraid/MraidController;->d:Lcom/mopub/mraid/PlacementType;

    .line 148
    iput-object p4, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    .line 149
    iput-object p5, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    .line 150
    iput-object p6, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/MraidController$b;

    .line 152
    sget-object v0, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    .line 154
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/mopub/mraid/c;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v1, v2, v0}, Lcom/mopub/mraid/c;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    .line 156
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    .line 157
    new-instance v0, Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    .line 158
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    new-instance v1, Lcom/mopub/mraid/MraidController$1;

    invoke-direct {v1, p0}, Lcom/mopub/mraid/MraidController$1;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 165
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v1, Lcom/mopub/mraid/MraidController$2;

    invoke-direct {v1, p0}, Lcom/mopub/mraid/MraidController$2;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidController$a;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController$a;->register(Landroid/content/Context;)V

    .line 176
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    .line 177
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->y:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    .line 178
    new-instance v0, Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->v:Lcom/mopub/mraid/MraidNativeCommandHandler;

    .line 179
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method static synthetic a(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidController$MraidListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    return-object v0
.end method

.method private a(Lcom/mopub/mraid/ViewState;)V
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V

    .line 615
    return-void
.end method

.method private a(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRAID state set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    .line 621
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    .line 622
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/ViewState;)V

    .line 625
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/ViewState;)V

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v1, :cond_1

    .line 630
    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne p1, v1, :cond_2

    .line 631
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidController$MraidListener;->onExpand()V

    .line 639
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/mopub/mraid/MraidController;->a(Ljava/lang/Runnable;)V

    .line 640
    return-void

    .line 632
    :cond_2
    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p1, v0, :cond_3

    .line 633
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidController$MraidListener;->onClose()V

    goto :goto_0

    .line 634
    :cond_3
    sget-object v0, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne p1, v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidController$MraidListener;->onClose()V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 506
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/MraidController$b;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$b;->a()V

    .line 509
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->g()Landroid/view/View;

    move-result-object v0

    .line 510
    if-nez v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/MraidController$b;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController$b;->a([Landroid/view/View;)Lcom/mopub/mraid/MraidController$b$a;

    move-result-object v1

    new-instance v2, Lcom/mopub/mraid/MraidController$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/mopub/mraid/MraidController$7;-><init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController$b$a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->v:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-object v0
.end method

.method private f()I
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 348
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/mopub/mraid/MraidController;)Z
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->h()Z

    move-result v0

    return v0
.end method

.method private g()Landroid/view/View;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    goto :goto_0
.end method

.method static synthetic g(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/PlacementType;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->d:Lcom/mopub/mraid/PlacementType;

    return-object v0
.end method

.method static synthetic h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/ViewState;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    return-object v0
.end method

.method private h()Z
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 451
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->g()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 452
    :cond_0
    const/4 v0, 0x0

    .line 455
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->v:Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->g()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->a(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method private i()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->g:Landroid/view/ViewGroup;

    .line 847
    :goto_0
    return-object v0

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 847
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method static synthetic i(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/c;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    return-object v0
.end method

.method private j()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 855
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->i()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->g:Landroid/view/ViewGroup;

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->g:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic j(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->i()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/mopub/mraid/MraidController;)I
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->f()I

    move-result v0

    return v0
.end method


# virtual methods
.method a(III)I
    .locals 1

    .prologue
    .line 643
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method a()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 460
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    new-instance v1, Lcom/mopub/mraid/MraidController$5;

    invoke-direct {v1, p0}, Lcom/mopub/mraid/MraidController$5;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-direct {p0, v0, v1}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V

    .line 476
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onLoaded(Landroid/view/View;)V

    .line 479
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Ljava/lang/Runnable;)V

    .line 555
    return-void
.end method

.method a(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .locals 8
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 651
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Unable to resize after the WebView is destroyed"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_2

    .line 734
    :cond_1
    :goto_0
    return-void

    .line 660
    :cond_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_3

    .line 661
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Not allowed to resize from an already expanded ad"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->d:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_4

    .line 665
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Not allowed to resize from an interstitial ad"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_4
    int-to-float v0, p1

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 670
    int-to-float v1, p2

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 671
    int-to-float v2, p3

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 672
    int-to-float v3, p4

    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 673
    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v4}, Lcom/mopub/mraid/c;->f()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    .line 674
    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v4}, Lcom/mopub/mraid/c;->f()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 675
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int v5, v3, v1

    invoke-direct {v4, v2, v3, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 677
    if-nez p6, :cond_7

    .line 679
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v0}, Lcom/mopub/mraid/c;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 680
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gt v2, v3, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_6

    .line 681
    :cond_5
    new-instance v0, Lcom/mopub/mraid/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizeProperties specified a size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and offset ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") that doesn\'t allow the ad to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appear within the max allowed size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v2}, Lcom/mopub/mraid/c;->c()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v2}, Lcom/mopub/mraid/c;->c()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_6
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v2, v3, v5}, Lcom/mopub/mraid/MraidController;->a(III)I

    move-result v2

    .line 691
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0, v3, v5, v0}, Lcom/mopub/mraid/MraidController;->a(III)I

    move-result v0

    .line 692
    invoke-virtual {v4, v2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 696
    :cond_7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 697
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, p5, v4, v0}, Lcom/mopub/common/CloseableLayout;->applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 698
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v2}, Lcom/mopub/mraid/c;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 699
    new-instance v0, Lcom/mopub/mraid/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizeProperties specified a size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and offset ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") that doesn\'t allow the close"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " region to appear within the max allowed size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v2}, Lcom/mopub/mraid/c;->c()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v2}, Lcom/mopub/mraid/c;->c()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_8
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 708
    new-instance v0, Lcom/mopub/mraid/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeProperties specified a size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and offset ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") that don\'t allow the close region to appear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "within the resized ad."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_9
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 716
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, p5}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 719
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 720
    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v2}, Lcom/mopub/mraid/c;->b()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 721
    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v2}, Lcom/mopub/mraid/c;->b()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 722
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v2, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v1, v2, :cond_b

    .line 723
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 724
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 725
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->j()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, p5}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 733
    sget-object v0, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;)V

    goto/16 :goto_0

    .line 728
    :cond_b
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v2, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v1, v2, :cond_a

    .line 729
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v0}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method a(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 863
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->startMraid(Landroid/content/Context;Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method a(Ljava/net/URI;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x1

    .line 738
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    .line 739
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Unable to expand after the WebView is destroyed"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->d:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_2

    .line 794
    :cond_1
    :goto_0
    return-void

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_1

    .line 750
    :cond_3
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->d()V

    .line 753
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    .line 754
    :goto_1
    if-eqz v0, :cond_4

    .line 757
    new-instance v1, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 758
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 761
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge;->setContentUrl(Ljava/lang/String;)V

    .line 765
    :cond_4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 767
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_8

    .line 768
    if-eqz v0, :cond_7

    .line 769
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    :goto_2
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->j()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->a(Z)V

    .line 793
    sget-object v0, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;)V

    goto :goto_0

    .line 753
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 771
    :cond_7
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 772
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 777
    :cond_8
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_5

    .line 778
    if-eqz v0, :cond_5

    .line 781
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 782
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 784
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method a(Z)V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 958
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2}, Lcom/mopub/common/CloseableLayout;->isCloseVisible()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    .line 959
    :goto_0
    if-ne p1, v2, :cond_2

    .line 967
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v1

    .line 958
    goto :goto_0

    .line 963
    :cond_2
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 964
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidController$UseCustomCloseListener;->useCustomCloseChanged(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 963
    goto :goto_2
.end method

.method a(ZLcom/mopub/mraid/b;)V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .prologue
    .line 1029
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Lcom/mopub/mraid/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to force orientation to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1034
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidController;->t:Z

    .line 1035
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/mraid/b;

    .line 1037
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->d:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_2

    .line 1038
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->d()V

    .line 1040
    :cond_2
    return-void
.end method

.method a(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidWebViewDebugListener;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidWebViewDebugListener;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/mopub/mraid/b;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 918
    sget-object v0, Lcom/mopub/mraid/b;->NONE:Lcom/mopub/mraid/b;

    if-ne p1, v0, :cond_1

    .line 953
    :cond_0
    :goto_0
    return v1

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 924
    if-nez v0, :cond_2

    move v1, v2

    .line 925
    goto :goto_0

    .line 930
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 937
    iget v0, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 938
    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    .line 939
    invoke-virtual {p1}, Lcom/mopub/mraid/b;->a()I

    move-result v3

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 932
    :catch_0
    move-exception v0

    move v1, v2

    .line 933
    goto :goto_0

    :cond_3
    move v0, v2

    .line 939
    goto :goto_1

    .line 944
    :cond_4
    iget v0, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v4, 0x80

    invoke-static {v0, v4}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v0

    .line 948
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xd

    if-lt v4, v5, :cond_6

    .line 949
    if-eqz v0, :cond_5

    iget v0, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidWebViewDebugListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mraid/MraidWebViewDebugListener;->onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 366
    :goto_0
    return v0

    .line 365
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/JsResult;->confirm()V

    .line 366
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 483
    new-instance v0, Lcom/mopub/mraid/MraidController$6;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$6;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Ljava/lang/Runnable;)V

    .line 498
    return-void
.end method

.method b(I)V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .prologue
    .line 868
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 869
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/mraid/b;

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/b;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 870
    :cond_0
    new-instance v0, Lcom/mopub/mraid/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to lock orientation to unsupported value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/mraid/b;

    invoke-virtual {v2}, Lcom/mopub/mraid/b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_1
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->s:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 875
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->s:Ljava/lang/Integer;

    .line 878
    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 879
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidController$MraidListener;->onOpen()V

    .line 1052
    :cond_0
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 1054
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->a:Lcom/mopub/common/AdReport;

    if-eqz v1, :cond_1

    .line 1055
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->a:Lcom/mopub/common/AdReport;

    invoke-virtual {v1}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    .line 1058
    :cond_1
    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 1066
    return-void
.end method

.method c()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 798
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_0

    .line 808
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->d:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_3

    .line 809
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->e()V

    .line 812
    :cond_3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_6

    .line 813
    :cond_4
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_5

    .line 815
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 816
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->a()V

    .line 824
    :goto_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 827
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;)V

    goto :goto_0

    .line 819
    :cond_5
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 820
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 828
    :cond_6
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_0

    .line 829
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 830
    sget-object v0, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;)V

    goto :goto_0
.end method

.method d()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .prologue
    .line 883
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/mraid/b;

    sget-object v1, Lcom/mopub/mraid/b;->NONE:Lcom/mopub/mraid/b;

    if-ne v0, v1, :cond_2

    .line 884
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->t:Z

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->e()V

    .line 903
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 890
    if-nez v0, :cond_1

    .line 891
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_1
    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->b(I)V

    goto :goto_0

    .line 901
    :cond_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/mraid/b;

    invoke-virtual {v0}, Lcom/mopub/mraid/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->b(I)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 582
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/MraidController$b;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$b;->a()V

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidController$a;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$a;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->w:Z

    if-nez v0, :cond_1

    .line 594
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->pause(Z)V

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 601
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->a()V

    .line 602
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->destroy()V

    .line 604
    iput-object v3, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 606
    :cond_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->a()V

    .line 607
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_3

    .line 608
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->destroy()V

    .line 609
    iput-object v3, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 611
    :cond_3
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    throw v0
.end method

.method e()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 907
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 908
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->s:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->s:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 911
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->s:Ljava/lang/Integer;

    .line 912
    return-void
.end method

.method public getAdContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    return-object v0
.end method

.method public loadContent(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 333
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "loadContent should only be called once"

    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 335
    new-instance v0, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 336
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 337
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->setContentHtml(Ljava/lang/String;)V

    .line 342
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadJavascript(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;)V

    .line 979
    return-void
.end method

.method public pause(Z)V
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->w:Z

    .line 561
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    .line 567
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->w:Z

    .line 573
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {v0}, Lcom/mopub/mobileads/util/WebViews;->onResume(Landroid/webkit/WebView;)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {v0}, Lcom/mopub/mobileads/util/WebViews;->onResume(Landroid/webkit/WebView;)V

    .line 579
    :cond_1
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidWebViewDebugListener;

    .line 330
    return-void
.end method

.method public setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    .line 322
    return-void
.end method

.method public setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    .line 326
    return-void
.end method
