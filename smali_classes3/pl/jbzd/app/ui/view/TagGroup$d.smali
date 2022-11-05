.class Lpl/jbzd/app/ui/view/TagGroup$d;
.super Landroid/widget/TextView;
.source "TagGroup.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/ui/view/TagGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/ui/view/TagGroup$d$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/TagGroup;

.field private b:I

.field private c:Z

.field private d:Z

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/RectF;

.field private final l:Landroid/graphics/RectF;

.field private final m:Landroid/graphics/Rect;

.field private final n:Landroid/graphics/Path;

.field private final o:Landroid/graphics/PathEffect;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/ui/view/TagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x2

    .line 702
    iput-object p1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    .line 703
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 655
    iput-boolean v2, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->c:Z

    .line 658
    iput-boolean v2, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->d:Z

    .line 660
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->e:Landroid/graphics/Paint;

    .line 662
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->f:Landroid/graphics/Paint;

    .line 664
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->g:Landroid/graphics/Paint;

    .line 667
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->h:Landroid/graphics/RectF;

    .line 671
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->i:Landroid/graphics/RectF;

    .line 675
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->j:Landroid/graphics/RectF;

    .line 678
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->k:Landroid/graphics/RectF;

    .line 681
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->l:Landroid/graphics/RectF;

    .line 684
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->m:Landroid/graphics/Rect;

    .line 687
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->n:Landroid/graphics/Path;

    .line 690
    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->o:Landroid/graphics/PathEffect;

    .line 693
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 694
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->e:Landroid/graphics/Paint;

    iget-object v4, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v4}, Lpl/jbzd/app/ui/view/TagGroup;->c(Lpl/jbzd/app/ui/view/TagGroup;)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 695
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->f:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 696
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->g:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 697
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->g:Landroid/graphics/Paint;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 698
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->g:Landroid/graphics/Paint;

    iget-object v4, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v4}, Lpl/jbzd/app/ui/view/TagGroup;->d(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 704
    invoke-static {p1}, Lpl/jbzd/app/ui/view/TagGroup;->e(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v0

    invoke-static {p1}, Lpl/jbzd/app/ui/view/TagGroup;->f(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v4

    invoke-static {p1}, Lpl/jbzd/app/ui/view/TagGroup;->e(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v5

    invoke-static {p1}, Lpl/jbzd/app/ui/view/TagGroup;->f(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v6

    invoke-virtual {p0, v0, v4, v5, v6}, Lpl/jbzd/app/ui/view/TagGroup$d;->setPadding(IIII)V

    .line 705
    new-instance v0, Lpl/jbzd/app/ui/view/TagGroup$LayoutParams;

    invoke-direct {v0, v8, v8}, Lpl/jbzd/app/ui/view/TagGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setGravity(I)V

    .line 710
    invoke-virtual {p0, p4}, Lpl/jbzd/app/ui/view/TagGroup$d;->setText(Ljava/lang/CharSequence;)V

    .line 711
    invoke-static {p1}, Lpl/jbzd/app/ui/view/TagGroup;->g(Lpl/jbzd/app/ui/view/TagGroup;)F

    move-result v0

    invoke-virtual {p0, v2, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setTextSize(IF)V

    .line 712
    const/high16 v0, 0x80000

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setInputType(I)V

    .line 714
    iput p3, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->b:I

    .line 716
    invoke-static {p1}, Lpl/jbzd/app/ui/view/TagGroup;->a(Lpl/jbzd/app/ui/view/TagGroup;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setClickable(Z)V

    .line 717
    if-ne p3, v7, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setFocusable(Z)V

    .line 718
    if-ne p3, v7, :cond_3

    :goto_1
    invoke-virtual {p0, v1}, Lpl/jbzd/app/ui/view/TagGroup$d;->setFocusableInTouchMode(Z)V

    .line 719
    if-ne p3, v7, :cond_4

    invoke-static {p1}, Lpl/jbzd/app/ui/view/TagGroup;->h(Lpl/jbzd/app/ui/view/TagGroup;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setHint(Ljava/lang/CharSequence;)V

    .line 720
    if-ne p3, v7, :cond_0

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    :cond_0
    invoke-virtual {p0, v3}, Lpl/jbzd/app/ui/view/TagGroup$d;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 723
    new-instance v0, Lpl/jbzd/app/ui/view/TagGroup$d$1;

    invoke-direct {v0, p0, p1, p3}, Lpl/jbzd/app/ui/view/TagGroup$d$1;-><init>(Lpl/jbzd/app/ui/view/TagGroup$d;Lpl/jbzd/app/ui/view/TagGroup;I)V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 730
    if-ne p3, v7, :cond_1

    .line 731
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->requestFocus()Z

    .line 734
    new-instance v0, Lpl/jbzd/app/ui/view/TagGroup$d$2;

    invoke-direct {v0, p0, p1}, Lpl/jbzd/app/ui/view/TagGroup$d$2;-><init>(Lpl/jbzd/app/ui/view/TagGroup$d;Lpl/jbzd/app/ui/view/TagGroup;)V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 756
    new-instance v0, Lpl/jbzd/app/ui/view/TagGroup$d$3;

    invoke-direct {v0, p0, p1}, Lpl/jbzd/app/ui/view/TagGroup$d$3;-><init>(Lpl/jbzd/app/ui/view/TagGroup$d;Lpl/jbzd/app/ui/view/TagGroup;)V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 785
    new-instance v0, Lpl/jbzd/app/ui/view/TagGroup$d$4;

    invoke-direct {v0, p0, p1}, Lpl/jbzd/app/ui/view/TagGroup$d$4;-><init>(Lpl/jbzd/app/ui/view/TagGroup$d;Lpl/jbzd/app/ui/view/TagGroup;)V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 805
    :cond_1
    invoke-direct {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->c()V

    .line 806
    invoke-static {p1}, Lpl/jbzd/app/ui/view/TagGroup;->j(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setBackgroundColor(I)V

    .line 807
    return-void

    :cond_2
    move v0, v2

    .line 717
    goto :goto_0

    :cond_3
    move v1, v2

    .line 718
    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 719
    goto :goto_2

    .line 690
    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/TagGroup$d;)I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->b:I

    return v0
.end method

.method static synthetic b(Lpl/jbzd/app/ui/view/TagGroup$d;)Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->c:Z

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->a(Lpl/jbzd/app/ui/view/TagGroup;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 861
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 862
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->k(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 863
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->o:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 864
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->j(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 865
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->l(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setHintTextColor(I)V

    .line 866
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->m(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setTextColor(I)V

    .line 885
    :goto_0
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->d:Z

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->s(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 888
    :cond_0
    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->e:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 869
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->c:Z

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->n(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 871
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->o(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 872
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->p(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setTextColor(I)V

    goto :goto_0

    .line 874
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->q(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 875
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->j(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 876
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->r(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setTextColor(I)V

    goto :goto_0

    .line 880
    :cond_3
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->q(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 881
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->j(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 882
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->r(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 833
    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setFocusable(Z)V

    .line 834
    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->setFocusableInTouchMode(Z)V

    .line 836
    invoke-virtual {p0, v1}, Lpl/jbzd/app/ui/view/TagGroup$d;->setHint(Ljava/lang/CharSequence;)V

    .line 838
    invoke-virtual {p0, v1}, Lpl/jbzd/app/ui/view/TagGroup$d;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 840
    const/4 v0, 0x1

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->b:I

    .line 841
    invoke-direct {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->c()V

    .line 842
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->requestLayout()V

    .line 843
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 815
    iput-boolean p1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->c:Z

    .line 818
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->e(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 821
    :goto_0
    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->e(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v1

    iget-object v2, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    .line 822
    invoke-static {v2}, Lpl/jbzd/app/ui/view/TagGroup;->f(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v2

    iget-object v3, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    .line 824
    invoke-static {v3}, Lpl/jbzd/app/ui/view/TagGroup;->f(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v3

    .line 821
    invoke-virtual {p0, v1, v2, v0, v3}, Lpl/jbzd/app/ui/view/TagGroup$d;->setPadding(IIII)V

    .line 825
    invoke-direct {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->c()V

    .line 826
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->e(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 856
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .prologue
    .line 1010
    new-instance v0, Lpl/jbzd/app/ui/view/TagGroup$d$a;

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lpl/jbzd/app/ui/view/TagGroup$d$a;-><init>(Lpl/jbzd/app/ui/view/TagGroup$d;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 904
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 905
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 907
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->c:Z

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 909
    const/high16 v0, 0x42340000    # 45.0f

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->l:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->l:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 910
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->l:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->l:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->l:Landroid/graphics/RectF;

    .line 911
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->g:Landroid/graphics/Paint;

    move-object v0, p1

    .line 910
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 912
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->l:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->l:Landroid/graphics/RectF;

    .line 913
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->l:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->g:Landroid/graphics/Paint;

    move-object v0, p1

    .line 912
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 914
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 916
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->n:Landroid/graphics/Path;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 917
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 918
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    const/high16 v9, 0x40200000    # 2.5f

    const/high16 v5, 0x40000000    # 2.0f

    .line 922
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 923
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->c(Lpl/jbzd/app/ui/view/TagGroup;)F

    move-result v0

    float-to-int v0, v0

    .line 924
    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->c(Lpl/jbzd/app/ui/view/TagGroup;)F

    move-result v1

    float-to-int v1, v1

    .line 925
    add-int v2, v0, p1

    int-to-float v2, v2

    iget-object v3, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v3}, Lpl/jbzd/app/ui/view/TagGroup;->c(Lpl/jbzd/app/ui/view/TagGroup;)F

    move-result v3

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 926
    add-int v3, v1, p2

    int-to-float v3, v3

    iget-object v4, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v4}, Lpl/jbzd/app/ui/view/TagGroup;->c(Lpl/jbzd/app/ui/view/TagGroup;)F

    move-result v4

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 935
    iget-object v4, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->n:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 956
    iget-object v4, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->j:Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 957
    iget-object v4, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->k:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v5, v1

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 959
    int-to-float v0, p2

    div-float/2addr v0, v9

    float-to-int v0, v0

    .line 960
    sub-int v4, v3, v1

    .line 961
    iget-object v5, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->l:Landroid/graphics/RectF;

    sub-int v6, v2, v0

    iget-object v7, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v7}, Lpl/jbzd/app/ui/view/TagGroup;->e(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v1, v7

    div-int/lit8 v7, v0, 0x2

    sub-int/2addr v1, v7

    int-to-float v1, v1

    iget-object v7, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    .line 963
    invoke-static {v7}, Lpl/jbzd/app/ui/view/TagGroup;->e(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v7

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v3, v7

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 961
    invoke-virtual {v5, v6, v1, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 967
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->c:Z

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup;->e(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    .line 969
    invoke-static {v1}, Lpl/jbzd/app/ui/view/TagGroup;->f(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v1

    iget-object v2, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    .line 970
    invoke-static {v2}, Lpl/jbzd/app/ui/view/TagGroup;->e(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v4

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->a:Lpl/jbzd/app/ui/view/TagGroup;

    .line 971
    invoke-static {v3}, Lpl/jbzd/app/ui/view/TagGroup;->f(Lpl/jbzd/app/ui/view/TagGroup;)I

    move-result v3

    .line 968
    invoke-virtual {p0, v0, v1, v2, v3}, Lpl/jbzd/app/ui/view/TagGroup$d;->setPadding(IIII)V

    .line 973
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 977
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 979
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1005
    :goto_0
    return v0

    .line 982
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1005
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 984
    :pswitch_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 985
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->d:Z

    .line 986
    invoke-direct {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->c()V

    .line 987
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->invalidate()V

    goto :goto_1

    .line 991
    :pswitch_1
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->m:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 992
    iput-boolean v3, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->d:Z

    .line 993
    invoke-direct {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->c()V

    .line 994
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->invalidate()V

    goto :goto_1

    .line 999
    :pswitch_2
    iput-boolean v3, p0, Lpl/jbzd/app/ui/view/TagGroup$d;->d:Z

    .line 1000
    invoke-direct {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->c()V

    .line 1001
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup$d;->invalidate()V

    goto :goto_1

    .line 982
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
