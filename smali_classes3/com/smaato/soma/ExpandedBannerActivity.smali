.class public Lcom/smaato/soma/ExpandedBannerActivity;
.super Landroid/app/Activity;
.source "ExpandedBannerActivity.java"

# interfaces
.implements Lcom/smaato/soma/bannerutilities/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/ExpandedBannerActivity$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/bannerutilities/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:I

.field c:I

.field d:Landroid/view/View$OnKeyListener;

.field e:Landroid/view/View$OnTouchListener;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Lcom/smaato/soma/j;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Lcom/smaato/soma/internal/e/a;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Z

.field private v:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/smaato/soma/ExpandedBannerActivity;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x28

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->f:Landroid/widget/ImageButton;

    .line 53
    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->g:Landroid/widget/ImageButton;

    .line 54
    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->h:Landroid/widget/TextView;

    .line 55
    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->i:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->j:Lcom/smaato/soma/j;

    .line 58
    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->k:Landroid/widget/ImageButton;

    .line 59
    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->l:Landroid/widget/ImageButton;

    .line 60
    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->m:Landroid/widget/ImageButton;

    .line 62
    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    .line 72
    iput-boolean v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->o:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->p:Z

    .line 75
    iput-boolean v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->q:Z

    .line 78
    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->s:Landroid/widget/RelativeLayout;

    .line 79
    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->t:Landroid/widget/RelativeLayout;

    .line 81
    iput v3, p0, Lcom/smaato/soma/ExpandedBannerActivity;->b:I

    .line 82
    iput v3, p0, Lcom/smaato/soma/ExpandedBannerActivity;->c:I

    .line 84
    iput-boolean v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->u:Z

    .line 86
    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->v:Landroid/widget/RelativeLayout;

    .line 454
    new-instance v0, Lcom/smaato/soma/ExpandedBannerActivity$8;

    invoke-direct {v0, p0}, Lcom/smaato/soma/ExpandedBannerActivity$8;-><init>(Lcom/smaato/soma/ExpandedBannerActivity;)V

    iput-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->d:Landroid/view/View$OnKeyListener;

    .line 481
    new-instance v0, Lcom/smaato/soma/ExpandedBannerActivity$9;

    invoke-direct {v0, p0}, Lcom/smaato/soma/ExpandedBannerActivity$9;-><init>(Lcom/smaato/soma/ExpandedBannerActivity;)V

    iput-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->e:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private a(Lcom/smaato/soma/ExpandedBannerActivity$a;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CloseButtonBitmapFailed;
        }
    .end annotation

    .prologue
    .line 429
    sget-object v0, Lcom/smaato/soma/ExpandedBannerActivity$4;->a:[I

    invoke-virtual {p1}, Lcom/smaato/soma/ExpandedBannerActivity$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 451
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 431
    :pswitch_0
    invoke-static {}, Lcom/smaato/soma/b/a;->a()Lcom/smaato/soma/b/a;

    move-result-object v0

    .line 432
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/smaato/soma/b/a;->c(Landroid/content/res/Resources;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 435
    :pswitch_1
    invoke-static {}, Lcom/smaato/soma/b/a;->a()Lcom/smaato/soma/b/a;

    move-result-object v0

    .line 436
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/smaato/soma/b/a;->d(Landroid/content/res/Resources;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 439
    :pswitch_2
    invoke-static {}, Lcom/smaato/soma/b/a;->a()Lcom/smaato/soma/b/a;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/smaato/soma/b/a;->g(Landroid/content/res/Resources;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 443
    :pswitch_3
    invoke-static {}, Lcom/smaato/soma/b/a;->a()Lcom/smaato/soma/b/a;

    move-result-object v0

    .line 444
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/smaato/soma/b/a;->e(Landroid/content/res/Resources;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 447
    :pswitch_4
    invoke-static {}, Lcom/smaato/soma/b/a;->a()Lcom/smaato/soma/b/a;

    move-result-object v0

    .line 448
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/smaato/soma/b/a;->f(Landroid/content/res/Resources;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(I)Landroid/widget/TextView;
    .locals 4

    .prologue
    const/16 v2, 0xfa

    .line 384
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 385
    iget-boolean v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->u:Z

    if-nez v1, :cond_0

    .line 386
    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 389
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 390
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 392
    iput-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->h:Landroid/widget/TextView;

    .line 396
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 399
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/smaato/soma/ExpandedBannerActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 400
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/smaato/soma/ExpandedBannerActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 401
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/smaato/soma/ExpandedBannerActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 402
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/smaato/soma/ExpandedBannerActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 404
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    return-object v0
.end method

.method public static a()Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/smaato/soma/ExpandedBannerActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/smaato/soma/ExpandedBannerActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/bannerutilities/a;

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/smaato/soma/ExpandedBannerActivity;)Lcom/smaato/soma/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->j:Lcom/smaato/soma/j;

    return-object v0
.end method

.method private a(Landroid/widget/ImageButton;Lcom/smaato/soma/ExpandedBannerActivity$a;)V
    .locals 2

    .prologue
    .line 416
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 417
    invoke-direct {p0, p2}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Lcom/smaato/soma/ExpandedBannerActivity$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-direct {p0, p2}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Lcom/smaato/soma/ExpandedBannerActivity$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Lcom/smaato/soma/exception/CloseButtonBitmapFailed; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    invoke-virtual {v0}, Lcom/smaato/soma/exception/CloseButtonBitmapFailed;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/smaato/soma/ExpandedBannerActivity;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->u:Z

    return v0
.end method

.method static synthetic c(Lcom/smaato/soma/ExpandedBannerActivity;)Lcom/smaato/soma/internal/e/a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 596
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->l:Landroid/widget/ImageButton;

    .line 597
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->l:Landroid/widget/ImageButton;

    sget-object v1, Lcom/smaato/soma/ExpandedBannerActivity$a;->e:Lcom/smaato/soma/ExpandedBannerActivity$a;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Landroid/widget/ImageButton;Lcom/smaato/soma/ExpandedBannerActivity$a;)V

    .line 599
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->b:I

    iget v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->c:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 602
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 603
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 606
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->l:Landroid/widget/ImageButton;

    new-instance v1, Lcom/smaato/soma/ExpandedBannerActivity$10;

    invoke-direct {v1, p0}, Lcom/smaato/soma/ExpandedBannerActivity$10;-><init>(Lcom/smaato/soma/ExpandedBannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 623
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->m:Landroid/widget/ImageButton;

    .line 624
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->m:Landroid/widget/ImageButton;

    sget-object v1, Lcom/smaato/soma/ExpandedBannerActivity$a;->c:Lcom/smaato/soma/ExpandedBannerActivity$a;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Landroid/widget/ImageButton;Lcom/smaato/soma/ExpandedBannerActivity$a;)V

    .line 626
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->b:I

    iget v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->c:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 629
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 630
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 633
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->m:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcom/smaato/soma/ExpandedBannerActivity$11;

    invoke-direct {v1, p0}, Lcom/smaato/soma/ExpandedBannerActivity$11;-><init>(Lcom/smaato/soma/ExpandedBannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 650
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->k:Landroid/widget/ImageButton;

    .line 651
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->k:Landroid/widget/ImageButton;

    sget-object v1, Lcom/smaato/soma/ExpandedBannerActivity$a;->d:Lcom/smaato/soma/ExpandedBannerActivity$a;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Landroid/widget/ImageButton;Lcom/smaato/soma/ExpandedBannerActivity$a;)V

    .line 653
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->b:I

    iget v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->c:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 656
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 657
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->k:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->k:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 662
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->s:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 663
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->k:Landroid/widget/ImageButton;

    new-instance v1, Lcom/smaato/soma/ExpandedBannerActivity$12;

    invoke-direct {v1, p0}, Lcom/smaato/soma/ExpandedBannerActivity$12;-><init>(Lcom/smaato/soma/ExpandedBannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 678
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->g:Landroid/widget/ImageButton;

    .line 679
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->g:Landroid/widget/ImageButton;

    sget-object v1, Lcom/smaato/soma/ExpandedBannerActivity$a;->a:Lcom/smaato/soma/ExpandedBannerActivity$a;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Landroid/widget/ImageButton;Lcom/smaato/soma/ExpandedBannerActivity$a;)V

    .line 680
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->g:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 681
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/smaato/soma/ExpandedBannerActivity$2;

    invoke-direct {v1, p0}, Lcom/smaato/soma/ExpandedBannerActivity$2;-><init>(Lcom/smaato/soma/ExpandedBannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->b:I

    iget v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->c:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 698
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 699
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 701
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 705
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 712
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->f:Landroid/widget/ImageButton;

    .line 714
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->f:Landroid/widget/ImageButton;

    sget-object v1, Lcom/smaato/soma/ExpandedBannerActivity$a;->b:Lcom/smaato/soma/ExpandedBannerActivity$a;

    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Landroid/widget/ImageButton;Lcom/smaato/soma/ExpandedBannerActivity$a;)V

    .line 717
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->f:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 720
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->b:I

    iget v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->c:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 723
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 724
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 726
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->t:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 731
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->f:Landroid/widget/ImageButton;

    new-instance v1, Lcom/smaato/soma/ExpandedBannerActivity$3;

    invoke-direct {v1, p0}, Lcom/smaato/soma/ExpandedBannerActivity$3;-><init>(Lcom/smaato/soma/ExpandedBannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->f:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 746
    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 511
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 512
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 513
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 517
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 521
    iget-boolean v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->p:Z

    if-eqz v0, :cond_0

    .line 522
    iput-boolean v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->p:Z

    .line 523
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iput-boolean v4, p0, Lcom/smaato/soma/ExpandedBannerActivity;->q:Z

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 529
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :goto_0
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 537
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 538
    iget-boolean v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->q:Z

    if-eqz v0, :cond_4

    .line 539
    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 551
    :goto_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 552
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 558
    :cond_1
    :goto_2
    return-void

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->m:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 545
    :cond_4
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 548
    :cond_5
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 554
    :cond_6
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->i:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->o:Z

    .line 70
    return-void
.end method

.method public b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 562
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smaato/soma/bannerutilities/a;->a:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 563
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->o()V

    .line 564
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/bannerutilities/h;)V

    .line 573
    :cond_0
    :goto_0
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smaato/soma/bannerutilities/a;->a:Z

    .line 574
    return-void

    .line 565
    :cond_1
    if-eqz p1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->h:Landroid/widget/TextView;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :cond_2
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/bannerutilities/h;)V

    .line 571
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->c()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->o:Z

    return v0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 264
    :try_start_0
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->finish()V

    .line 275
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 268
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "ExpandedBannerActivity"

    const-string v2, "ExpandedBannerActivity cleanup failed"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->o:Z

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Z)V

    .line 310
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->j:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    .line 312
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->j:Lcom/smaato/soma/j;

    invoke-virtual {v1}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 317
    :cond_2
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Lcom/smaato/soma/ExpandedBannerActivity$5;

    invoke-direct {v0, p0}, Lcom/smaato/soma/ExpandedBannerActivity$5;-><init>(Lcom/smaato/soma/ExpandedBannerActivity;)V

    .line 336
    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity$5;->c()Ljava/lang/Object;

    goto :goto_0
.end method

.method public final e()V
    .locals 5

    .prologue
    .line 347
    :try_start_0
    new-instance v0, Lcom/smaato/soma/ExpandedBannerActivity$6;

    invoke-direct {v0, p0}, Lcom/smaato/soma/ExpandedBannerActivity$6;-><init>(Lcom/smaato/soma/ExpandedBannerActivity;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 350
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/internal/e/a;

    .line 352
    if-eqz v0, :cond_0

    .line 353
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 354
    :try_start_1
    new-instance v1, Lcom/smaato/soma/ExpandedBannerActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/smaato/soma/ExpandedBannerActivity$7;-><init>(Lcom/smaato/soma/ExpandedBannerActivity;Lcom/smaato/soma/internal/e/a;)V

    .line 365
    invoke-virtual {v1}, Lcom/smaato/soma/ExpandedBannerActivity$7;->c()Ljava/lang/Object;

    .line 366
    monitor-exit v0

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 366
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 368
    :catch_0
    move-exception v0

    .line 369
    throw v0

    .line 370
    :catch_1
    move-exception v0

    .line 371
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "ExpandedBannerActivity"

    const-string v2, "Exception in clearing views in ExpandedBannerActivity"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 292
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "ExpandedBannerActivity"

    const-string v2, "ExpandedBannerActivity onBackPressed() invoked"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 297
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->finish()V

    .line 299
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/high16 v7, 0x42200000    # 40.0f

    const/16 v6, 0xfa

    const/16 v5, 0xc8

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    sget-object v0, Lcom/smaato/soma/ExpandedBannerActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 98
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->j:Lcom/smaato/soma/j;

    .line 100
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rotation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 101
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 103
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/smaato/soma/internal/requests/settings/a;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/ExpandedBannerActivity;->setRequestedOrientation(I)V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Z)V

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/internal/e/a;

    iput-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    .line 110
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->d:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/e/a;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 113
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 114
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/smaato/soma/ExpandedBannerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 115
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 118
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->v:Landroid/widget/RelativeLayout;

    .line 125
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->b:I

    .line 131
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->c:I

    .line 133
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 134
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    instance-of v1, v1, Lcom/smaato/soma/bannerutilities/d;

    if-eqz v1, :cond_1

    .line 135
    iput-boolean v4, p0, Lcom/smaato/soma/ExpandedBannerActivity;->u:Z

    .line 138
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->t:Landroid/widget/RelativeLayout;

    .line 139
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->c:I

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    iget-object v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->t:Landroid/widget/RelativeLayout;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 146
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->t:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 149
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->s:Landroid/widget/RelativeLayout;

    .line 150
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->c:I

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    iget-object v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->s:Landroid/widget/RelativeLayout;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 157
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->s:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 159
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 162
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->u:Z

    if-nez v1, :cond_3

    .line 176
    invoke-direct {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->i()V

    .line 179
    invoke-direct {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->j()V

    .line 182
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->t:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->c:I

    invoke-direct {p0, v2}, Lcom/smaato/soma/ExpandedBannerActivity;->a(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 185
    invoke-direct {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->f()V

    .line 188
    invoke-direct {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->g()V

    .line 191
    invoke-direct {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->h()V

    .line 193
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 200
    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/smaato/soma/ExpandedBannerActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 203
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/smaato/soma/ExpandedBannerActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 204
    iget-object v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v2, v1}, Lcom/smaato/soma/internal/e/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/smaato/soma/ExpandedBannerActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/e/a;->requestFocus(I)Z

    .line 211
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/smaato/soma/bannerutilities/a;->a(Ljava/lang/ref/WeakReference;)V

    .line 213
    iget-boolean v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->u:Z

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->t:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->s:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/connector/a;->a(Landroid/webkit/WebView;)V

    .line 225
    :goto_1
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/connector/a;->a(Landroid/webkit/WebView;)V

    .line 227
    new-instance v0, Lcom/smaato/soma/ExpandedBannerActivity$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/ExpandedBannerActivity$1;-><init>(Lcom/smaato/soma/ExpandedBannerActivity;)V

    .line 244
    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity$1;->c()Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->j:Lcom/smaato/soma/j;

    iput-boolean v4, v0, Lcom/smaato/soma/j;->d:Z

    .line 259
    :goto_2
    return-void

    .line 221
    :cond_4
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/bannerutilities/h;)V

    .line 223
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity;->n:Lcom/smaato/soma/internal/e/a;

    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity;->e:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/e/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 253
    :cond_5
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "ExpandedBannerActivity"

    const-string v2, "ExpandedBannerActivity.currentPackage is null ExpandedBannerActivity being finish invoked from manageCloseButton"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 257
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->c()V

    goto :goto_2

    .line 168
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 281
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity;->d()V

    .line 285
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 286
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 287
    return-void
.end method
