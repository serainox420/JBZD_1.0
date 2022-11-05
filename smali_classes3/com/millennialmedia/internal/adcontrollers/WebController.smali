.class public Lcom/millennialmedia/internal/adcontrollers/WebController;
.super Lcom/millennialmedia/internal/adcontrollers/AdController;
.source "WebController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;,
        Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

.field private volatile d:Lcom/millennialmedia/internal/MMWebView;

.field private volatile e:Lcom/millennialmedia/internal/SizableStateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/WebController;->a:Ljava/lang/String;

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<SCRIPT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "<IMG"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<HTML"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "<BODY"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "<HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "<A"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<DIV"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "<SPAN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "<P"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "<H1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "<H2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "<H3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "<H4"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "<H5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "<H6"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "<IFRAME"

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/WebController;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->c:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->d:Lcom/millennialmedia/internal/MMWebView;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->e:Lcom/millennialmedia/internal/SizableStateManager;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->c:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    return-object v0
.end method

.method static synthetic b(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->d:Lcom/millennialmedia/internal/MMWebView;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/WebController;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()Lcom/millennialmedia/internal/MMWebView;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->d:Lcom/millennialmedia/internal/MMWebView;

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/WebController;->a:Ljava/lang/String;

    const-string v1, "MMWebView has not been created."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->d:Lcom/millennialmedia/internal/MMWebView;

    goto :goto_0
.end method

.method static synthetic c(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->c()Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->e:Lcom/millennialmedia/internal/SizableStateManager;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)Lcom/millennialmedia/internal/MMWebView;
    .locals 8

    .prologue
    .line 334
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/millennialmedia/internal/AdMetadata;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->isInterstitial:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 335
    :goto_0
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 337
    new-instance v6, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    iget-boolean v1, p2, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->isInterstitial:Z

    iget-boolean v2, p2, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->enableMoat:Z

    iget-boolean v3, p2, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;->enableEnhancedAdControl:Z

    invoke-direct {v6, v1, v0, v2, v3}, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;-><init>(ZZZZ)V

    .line 341
    new-instance v7, Lcom/millennialmedia/internal/MMWebView;

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/internal/adcontrollers/WebController$6;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;Ljava/lang/ref/WeakReference;Lcom/millennialmedia/internal/AdMetadata;)V

    invoke-direct {v7, p1, v6, v0}, Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    .line 483
    return-object v7

    .line 334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a()Lcom/millennialmedia/internal/SizableStateManager;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->e:Lcom/millennialmedia/internal/SizableStateManager;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager;

    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/WebController$5;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/adcontrollers/WebController$5;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager;-><init>(Lcom/millennialmedia/internal/SizableStateManager$SizableListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->e:Lcom/millennialmedia/internal/SizableStateManager;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->e:Lcom/millennialmedia/internal/SizableStateManager;

    return-object v0
.end method

.method a(Lcom/millennialmedia/internal/MMWebView;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V
    .locals 3

    .prologue
    .line 492
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->e:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 493
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 495
    new-instance v2, Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$7;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 547
    return-void
.end method

.method public attach(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->c:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->attachFailed()V

    .line 189
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adcontrollers/WebController$2;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/millennialmedia/internal/adcontrollers/WebController$3;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public canHandleContent(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 131
    if-nez p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 146
    sget-object v3, Lcom/millennialmedia/internal/adcontrollers/WebController;->b:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 147
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 148
    if-eqz v5, :cond_2

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;)V
    .locals 6

    .prologue
    .line 103
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/internal/adcontrollers/WebController$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;Lcom/millennialmedia/internal/AdMetadata;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public showExpanded(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/adcontrollers/WebController$4;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 557
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$8;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adcontrollers/WebController$8;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method
