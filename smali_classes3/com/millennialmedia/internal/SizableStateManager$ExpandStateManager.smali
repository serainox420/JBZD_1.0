.class public Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;
.super Ljava/lang/Object;
.source "SizableStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/SizableStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandStateManager"
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/SizableStateManager;

.field private b:Lcom/millennialmedia/internal/MMActivity;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Z

.field private f:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/SizableStateManager;)V
    .locals 1

    .prologue
    .line 318
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->a:Lcom/millennialmedia/internal/SizableStateManager;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->f:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 321
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;Lcom/millennialmedia/internal/MMActivity;)Lcom/millennialmedia/internal/MMActivity;
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->b:Lcom/millennialmedia/internal/MMActivity;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->f:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->f()V

    return-void
.end method

.method static synthetic b(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)Lcom/millennialmedia/internal/MMActivity;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->b:Lcom/millennialmedia/internal/MMActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->e:Z

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->f:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/millennialmedia/R$drawable;->mmadsdk_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->e:Z

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 326
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->b:Lcom/millennialmedia/internal/MMActivity;

    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->d:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    .line 331
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->b:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->d:Landroid/widget/ProgressBar;

    .line 332
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 334
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 338
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 339
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->b:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->d:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 343
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    goto :goto_0
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->b:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/MMActivity;->setOrientation(I)V

    .line 432
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->d:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->d:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->d:Landroid/widget/ProgressBar;

    .line 354
    :cond_0
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->f:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$1;-><init>(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V

    const-wide/16 v2, 0x44c

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->f:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 370
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 506
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close must be called on the UI thread"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->b:Lcom/millennialmedia/internal/MMActivity;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->b:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity;->finish()V

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 391
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->f:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->f:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 393
    iput-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->f:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->e:Z

    .line 400
    :cond_1
    return-void
.end method

.method e()V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->b:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c:Landroid/widget/ImageView;

    .line 407
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 409
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/millennialmedia/internal/SizableStateManager;->a:I

    sget v2, Lcom/millennialmedia/internal/SizableStateManager;->a:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 412
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 413
    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$2;-><init>(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->b:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 425
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 426
    return-void
.end method

.method public expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z
    .locals 2

    .prologue
    .line 438
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expand must be called on the UI thread"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/4 v0, 0x0

    .line 500
    :goto_0
    return v0

    .line 444
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;-><init>(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Landroid/view/View;)V

    invoke-static {v0, p3, v1}, Lcom/millennialmedia/internal/MMActivity;->launch(Landroid/content/Context;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$MMActivityListener;)V

    .line 500
    const/4 v0, 0x1

    goto :goto_0
.end method
