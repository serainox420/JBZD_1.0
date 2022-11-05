.class public Lpl/jbzd/app/view/gallery/GalleryActivity;
.super Lpl/jbzd/app/view/AuthActivity;
.source "GalleryActivity.java"

# interfaces
.implements Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;
.implements Lpl/jbzd/app/ui/view/comment/CommentsView$b;
.implements Lpl/jbzd/app/ui/view/comment/CommentsView$c;


# static fields
.field private static f:I

.field private static g:I

.field private static h:I


# instance fields
.field commentLayout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

.field private e:Lpl/jbzd/app/model/Media;

.field private i:Z

.field private j:F

.field private k:F

.field private l:F

.field layout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/gallery/a;",
            ">;"
        }
    .end annotation
.end field

.field viewPager:Lpl/jbzd/app/view/gallery/GalleryMainViewPager;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->f:I

    .line 63
    sput v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->g:I

    .line 64
    sput v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lpl/jbzd/app/view/AuthActivity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    .line 65
    iput-boolean v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->i:Z

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->l:F

    .line 67
    iput-boolean v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->m:Z

    iput-boolean v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->n:Z

    iput-boolean v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->o:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->p:Ljava/util/List;

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 46
    sput p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->f:I

    return p0
.end method

.method static synthetic a(Lpl/jbzd/app/view/gallery/GalleryActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->h()V

    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/view/gallery/GalleryActivity;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lpl/jbzd/app/view/gallery/GalleryActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->a(ZZ)V

    .line 324
    return-void
.end method

.method private a(ZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 328
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v3, "Galeria"

    .line 330
    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "wyj\u015bcie z galerii"

    .line 331
    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 332
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 329
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 335
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 336
    const-string v2, "ARG_COMMENTS_COUNTER"

    iget-object v3, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v3}, Lpl/jbzd/app/model/Media;->realmGet$comments_counter()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 338
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->finish()V

    .line 339
    if-eqz p1, :cond_2

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gallery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const v0, 0x7f050015

    :goto_0
    invoke-virtual {p0, v1, v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->overridePendingTransition(II)V

    .line 340
    return-void

    .line 339
    :cond_1
    const v0, 0x7f050016

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(I)I
    .locals 0

    .prologue
    .line 46
    sput p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->g:I

    return p0
.end method

.method static synthetic b(Lpl/jbzd/app/view/gallery/GalleryActivity;)Lpl/jbzd/app/view/gallery/GalleryAdapter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    return-object v0
.end method

.method static synthetic b(Lpl/jbzd/app/view/gallery/GalleryActivity;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->n:Z

    return p1
.end method

.method static synthetic c(I)I
    .locals 0

    .prologue
    .line 46
    sput p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->h:I

    return p0
.end method

.method static synthetic c(Lpl/jbzd/app/view/gallery/GalleryActivity;)Lcom/google/android/gms/analytics/Tracker;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->a:Lcom/google/android/gms/analytics/Tracker;

    return-object v0
.end method

.method static synthetic d(Lpl/jbzd/app/view/gallery/GalleryActivity;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->i:Z

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->g:I

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lpl/jbzd/app/view/gallery/GalleryActivity;->f:I

    return v0
.end method

.method private h()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->i:Z

    .line 463
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentLayout:Landroid/widget/FrameLayout;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 465
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 466
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 467
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 470
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryActivity$5;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/gallery/GalleryActivity$5;-><init>(Lpl/jbzd/app/view/gallery/GalleryActivity;)V

    .line 471
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lpl/jbzd/app/view/gallery/GalleryActivity;->g:I

    int-to-float v1, v1

    .line 477
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 478
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 479
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 481
    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->i:Z

    .line 487
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 488
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    .line 489
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 490
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 493
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryActivity$6;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/gallery/GalleryActivity$6;-><init>(Lpl/jbzd/app/view/gallery/GalleryActivity;)V

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lpl/jbzd/app/view/gallery/GalleryActivity;->f:I

    int-to-float v1, v1

    .line 501
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 502
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 503
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 506
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 507
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-virtual {v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 508
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 529
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Komentarze"

    .line 531
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Dodanie komentarza"

    .line 532
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 533
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 530
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 536
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$comments_counter()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Media;->realmSet$comments_counter(I)V

    .line 538
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->txtComments:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v2}, Lpl/jbzd/app/model/Media;->realmGet$comments_counter()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    :cond_1
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 543
    const v0, 0x7f0a00ab

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 545
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;Landroid/widget/EditText;Lpl/jbzd/app/model/Media;Z)V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 573
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v0

    if-lez v0, :cond_0

    .line 575
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpl/jbzd/app/view/user/UserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 576
    const-string v1, "ARG_USER_ID"

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 578
    invoke-virtual {p0, v3, v3}, Lpl/jbzd/app/view/gallery/GalleryActivity;->overridePendingTransition(II)V

    .line 580
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/model/Comment;II)V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 550
    if-eqz p2, :cond_0

    .line 552
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->setTranslationY(F)V

    .line 553
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 560
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    sget v1, Lpl/jbzd/app/view/gallery/GalleryActivity;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->setTranslationY(F)V

    .line 558
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sget v2, Lpl/jbzd/app/view/gallery/GalleryActivity;->g:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    if-eqz p1, :cond_1

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 568
    :cond_0
    return-void

    .line 566
    :cond_1
    const v0, 0x7f0a00ca

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public a(Lpl/jbzd/api/response/CommentResponse;II)V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public a(Lpl/jbzd/app/model/Media;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/app/model/Media;",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 647
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public b(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 585
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v0

    if-lez v0, :cond_0

    .line 587
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpl/jbzd/app/view/user/UserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    const-string v1, "ARG_USER_ID"

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lpl/jbzd/app/model/User;->realmGet$id()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 589
    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 590
    invoke-virtual {p0, v3, v3}, Lpl/jbzd/app/view/gallery/GalleryActivity;->overridePendingTransition(II)V

    .line 592
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public c(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public d(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V
    .locals 3

    .prologue
    .line 612
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 614
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    .line 615
    if-nez v0, :cond_1

    new-instance v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-direct {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;-><init>()V

    .line 616
    :cond_1
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 643
    :cond_2
    :goto_0
    return-void

    .line 620
    :cond_3
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v1

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lpl/jbzd/api/ApiService;->comment_report(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryActivity$7;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/gallery/GalleryActivity$7;-><init>(Lpl/jbzd/app/view/gallery/GalleryActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 345
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    invoke-super {p0, p1}, Lpl/jbzd/app/view/AuthActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 456
    :cond_0
    :goto_0
    return v2

    .line 352
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/support/v4/view/t;->b(Landroid/view/MotionEvent;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v4, v0

    .line 357
    :goto_1
    if-le v4, v3, :cond_8

    .line 359
    iget-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->o:Z

    if-nez v0, :cond_2

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->o:Z

    .line 363
    :cond_2
    iget-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->o:Z

    if-eqz v0, :cond_7

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 367
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->k:F

    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->j:F

    .line 368
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->k:F

    sget v3, Lpl/jbzd/app/view/gallery/GalleryActivity;->h:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    :cond_3
    :goto_3
    iput-boolean v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->m:Z

    .line 369
    iput-boolean v2, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->o:Z

    iput-boolean v2, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->n:Z

    .line 372
    :cond_4
    invoke-super {p0, p1}, Lpl/jbzd/app/view/AuthActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    move v4, v3

    .line 354
    goto :goto_1

    :cond_5
    move v0, v2

    .line 360
    goto :goto_2

    :cond_6
    move v1, v2

    .line 368
    goto :goto_3

    .line 375
    :cond_7
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 376
    :goto_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 378
    invoke-static {p1}, Landroid/support/v4/view/t;->a(Landroid/view/MotionEvent;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 456
    :cond_8
    :goto_5
    iget-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->n:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Lpl/jbzd/app/view/AuthActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    move v2, v1

    goto :goto_0

    :cond_a
    move v0, v2

    .line 375
    goto :goto_4

    .line 382
    :pswitch_0
    iput v5, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->k:F

    iput v5, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->j:F

    .line 383
    if-eqz v0, :cond_b

    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->k:F

    sget v3, Lpl/jbzd/app/view/gallery/GalleryActivity;->h:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_c

    :cond_b
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->m:Z

    goto :goto_5

    :cond_c
    move v0, v2

    goto :goto_6

    .line 389
    :pswitch_1
    iget-boolean v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->m:Z

    if-eqz v0, :cond_8

    .line 391
    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->j:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 393
    const/high16 v4, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_8

    .line 395
    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->j:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_d

    move v0, v1

    .line 396
    :goto_7
    iput v5, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->j:F

    .line 398
    iget v3, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->l:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_e

    .line 399
    int-to-float v0, v0

    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->l:F

    goto :goto_5

    :cond_d
    move v0, v3

    .line 395
    goto :goto_7

    .line 401
    :cond_e
    iget v3, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->l:F

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_8

    .line 402
    int-to-float v0, v0

    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->l:F

    .line 403
    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->j:F

    iput v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->k:F

    goto :goto_5

    .line 413
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v6, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->k:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 416
    iget v4, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->k:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_11

    .line 417
    if-eqz v0, :cond_10

    move v4, v3

    .line 423
    :goto_8
    iget-boolean v7, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->m:Z

    if-eqz v7, :cond_8

    const/16 v7, 0x96

    invoke-static {v7}, Lpl/jbzd/core/a/a;->a(I)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_8

    .line 427
    if-nez v0, :cond_f

    iget v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->k:F

    cmpl-float v0, v5, v0

    if-lez v0, :cond_f

    .line 428
    invoke-direct {p0, v1, v1}, Lpl/jbzd/app/view/gallery/GalleryActivity;->a(ZZ)V

    .line 431
    :cond_f
    if-eqz v4, :cond_8

    .line 435
    iput-boolean v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->n:Z

    .line 437
    if-ne v4, v3, :cond_13

    .line 438
    invoke-direct {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->i()V

    goto/16 :goto_5

    :cond_10
    move v4, v2

    .line 417
    goto :goto_8

    .line 420
    :cond_11
    if-nez v0, :cond_12

    move v4, v1

    goto :goto_8

    :cond_12
    move v4, v2

    goto :goto_8

    .line 442
    :cond_13
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 443
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v4, "Komentarze"

    .line 444
    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "Wysuni\u0119cie komentarzy"

    .line 445
    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    .line 446
    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    .line 443
    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 449
    :cond_14
    invoke-direct {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->h()V

    goto/16 :goto_5

    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 312
    invoke-direct {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->i()V

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->a(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const v7, 0x7f0a00c3

    const/4 v8, 0x0

    .line 83
    invoke-super {p0, p1}, Lpl/jbzd/app/view/AuthActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f04005d

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->setContentView(I)V

    .line 85
    const v0, 0x7f050022

    const v1, 0x7f050021

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/app/view/gallery/GalleryActivity;->overridePendingTransition(II)V

    .line 87
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ARG_MEDIA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Media;

    iput-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 94
    :cond_1
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->finish()V

    .line 98
    :cond_2
    new-instance v3, Lpl/jbzd/app/view/gallery/GalleryActivity$1;

    invoke-direct {v3, p0}, Lpl/jbzd/app/view/gallery/GalleryActivity$1;-><init>(Lpl/jbzd/app/view/gallery/GalleryActivity;)V

    .line 105
    const-string v0, "gallery"

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$pictures()Lio/realm/q;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$pictures()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/q;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    :cond_3
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->finish()V

    .line 114
    :cond_4
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$pictures()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/q;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v8

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Picture;

    .line 116
    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$width()I

    move-result v1

    if-lt v1, v9, :cond_5

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$height()I

    move-result v1

    if-ge v1, v9, :cond_6

    .line 118
    :cond_5
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$width()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Picture;->realmSet$width(I)V

    .line 119
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$height()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Picture;->realmSet$height(I)V

    .line 122
    :cond_6
    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$image()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lpl/jbzd/app/model/Picture;->realmGet$image()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 123
    iget-object v5, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->p:Ljava/util/List;

    new-instance v6, Lpl/jbzd/app/view/gallery/a;

    add-int/lit8 v1, v2, 0x1

    invoke-direct {v6, v3, v0, v2}, Lpl/jbzd/app/view/gallery/a;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter$c;Lpl/jbzd/app/model/Picture;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_2
    move v2, v0

    .line 125
    goto :goto_1

    .line 129
    :cond_7
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$image()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 130
    :cond_8
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->finish()V

    .line 134
    :cond_9
    new-instance v0, Lpl/jbzd/app/model/Picture;

    invoke-direct {v0}, Lpl/jbzd/app/model/Picture;-><init>()V

    .line 135
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$image()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Picture;->realmSet$image(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$youtube()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Picture;->realmSet$youtube(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$movie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Picture;->realmSet$mp4(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$width()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Picture;->realmSet$width(I)V

    .line 139
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$height()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Picture;->realmSet$height(I)V

    .line 140
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->p:Ljava/util/List;

    new-instance v2, Lpl/jbzd/app/view/gallery/a;

    invoke-direct {v2, v3, v0, v8}, Lpl/jbzd/app/view/gallery/a;-><init>(Lpl/jbzd/app/view/feed/FeedAdapter$c;Lpl/jbzd/app/model/Picture;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_a
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 144
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->finish()V

    .line 148
    :cond_b
    new-instance v0, Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->viewPager:Lpl/jbzd/app/view/gallery/GalleryMainViewPager;

    iget-object v3, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ARG_POSITION"

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    iget-object v5, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->p:Ljava/util/List;

    new-instance v6, Lpl/jbzd/app/view/gallery/GalleryActivity$2;

    invoke-direct {v6, p0}, Lpl/jbzd/app/view/gallery/GalleryActivity$2;-><init>(Lpl/jbzd/app/view/gallery/GalleryActivity;)V

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lpl/jbzd/app/view/gallery/GalleryAdapter;-><init>(Landroid/content/Context;Lpl/jbzd/app/view/gallery/GalleryMainViewPager;Lpl/jbzd/app/model/Media;FLjava/util/List;Lpl/jbzd/app/view/gallery/GalleryPicturesAdapter$a;Landroid/os/Bundle;)V

    iput-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    .line 196
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->viewPager:Lpl/jbzd/app/view/gallery/GalleryMainViewPager;

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->setAdapter(Landroid/support/v4/view/aa;)V

    .line 197
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->viewPager:Lpl/jbzd/app/view/gallery/GalleryMainViewPager;

    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryActivity$3;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/gallery/GalleryActivity$3;-><init>(Lpl/jbzd/app/view/gallery/GalleryActivity;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/gallery/GalleryMainViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 221
    if-eqz p1, :cond_c

    const-string v0, "ARG_SHOW_COMMENTS"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    move v8, v9

    :cond_c
    iput-boolean v8, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->i:Z

    .line 223
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/gallery/GalleryActivity$4;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/gallery/GalleryActivity$4;-><init>(Lpl/jbzd/app/view/gallery/GalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 248
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-virtual {v0, p0, p0, p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView$c;Lpl/jbzd/app/ui/view/comment/CommentsView$b;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;)V

    .line 249
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->e:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->setMedia(Lpl/jbzd/app/model/Media;)V

    .line 250
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Lpl/jbzd/app/view/AuthActivity;->onDestroy()V

    .line 294
    return-void
.end method

.method public onLatestClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Lpl/jbzd/app/view/AuthActivity;->onPause()V

    .line 280
    invoke-static {p0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpl/jbzd/b/b;->a(Landroid/content/Context;)V

    .line 281
    return-void
.end method

.method public onPopularClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 518
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-super {p0}, Lpl/jbzd/app/view/AuthActivity;->onResume()V

    .line 257
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b:Landroid/util/SparseArray;

    .line 258
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b:Landroid/util/SparseArray;

    .line 259
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;

    .line 262
    iget-object v0, v0, Lpl/jbzd/app/view/gallery/GalleryAdapter$PicturesViewHolder;->viewPagerPictures:Lpl/jbzd/app/view/gallery/GalleryViewPager;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/GalleryViewPager;->getCurrentItem()I

    move-result v0

    .line 264
    if-ltz v0, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 265
    iget-object v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/gallery/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/gallery/a;->a()V

    .line 269
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->a:Lcom/google/android/gms/analytics/Tracker;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    const-string v1, "Galeria"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lpl/jbzd/app/view/gallery/GalleryActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 274
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0, p1}, Lpl/jbzd/app/view/AuthActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 300
    iget-object v0, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->d:Lpl/jbzd/app/view/gallery/GalleryAdapter;

    invoke-virtual {v0, p1}, Lpl/jbzd/app/view/gallery/GalleryAdapter;->a(Landroid/os/Bundle;)V

    .line 301
    const-string v0, "ARG_SHOW_COMMENTS"

    iget-boolean v1, p0, Lpl/jbzd/app/view/gallery/GalleryActivity;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 302
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lpl/jbzd/app/view/AuthActivity;->onStop()V

    .line 287
    invoke-static {p0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpl/jbzd/b/b;->b(Landroid/content/Context;)V

    .line 288
    return-void
.end method
