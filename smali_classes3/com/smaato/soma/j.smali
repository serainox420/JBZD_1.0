.class public abstract Lcom/smaato/soma/j;
.super Landroid/widget/RelativeLayout;
.source "BaseView.java"

# interfaces
.implements Lcom/smaato/soma/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/j$a;
    }
.end annotation


# instance fields
.field private a:Z

.field protected b:Lcom/smaato/soma/g;

.field protected c:Lcom/smaato/soma/b;

.field public d:Z

.field protected e:Lcom/smaato/soma/internal/statemachine/BannerState;

.field protected f:Lcom/smaato/soma/internal/statemachine/LoadingState;

.field protected g:Lcom/smaato/soma/bannerutilities/a;

.field protected h:Lcom/smaato/soma/bannerutilities/a;

.field protected i:Landroid/os/Handler;

.field protected j:F

.field protected k:I

.field l:Landroid/os/Handler;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 174
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    iput-boolean v3, p0, Lcom/smaato/soma/j;->d:Z

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/smaato/soma/j;->j:F

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/smaato/soma/j;->k:I

    .line 116
    iput-boolean v2, p0, Lcom/smaato/soma/j;->a:Z

    .line 121
    iput-boolean v2, p0, Lcom/smaato/soma/j;->m:Z

    .line 123
    new-instance v0, Lcom/smaato/soma/j$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/smaato/soma/j$1;-><init>(Lcom/smaato/soma/j;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/smaato/soma/j;->l:Landroid/os/Handler;

    .line 134
    iput-boolean v2, p0, Lcom/smaato/soma/j;->n:Z

    .line 136
    iput v3, p0, Lcom/smaato/soma/j;->o:I

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/j;->p:Landroid/os/Handler;

    .line 175
    new-instance v0, Lcom/smaato/soma/j$17;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$17;-><init>(Lcom/smaato/soma/j;)V

    .line 181
    invoke-virtual {v0}, Lcom/smaato/soma/j$17;->c()Ljava/lang/Object;

    .line 182
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput-boolean v3, p0, Lcom/smaato/soma/j;->d:Z

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/smaato/soma/j;->j:F

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/smaato/soma/j;->k:I

    .line 116
    iput-boolean v2, p0, Lcom/smaato/soma/j;->a:Z

    .line 121
    iput-boolean v2, p0, Lcom/smaato/soma/j;->m:Z

    .line 123
    new-instance v0, Lcom/smaato/soma/j$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/smaato/soma/j$1;-><init>(Lcom/smaato/soma/j;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/smaato/soma/j;->l:Landroid/os/Handler;

    .line 134
    iput-boolean v2, p0, Lcom/smaato/soma/j;->n:Z

    .line 136
    iput v3, p0, Lcom/smaato/soma/j;->o:I

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/j;->p:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/smaato/soma/j$16;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$16;-><init>(Lcom/smaato/soma/j;)V

    .line 167
    invoke-virtual {v0}, Lcom/smaato/soma/j$16;->c()Ljava/lang/Object;

    .line 168
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput-boolean v3, p0, Lcom/smaato/soma/j;->d:Z

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/smaato/soma/j;->j:F

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/smaato/soma/j;->k:I

    .line 116
    iput-boolean v2, p0, Lcom/smaato/soma/j;->a:Z

    .line 121
    iput-boolean v2, p0, Lcom/smaato/soma/j;->m:Z

    .line 123
    new-instance v0, Lcom/smaato/soma/j$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/smaato/soma/j$1;-><init>(Lcom/smaato/soma/j;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/smaato/soma/j;->l:Landroid/os/Handler;

    .line 134
    iput-boolean v2, p0, Lcom/smaato/soma/j;->n:Z

    .line 136
    iput v3, p0, Lcom/smaato/soma/j;->o:I

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/j;->p:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/smaato/soma/j$11;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$11;-><init>(Lcom/smaato/soma/j;)V

    .line 152
    invoke-virtual {v0}, Lcom/smaato/soma/j$11;->c()Ljava/lang/Object;

    .line 153
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/j;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/smaato/soma/j;->o:I

    return v0
.end method

.method static synthetic a(Lcom/smaato/soma/j;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/smaato/soma/j;->o:I

    return p1
.end method

.method static synthetic a(Lcom/smaato/soma/j;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/smaato/soma/j;->m:Z

    return p1
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/EditModeFailed;
        }
    .end annotation

    .prologue
    .line 242
    const v0, -0x777778

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/smaato/soma/j;->setBackgroundColor(I)V

    .line 243
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smaato/soma/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 244
    const-string v1, "Soma banner view"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 247
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    invoke-virtual {p0, v0}, Lcom/smaato/soma/j;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    throw v0

    .line 252
    :catch_1
    move-exception v0

    .line 253
    new-instance v1, Lcom/smaato/soma/exception/EditModeFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/EditModeFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic b(Lcom/smaato/soma/j;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/smaato/soma/j;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/smaato/soma/j;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/smaato/soma/j;->n:Z

    return p1
.end method


# virtual methods
.method protected a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerViewInstantiationException;
        }
    .end annotation

    .prologue
    .line 192
    :try_start_0
    new-instance v0, Lcom/smaato/soma/j$18;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$18;-><init>(Lcom/smaato/soma/j;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "BannerView"

    const-string v2, "Please instantiate the BannerView using activity instead of context"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/smaato/soma/j;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/smaato/soma/j;->b()V

    .line 233
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 202
    invoke-static {}, Lcom/smaato/soma/q;->c()Lcom/smaato/soma/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/q;->a(Landroid/content/Context;)V

    .line 209
    :cond_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 210
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 211
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 212
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/smaato/soma/j;->j:F

    .line 213
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/smaato/soma/j;->setDescendantFocusability(I)V

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smaato/soma/j;->setFocusable(Z)V

    .line 215
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/smaato/soma/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smaato/soma/internal/requests/f;->b(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v0

    .line 219
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v1

    .line 220
    invoke-static {}, Lcom/smaato/soma/internal/a;->a()Lcom/smaato/soma/internal/a;

    move-result-object v2

    .line 221
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/smaato/soma/internal/a;->a(Landroid/content/Context;Lcom/smaato/soma/j;)Lcom/smaato/soma/b;

    move-result-object v2

    .line 220
    invoke-virtual {p0, v2}, Lcom/smaato/soma/j;->setAdDownloader(Lcom/smaato/soma/b;)V

    .line 222
    invoke-virtual {p0, v0}, Lcom/smaato/soma/j;->setUserSettings(Lcom/smaato/soma/internal/requests/settings/UserSettings;)V

    .line 223
    invoke-virtual {p0, v1}, Lcom/smaato/soma/j;->setAdSettings(Lcom/smaato/soma/d;)V

    .line 224
    new-instance v0, Lcom/smaato/soma/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smaato/soma/j$a;-><init>(Lcom/smaato/soma/j;Lcom/smaato/soma/j$1;)V

    invoke-virtual {p0, v0}, Lcom/smaato/soma/j;->a(Lcom/smaato/soma/c;)V

    .line 225
    new-instance v0, Lcom/smaato/soma/internal/statemachine/BannerState;

    invoke-direct {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/smaato/soma/j;->a(Lcom/smaato/soma/internal/statemachine/BannerState;)V

    .line 226
    new-instance v0, Lcom/smaato/soma/internal/statemachine/LoadingState;

    invoke-direct {v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;-><init>()V

    invoke-virtual {p0, v0}, Lcom/smaato/soma/j;->setLoadingStateMachine(Lcom/smaato/soma/internal/statemachine/LoadingState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    throw v0

    .line 230
    :catch_1
    move-exception v0

    .line 231
    new-instance v1, Lcom/smaato/soma/exception/BannerViewInstantiationException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/BannerViewInstantiationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/smaato/soma/c;)V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/smaato/soma/j$19;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/j$19;-><init>(Lcom/smaato/soma/j;Lcom/smaato/soma/c;)V

    .line 294
    invoke-virtual {v0}, Lcom/smaato/soma/j$19;->c()Ljava/lang/Object;

    .line 295
    return-void
.end method

.method protected final a(Lcom/smaato/soma/internal/statemachine/BannerState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerStateInstantiationException;
        }
    .end annotation

    .prologue
    .line 717
    :try_start_0
    new-instance v0, Lcom/smaato/soma/j$12;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$12;-><init>(Lcom/smaato/soma/j;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 718
    iput-object p1, p0, Lcom/smaato/soma/j;->e:Lcom/smaato/soma/internal/statemachine/BannerState;

    .line 719
    iget-object v0, p0, Lcom/smaato/soma/j;->e:Lcom/smaato/soma/internal/statemachine/BannerState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Z)V

    .line 720
    iget-object v0, p0, Lcom/smaato/soma/j;->e:Lcom/smaato/soma/internal/statemachine/BannerState;

    new-instance v1, Lcom/smaato/soma/f;

    invoke-direct {v1, p0}, Lcom/smaato/soma/f;-><init>(Lcom/smaato/soma/j;)V

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/statemachine/BannerState;->a(Lcom/smaato/soma/internal/statemachine/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 726
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    throw v0

    .line 723
    :catch_1
    move-exception v0

    .line 724
    new-instance v1, Lcom/smaato/soma/exception/BannerStateInstantiationException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/BannerStateInstantiationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToPauseAutoReload;
        }
    .end annotation

    .prologue
    .line 523
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/smaato/soma/j$20;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$20;-><init>(Lcom/smaato/soma/j;)V

    .line 349
    invoke-virtual {v0}, Lcom/smaato/soma/j$20;->c()Ljava/lang/Object;

    .line 350
    return-void
.end method

.method protected f()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerViewSwitchingViewsException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 448
    .line 450
    :try_start_0
    new-instance v2, Lcom/smaato/soma/j$6;

    invoke-direct {v2, p0}, Lcom/smaato/soma/j$6;-><init>(Lcom/smaato/soma/j;)V

    invoke-static {v2}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 451
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 454
    :try_start_1
    invoke-virtual {p0}, Lcom/smaato/soma/j;->removeAllViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 461
    :goto_0
    if-eqz v2, :cond_0

    .line 462
    :try_start_2
    invoke-virtual {v2}, Lcom/smaato/soma/bannerutilities/a;->c()V

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/smaato/soma/j;->setCurrentPackage(Lcom/smaato/soma/bannerutilities/a;)V

    .line 465
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/smaato/soma/j;->setNextPackage(Lcom/smaato/soma/bannerutilities/a;)V

    .line 468
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 469
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smaato/soma/j;->addView(Landroid/view/View;)V

    .line 477
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/smaato/soma/j;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 478
    iget-boolean v1, p0, Lcom/smaato/soma/j;->n:Z

    if-nez v1, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/smaato/soma/j;->g()Z

    .line 504
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 507
    iget-boolean v1, p0, Lcom/smaato/soma/j;->m:Z

    if-nez v1, :cond_2

    .line 508
    invoke-static {}, Lcom/smaato/soma/measurements/a;->a()Lcom/smaato/soma/measurements/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/smaato/soma/measurements/a;->a(Lcom/smaato/soma/j;)V

    .line 509
    :cond_2
    invoke-static {}, Lcom/smaato/soma/bannerutilities/b;->a()Lcom/smaato/soma/bannerutilities/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smaato/soma/bannerutilities/b;->a(Z)V

    .line 515
    :goto_2
    return v0

    .line 455
    :catch_0
    move-exception v3

    .line 456
    new-instance v3, Lcom/smaato/soma/debug/b;

    const-string v4, "BaseView:switchViews()"

    const-string v5, "Exception during clearing Base views"

    const/4 v6, 0x1

    sget-object v7, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v3}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 510
    :catch_1
    move-exception v0

    .line 511
    throw v0

    .line 472
    :cond_3
    :try_start_3
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v2, "BaseView:switchViews()"

    const-string v3, "getCurrentPackage().getView() is not available or null. Switching to new format?"

    const/4 v4, 0x0

    sget-object v5, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 473
    invoke-virtual {p0}, Lcom/smaato/soma/j;->e()V

    move v0, v1

    .line 474
    goto :goto_2

    .line 481
    :cond_4
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 482
    iget-boolean v1, p0, Lcom/smaato/soma/j;->n:Z

    if-nez v1, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/smaato/soma/j;->g()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 512
    :catch_2
    move-exception v0

    .line 513
    new-instance v1, Lcom/smaato/soma/exception/BannerViewSwitchingViewsException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/BannerViewSwitchingViewsException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 485
    :cond_5
    :try_start_4
    iget-boolean v1, p0, Lcom/smaato/soma/j;->m:Z

    if-nez v1, :cond_1

    .line 490
    const/4 v1, 0x1

    iput v1, p0, Lcom/smaato/soma/j;->o:I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 492
    :try_start_5
    iget-object v1, p0, Lcom/smaato/soma/j;->g:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v1

    const-string v2, "javascript:mraid.setViewable(false);"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/smaato/soma/j;->g:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v1

    const-string v2, "javascript:mraid.viewableChange(false);"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 495
    :goto_3
    :try_start_6
    iget-object v1, p0, Lcom/smaato/soma/j;->p:Landroid/os/Handler;

    new-instance v2, Lcom/smaato/soma/j$7;

    invoke-direct {v2, p0}, Lcom/smaato/soma/j$7;-><init>(Lcom/smaato/soma/j;)V

    const-wide/32 v4, 0x3a980

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 502
    invoke-virtual {p0}, Lcom/smaato/soma/j;->c()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 494
    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method protected g()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BeaconLoadFailedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 530
    .line 532
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/smaato/soma/j;->o:I

    .line 533
    iget-object v2, p0, Lcom/smaato/soma/j;->p:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 535
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 536
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->f()Lcom/smaato/soma/p;

    move-result-object v1

    .line 540
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 565
    :cond_1
    :goto_1
    return v0

    .line 537
    :cond_2
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->f()Lcom/smaato/soma/p;

    move-result-object v1

    goto :goto_0

    .line 543
    :cond_3
    invoke-interface {v1}, Lcom/smaato/soma/p;->d()Lcom/smaato/soma/AdType;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/AdType;->RICHMEDIA:Lcom/smaato/soma/AdType;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v2, v3, :cond_4

    .line 545
    :try_start_1
    iget-object v2, p0, Lcom/smaato/soma/j;->g:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v2}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v2

    const-string v3, "javascript:mraid.setViewable(true);"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 550
    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v1}, Lcom/smaato/soma/p;->a()Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->SUCCESS:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    if-ne v2, v3, :cond_1

    .line 551
    invoke-interface {v1}, Lcom/smaato/soma/p;->g()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 552
    invoke-interface {v1}, Lcom/smaato/soma/p;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 553
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 554
    invoke-interface {v1}, Lcom/smaato/soma/p;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 555
    check-cast v1, Lcom/smaato/soma/internal/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smaato/soma/internal/b;->a(Ljava/util/List;)V

    .line 556
    new-instance v1, Lcom/smaato/soma/internal/requests/b;

    invoke-direct {v1}, Lcom/smaato/soma/internal/requests/b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/smaato/soma/internal/requests/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 557
    const/4 v0, 0x1

    goto :goto_1

    .line 560
    :catch_0
    move-exception v0

    .line 561
    throw v0

    .line 562
    :catch_1
    move-exception v0

    .line 563
    new-instance v1, Lcom/smaato/soma/exception/BeaconLoadFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/BeaconLoadFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 546
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method protected final getAdDownloader()Lcom/smaato/soma/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToFindAdDownloader;
        }
    .end annotation

    .prologue
    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/j;->c:Lcom/smaato/soma/b;

    if-nez v0, :cond_0

    .line 689
    invoke-static {}, Lcom/smaato/soma/internal/a;->a()Lcom/smaato/soma/internal/a;

    move-result-object v0

    .line 690
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/smaato/soma/internal/a;->a(Landroid/content/Context;Lcom/smaato/soma/j;)Lcom/smaato/soma/b;

    move-result-object v0

    .line 689
    invoke-virtual {p0, v0}, Lcom/smaato/soma/j;->setAdDownloader(Lcom/smaato/soma/b;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/j;->c:Lcom/smaato/soma/b;

    return-object v0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    throw v0

    .line 694
    :catch_1
    move-exception v0

    .line 695
    new-instance v1, Lcom/smaato/soma/exception/UnableToFindAdDownloader;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToFindAdDownloader;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getAdSettings()Lcom/smaato/soma/d;
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lcom/smaato/soma/j$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$2;-><init>(Lcom/smaato/soma/j;)V

    .line 388
    invoke-virtual {v0}, Lcom/smaato/soma/j$2;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/d;

    .line 383
    return-object v0
.end method

.method public final getBackgroundColor()I
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Lcom/smaato/soma/j;->k:I

    return v0
.end method

.method public abstract getBannerAnimatorHandler()Landroid/os/Handler;
.end method

.method public final getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/smaato/soma/j;->e:Lcom/smaato/soma/internal/statemachine/BannerState;

    return-object v0
.end method

.method public final getBannerStateListener()Lcom/smaato/soma/g;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/smaato/soma/j;->b:Lcom/smaato/soma/g;

    return-object v0
.end method

.method protected final getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/smaato/soma/j;->g:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method protected final getLoadingState()Lcom/smaato/soma/internal/statemachine/LoadingState;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/smaato/soma/j;->f:Lcom/smaato/soma/internal/statemachine/LoadingState;

    return-object v0
.end method

.method protected final getNextPackage()Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/smaato/soma/j;->h:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method public final getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;
    .locals 1

    .prologue
    .line 395
    new-instance v0, Lcom/smaato/soma/j$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$3;-><init>(Lcom/smaato/soma/j;)V

    .line 400
    invoke-virtual {v0}, Lcom/smaato/soma/j$3;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/internal/requests/settings/UserSettings;

    .line 395
    return-object v0
.end method

.method protected h()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/OpeningLandingPageFailed;,
            Lcom/smaato/soma/exception/RetrievingDeviceOrientationFailed;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 595
    :try_start_0
    new-instance v0, Lcom/smaato/soma/j$9;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$9;-><init>(Lcom/smaato/soma/j;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 597
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/smaato/soma/ExpandedBannerActivity;->a:Ljava/lang/ref/WeakReference;

    .line 598
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/smaato/soma/j;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 600
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 601
    const-string v1, "rotation"

    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/internal/requests/settings/a;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 602
    const-string v1, "orientation"

    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/internal/requests/settings/a;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    invoke-virtual {p0}, Lcom/smaato/soma/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 617
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 607
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "BaseView"

    const-string v2, "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0

    .line 611
    :catch_1
    move-exception v0

    .line 612
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "BaseView"

    const-string v2, "Exception inside Internal Browser"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0
.end method

.method protected i()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ClosingPackageFailedException;
        }
    .end annotation

    .prologue
    .line 626
    :try_start_0
    new-instance v0, Lcom/smaato/soma/j$10;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$10;-><init>(Lcom/smaato/soma/j;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 628
    iget-object v0, p0, Lcom/smaato/soma/j;->g:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/smaato/soma/j;->g:Lcom/smaato/soma/bannerutilities/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/bannerutilities/a;->a(Z)V

    .line 632
    iget-object v0, p0, Lcom/smaato/soma/j;->g:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/smaato/soma/j;->g:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v0

    .line 639
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "BaseView"

    const-string v2, "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml"

    const/4 v3, 0x0

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0

    .line 643
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToNotifyBannerIdle;
        }
    .end annotation

    .prologue
    .line 767
    new-instance v0, Lcom/smaato/soma/j$13;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$13;-><init>(Lcom/smaato/soma/j;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 769
    return-void
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/smaato/soma/j;->a:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 824
    new-instance v0, Lcom/smaato/soma/j$15;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$15;-><init>(Lcom/smaato/soma/j;)V

    .line 832
    invoke-virtual {v0}, Lcom/smaato/soma/j$15;->c()Ljava/lang/Object;

    .line 833
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 834
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 792
    new-instance v0, Lcom/smaato/soma/j$14;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$14;-><init>(Lcom/smaato/soma/j;)V

    .line 814
    invoke-virtual {v0}, Lcom/smaato/soma/j$14;->c()Ljava/lang/Object;

    .line 815
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 816
    return-void
.end method

.method protected final setAdDownloader(Lcom/smaato/soma/b;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/smaato/soma/j;->c:Lcom/smaato/soma/b;

    .line 707
    return-void
.end method

.method public final setAdSettings(Lcom/smaato/soma/d;)V
    .locals 1

    .prologue
    .line 426
    new-instance v0, Lcom/smaato/soma/j$5;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/j$5;-><init>(Lcom/smaato/soma/j;Lcom/smaato/soma/d;)V

    .line 432
    invoke-virtual {v0}, Lcom/smaato/soma/j$5;->c()Ljava/lang/Object;

    .line 433
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 735
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 736
    iput p1, p0, Lcom/smaato/soma/j;->k:I

    .line 737
    return-void
.end method

.method protected setBannerAnimatorHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/smaato/soma/j;->i:Landroid/os/Handler;

    .line 759
    return-void
.end method

.method public final setBannerStateListener(Lcom/smaato/soma/g;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/smaato/soma/j;->b:Lcom/smaato/soma/g;

    .line 271
    return-void
.end method

.method protected final setCurrentPackage(Lcom/smaato/soma/bannerutilities/a;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/smaato/soma/j;->g:Lcom/smaato/soma/bannerutilities/a;

    .line 664
    return-void
.end method

.method protected setLoadingStateMachine(Lcom/smaato/soma/internal/statemachine/LoadingState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/AddingLoadingStateToBannerViewFailedException;
        }
    .end annotation

    .prologue
    .line 576
    :try_start_0
    new-instance v0, Lcom/smaato/soma/j$8;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$8;-><init>(Lcom/smaato/soma/j;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 577
    iput-object p1, p0, Lcom/smaato/soma/j;->f:Lcom/smaato/soma/internal/statemachine/LoadingState;

    .line 578
    iget-object v0, p0, Lcom/smaato/soma/j;->f:Lcom/smaato/soma/internal/statemachine/LoadingState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Z)V

    .line 579
    iget-object v0, p0, Lcom/smaato/soma/j;->f:Lcom/smaato/soma/internal/statemachine/LoadingState;

    new-instance v1, Lcom/smaato/soma/o;

    invoke-direct {v1, p0}, Lcom/smaato/soma/o;-><init>(Lcom/smaato/soma/j;)V

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a(Lcom/smaato/soma/internal/statemachine/b;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 585
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    throw v0

    .line 582
    :catch_1
    move-exception v0

    .line 583
    new-instance v1, Lcom/smaato/soma/exception/AddingLoadingStateToBannerViewFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/AddingLoadingStateToBannerViewFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final setLocationUpdateEnabled(Z)V
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lcom/smaato/soma/j$21;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/j$21;-><init>(Lcom/smaato/soma/j;Z)V

    .line 364
    invoke-virtual {v0}, Lcom/smaato/soma/j$21;->c()Ljava/lang/Object;

    .line 365
    return-void
.end method

.method protected final setNextPackage(Lcom/smaato/soma/bannerutilities/a;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/smaato/soma/j;->h:Lcom/smaato/soma/bannerutilities/a;

    .line 680
    return-void
.end method

.method public setSOMAEndPoint(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smaato/soma/internal/requests/f;->a(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method public final setScalingEnabled(Z)V
    .locals 0

    .prologue
    .line 783
    iput-boolean p1, p0, Lcom/smaato/soma/j;->a:Z

    .line 784
    return-void
.end method

.method public final setUserSettings(Lcom/smaato/soma/internal/requests/settings/UserSettings;)V
    .locals 1

    .prologue
    .line 410
    new-instance v0, Lcom/smaato/soma/j$4;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/j$4;-><init>(Lcom/smaato/soma/j;Lcom/smaato/soma/internal/requests/settings/UserSettings;)V

    .line 416
    invoke-virtual {v0}, Lcom/smaato/soma/j$4;->c()Ljava/lang/Object;

    .line 417
    return-void
.end method
