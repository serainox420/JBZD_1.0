.class public Lpl/jbzd/app/ui/view/TagGroup;
.super Landroid/view/ViewGroup;
.source "TagGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/ui/view/TagGroup$d;,
        Lpl/jbzd/app/ui/view/TagGroup$a;,
        Lpl/jbzd/app/ui/view/TagGroup$SavedState;,
        Lpl/jbzd/app/ui/view/TagGroup$LayoutParams;,
        Lpl/jbzd/app/ui/view/TagGroup$c;,
        Lpl/jbzd/app/ui/view/TagGroup$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/CharSequence;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Lpl/jbzd/app/ui/view/TagGroup$b;

.field private u:Lpl/jbzd/app/ui/view/TagGroup$c;

.field private final v:Lpl/jbzd/app/ui/view/TagGroup$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpl/jbzd/app/ui/view/TagGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lpl/jbzd/app/ui/view/TagGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    new-instance v0, Lpl/jbzd/app/ui/view/TagGroup$a;

    invoke-direct {v0, p0}, Lpl/jbzd/app/ui/view/TagGroup$a;-><init>(Lpl/jbzd/app/ui/view/TagGroup;)V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->v:Lpl/jbzd/app/ui/view/TagGroup$a;

    .line 136
    sget-object v0, Lpl/jbzd/R$styleable;->TagGroup:[I

    const v1, 0x7f0c012b

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 138
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->a:Z

    .line 139
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->b:Ljava/lang/CharSequence;

    .line 140
    const/4 v0, 0x2

    const/16 v2, 0x49

    const/16 v3, 0xc1

    const/16 v4, 0x20

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->c:I

    .line 141
    const/4 v0, 0x3

    const/16 v2, 0x49

    const/16 v3, 0xc1

    const/16 v4, 0x20

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->d:I

    .line 142
    const/4 v0, 0x4

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->e:I

    .line 143
    const/4 v0, 0x5

    const/16 v2, 0xaa

    const/16 v3, 0xaa

    const/16 v4, 0xaa

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->f:I

    .line 144
    const/4 v0, 0x6

    const/16 v2, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->g:I

    .line 145
    const/4 v0, 0x7

    const/16 v2, 0xde

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->h:I

    .line 146
    const/16 v0, 0x8

    const/16 v2, 0x49

    const/16 v3, 0xc1

    const/16 v4, 0x20

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->i:I

    .line 147
    const/16 v0, 0x9

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->j:I

    .line 148
    const/16 v0, 0xa

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->k:I

    .line 149
    const/16 v0, 0xb

    const/16 v2, 0x49

    const/16 v3, 0xc1

    const/16 v4, 0x20

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->l:I

    .line 150
    const/16 v0, 0xc

    const/16 v2, 0xed

    const/16 v3, 0xed

    const/16 v4, 0xed

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->m:I

    .line 151
    const/16 v0, 0xd

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0, v2}, Lpl/jbzd/app/ui/view/TagGroup;->a(F)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->n:F

    .line 152
    const/16 v0, 0xe

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lpl/jbzd/app/ui/view/TagGroup;->b(F)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->o:F

    .line 153
    const/16 v0, 0xf

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lpl/jbzd/app/ui/view/TagGroup;->a(F)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->p:I

    .line 154
    const/16 v0, 0x10

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0, v2}, Lpl/jbzd/app/ui/view/TagGroup;->a(F)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->q:I

    .line 155
    const/16 v0, 0x11

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lpl/jbzd/app/ui/view/TagGroup;->a(F)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->r:I

    .line 156
    const/16 v0, 0x12

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0, v2}, Lpl/jbzd/app/ui/view/TagGroup;->a(F)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->a:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->b()V

    .line 166
    new-instance v0, Lpl/jbzd/app/ui/view/TagGroup$1;

    invoke-direct {v0, p0}, Lpl/jbzd/app/ui/view/TagGroup$1;-><init>(Lpl/jbzd/app/ui/view/TagGroup;)V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_0
    return-void

    .line 158
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/TagGroup;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->a:Z

    return v0
.end method

.method static synthetic b(Lpl/jbzd/app/ui/view/TagGroup;)Lpl/jbzd/app/ui/view/TagGroup$c;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->u:Lpl/jbzd/app/ui/view/TagGroup$c;

    return-object v0
.end method

.method static synthetic c(Lpl/jbzd/app/ui/view/TagGroup;)F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->n:F

    return v0
.end method

.method static synthetic d(Lpl/jbzd/app/ui/view/TagGroup;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->k:I

    return v0
.end method

.method static synthetic e(Lpl/jbzd/app/ui/view/TagGroup;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->r:I

    return v0
.end method

.method static synthetic f(Lpl/jbzd/app/ui/view/TagGroup;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->s:I

    return v0
.end method

.method static synthetic g(Lpl/jbzd/app/ui/view/TagGroup;)F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->o:F

    return v0
.end method

.method static synthetic h(Lpl/jbzd/app/ui/view/TagGroup;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic i(Lpl/jbzd/app/ui/view/TagGroup;)Lpl/jbzd/app/ui/view/TagGroup$b;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->t:Lpl/jbzd/app/ui/view/TagGroup$b;

    return-object v0
.end method

.method static synthetic j(Lpl/jbzd/app/ui/view/TagGroup;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->e:I

    return v0
.end method

.method static synthetic k(Lpl/jbzd/app/ui/view/TagGroup;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->f:I

    return v0
.end method

.method static synthetic l(Lpl/jbzd/app/ui/view/TagGroup;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->g:I

    return v0
.end method

.method static synthetic m(Lpl/jbzd/app/ui/view/TagGroup;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->h:I

    return v0
.end method

.method static synthetic n(Lpl/jbzd/app/ui/view/TagGroup;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->i:I

    return v0
.end method

.method static synthetic o(Lpl/jbzd/app/ui/view/TagGroup;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->l:I

    return v0
.end method

.method static synthetic p(Lpl/jbzd/app/ui/view/TagGroup;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->j:I

    return v0
.end method

.method static synthetic q(Lpl/jbzd/app/ui/view/TagGroup;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->c:I

    return v0
.end method

.method static synthetic r(Lpl/jbzd/app/ui/view/TagGroup;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->d:I

    return v0
.end method

.method static synthetic s(Lpl/jbzd/app/ui/view/TagGroup;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->m:I

    return v0
.end method


# virtual methods
.method public a(F)F
    .locals 2

    .prologue
    .line 478
    const/4 v0, 0x1

    .line 479
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 478
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method protected a(I)Lpl/jbzd/app/ui/view/TagGroup$d;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lpl/jbzd/app/ui/view/TagGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/TagGroup$d;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getInputTag()Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->a()V

    .line 183
    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup;->t:Lpl/jbzd/app/ui/view/TagGroup$b;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup;->t:Lpl/jbzd/app/ui/view/TagGroup$b;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lpl/jbzd/app/ui/view/TagGroup$b;->a(Lpl/jbzd/app/ui/view/TagGroup;Ljava/lang/String;)V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->b()V

    .line 188
    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 472
    new-instance v0, Lpl/jbzd/app/ui/view/TagGroup$d;

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lpl/jbzd/app/ui/view/TagGroup$d;-><init>(Lpl/jbzd/app/ui/view/TagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 473
    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup;->v:Lpl/jbzd/app/ui/view/TagGroup$a;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/TagGroup$d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup;->addView(Landroid/view/View;)V

    .line 475
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 456
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getInputTag()Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already has a INPUT tag in group."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    new-instance v0, Lpl/jbzd/app/ui/view/TagGroup$d;

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, p1}, Lpl/jbzd/app/ui/view/TagGroup$d;-><init>(Lpl/jbzd/app/ui/view/TagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 462
    iget-object v1, p0, Lpl/jbzd/app/ui/view/TagGroup;->v:Lpl/jbzd/app/ui/view/TagGroup$a;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/TagGroup$d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup;->addView(Landroid/view/View;)V

    .line 464
    return-void
.end method

.method protected a(Lpl/jbzd/app/ui/view/TagGroup$d;)V
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0, p1}, Lpl/jbzd/app/ui/view/TagGroup;->removeView(Landroid/view/View;)V

    .line 504
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->t:Lpl/jbzd/app/ui/view/TagGroup$b;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->t:Lpl/jbzd/app/ui/view/TagGroup$b;

    invoke-virtual {p1}, Lpl/jbzd/app/ui/view/TagGroup$d;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lpl/jbzd/app/ui/view/TagGroup$b;->b(Lpl/jbzd/app/ui/view/TagGroup;Ljava/lang/String;)V

    .line 507
    :cond_0
    return-void
.end method

.method public b(F)F
    .locals 2

    .prologue
    .line 483
    const/4 v0, 0x2

    .line 484
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 483
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup;->a(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 489
    new-instance v0, Lpl/jbzd/app/ui/view/TagGroup$LayoutParams;

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lpl/jbzd/app/ui/view/TagGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getCheckedTag()Lpl/jbzd/app/ui/view/TagGroup$d;
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getCheckedTagIndex()I

    move-result v0

    .line 411
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 412
    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup;->a(I)Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    .line 414
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCheckedTagIndex()I
    .locals 3

    .prologue
    .line 423
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getChildCount()I

    move-result v1

    .line 424
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 425
    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup;->a(I)Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v2

    .line 426
    invoke-static {v2}, Lpl/jbzd/app/ui/view/TagGroup$d;->b(Lpl/jbzd/app/ui/view/TagGroup$d;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    :goto_1
    return v0

    .line 424
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected getInputTag()Lpl/jbzd/app/ui/view/TagGroup$d;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->a:Z

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 316
    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup;->a(I)Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    invoke-static {v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->a(Lpl/jbzd/app/ui/view/TagGroup$d;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 320
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 323
    goto :goto_0
.end method

.method public getInputTagText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getInputTag()Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLastNormalTagView()Lpl/jbzd/app/ui/view/TagGroup$d;
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 348
    :goto_0
    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup;->a(I)Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    return-object v0

    .line 347
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 357
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getChildCount()I

    move-result v1

    .line 358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 359
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 360
    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup;->a(I)Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v3

    .line 361
    invoke-static {v3}, Lpl/jbzd/app/ui/view/TagGroup$d;->a(Lpl/jbzd/app/ui/view/TagGroup$d;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 362
    invoke-virtual {v3}, Lpl/jbzd/app/ui/view/TagGroup$d;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 245
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getPaddingLeft()I

    move-result v4

    .line 246
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getPaddingRight()I

    move-result v1

    sub-int v6, v0, v1

    .line 247
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getPaddingTop()I

    move-result v2

    .line 253
    const/4 v1, 0x0

    .line 255
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getChildCount()I

    move-result v7

    .line 256
    const/4 v0, 0x0

    move v5, v0

    move v3, v4

    move v0, v1

    :goto_0
    if-ge v5, v7, :cond_2

    .line 257
    invoke-virtual {p0, v5}, Lpl/jbzd/app/ui/view/TagGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 258
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 259
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 261
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 262
    add-int v10, v3, v9

    if-le v10, v6, :cond_1

    .line 264
    iget v3, p0, Lpl/jbzd/app/ui/view/TagGroup;->q:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    move v2, v0

    move v3, v4

    move v0, v1

    .line 269
    :goto_1
    add-int v10, v3, v9

    add-int/2addr v1, v2

    invoke-virtual {v8, v3, v2, v10, v1}, Landroid/view/View;->layout(IIII)V

    .line 271
    iget v1, p0, Lpl/jbzd/app/ui/view/TagGroup;->p:I

    add-int/2addr v1, v9

    add-int/2addr v3, v1

    .line 256
    :cond_0
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 267
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 274
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 14

    .prologue
    .line 192
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 193
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 194
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 195
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 197
    invoke-virtual/range {p0 .. p2}, Lpl/jbzd/app/ui/view/TagGroup;->measureChildren(II)V

    .line 200
    const/4 v4, 0x0

    .line 202
    const/4 v3, 0x0

    .line 203
    const/4 v2, 0x0

    .line 204
    const/4 v5, 0x0

    .line 206
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getChildCount()I

    move-result v11

    .line 207
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v11, :cond_1

    .line 208
    invoke-virtual {p0, v8}, Lpl/jbzd/app/ui/view/TagGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 209
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 210
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 212
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_5

    .line 213
    add-int/2addr v2, v1

    .line 214
    if-le v2, v7, :cond_0

    .line 216
    iget v2, p0, Lpl/jbzd/app/ui/view/TagGroup;->q:I

    add-int/2addr v2, v5

    add-int/2addr v4, v2

    .line 218
    add-int/lit8 v2, v3, 0x1

    move v3, v4

    .line 222
    :goto_1
    iget v4, p0, Lpl/jbzd/app/ui/view/TagGroup;->p:I

    add-int/2addr v1, v4

    .line 207
    :goto_2
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v5, v0

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_1

    .line 226
    :cond_1
    add-int v0, v4, v5

    .line 229
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 232
    if-nez v3, :cond_4

    .line 234
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 239
    :goto_3
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v9, v2, :cond_2

    move v1, v7

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v10, v2, :cond_3

    move v0, v6

    :cond_3
    invoke-virtual {p0, v1, v0}, Lpl/jbzd/app/ui/view/TagGroup;->setMeasuredDimension(II)V

    .line 241
    return-void

    :cond_4
    move v1, v7

    .line 236
    goto :goto_3

    :cond_5
    move v0, v5

    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 290
    instance-of v0, p1, Lpl/jbzd/app/ui/view/TagGroup$SavedState;

    if-nez v0, :cond_1

    .line 291
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    check-cast p1, Lpl/jbzd/app/ui/view/TagGroup$SavedState;

    .line 296
    invoke-virtual {p1}, Lpl/jbzd/app/ui/view/TagGroup$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 298
    iget-object v0, p1, Lpl/jbzd/app/ui/view/TagGroup$SavedState;->b:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup;->setTags([Ljava/lang/String;)V

    .line 299
    iget v0, p1, Lpl/jbzd/app/ui/view/TagGroup$SavedState;->c:I

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup;->a(I)Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_2

    .line 301
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/TagGroup$d;->a(Z)V

    .line 303
    :cond_2
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getInputTag()Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getInputTag()Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    iget-object v1, p1, Lpl/jbzd/app/ui/view/TagGroup$SavedState;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/TagGroup$d;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 279
    new-instance v1, Lpl/jbzd/app/ui/view/TagGroup$SavedState;

    invoke-direct {v1, v0}, Lpl/jbzd/app/ui/view/TagGroup$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 280
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lpl/jbzd/app/ui/view/TagGroup$SavedState;->b:[Ljava/lang/String;

    .line 281
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getCheckedTagIndex()I

    move-result v0

    iput v0, v1, Lpl/jbzd/app/ui/view/TagGroup$SavedState;->c:I

    .line 282
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getInputTag()Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->getInputTag()Lpl/jbzd/app/ui/view/TagGroup$d;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/TagGroup$d;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lpl/jbzd/app/ui/view/TagGroup$SavedState;->d:Ljava/lang/String;

    .line 285
    :cond_0
    return-object v1
.end method

.method public setOnTagChangeListener(Lpl/jbzd/app/ui/view/TagGroup$b;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lpl/jbzd/app/ui/view/TagGroup;->t:Lpl/jbzd/app/ui/view/TagGroup$b;

    .line 441
    return-void
.end method

.method public setOnTagClickListener(Lpl/jbzd/app/ui/view/TagGroup$c;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lpl/jbzd/app/ui/view/TagGroup;->u:Lpl/jbzd/app/ui/view/TagGroup$c;

    .line 500
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/TagGroup;->setTags([Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public varargs setTags([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 383
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->removeAllViews()V

    .line 384
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 385
    invoke-virtual {p0, v2}, Lpl/jbzd/app/ui/view/TagGroup;->a(Ljava/lang/CharSequence;)V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/TagGroup;->a:Z

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/TagGroup;->b()V

    .line 391
    :cond_1
    return-void
.end method
