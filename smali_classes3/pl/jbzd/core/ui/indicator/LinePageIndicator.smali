.class public Lpl/jbzd/core/ui/indicator/LinePageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "LinePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;,
        Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;,
        Lpl/jbzd/core/ui/indicator/LinePageIndicator$a;
    }
.end annotation


# static fields
.field private static final b:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field public a:Landroid/support/v4/view/ViewPager$e;

.field private c:Landroid/widget/LinearLayout$LayoutParams;

.field private d:Landroid/widget/LinearLayout$LayoutParams;

.field private final e:Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:I

.field private i:I

.field private j:F

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/high16 v2, 0x1a000000

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;-><init>(Lpl/jbzd/core/ui/indicator/LinePageIndicator;Lpl/jbzd/core/ui/indicator/LinePageIndicator$1;)V

    iput-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->e:Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;

    .line 54
    iput v4, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->i:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->j:F

    .line 61
    const v0, -0x99999a

    iput v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->n:I

    .line 62
    iput v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->o:I

    .line 63
    iput v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->p:I

    .line 64
    iput v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->q:I

    .line 66
    iput-boolean v4, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->r:Z

    .line 67
    iput-boolean v3, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->s:Z

    .line 69
    const/16 v0, 0x34

    iput v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->t:I

    .line 70
    const/16 v0, 0x8

    iput v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->u:I

    .line 71
    iput v5, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->v:I

    .line 72
    const/16 v0, 0xc

    iput v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->w:I

    .line 73
    const/16 v0, 0x18

    iput v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->x:I

    .line 74
    iput v3, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->y:I

    .line 76
    const/16 v0, 0xc

    iput v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->z:I

    .line 77
    const v0, -0x99999a

    iput v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->A:I

    .line 79
    iput v4, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->B:I

    .line 81
    const v0, 0x7f020061

    iput v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->C:I

    .line 94
    invoke-virtual {p0, v3}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->setFillViewport(Z)V

    .line 95
    invoke-virtual {p0, v4}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->setWillNotDraw(Z)V

    .line 97
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->f:Landroid/widget/LinearLayout;

    .line 98
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->f:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v5}, Lpl/jbzd/core/a/a;->a(I)I

    move-result v2

    invoke-direct {v1, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->addView(Landroid/view/View;)V

    .line 102
    invoke-virtual {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 104
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->t:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->t:I

    .line 105
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->u:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->u:I

    .line 106
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->v:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->v:I

    .line 107
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->w:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->w:I

    .line 108
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->x:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->x:I

    .line 109
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->y:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->y:I

    .line 110
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->z:I

    int-to-float v1, v1

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->z:I

    .line 114
    sget-object v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->z:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->z:I

    .line 117
    const/high16 v1, -0x10000

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->A:I

    .line 119
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    sget-object v0, Lpl/jbzd/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    const v1, 0x7f0f0073

    invoke-static {v1, p1}, Lpl/jbzd/core/a/a;->b(ILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->o:I

    .line 126
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->n:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->n:I

    .line 127
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->p:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->p:I

    .line 128
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->q:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->q:I

    .line 129
    const/4 v1, 0x3

    iget v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->u:I

    .line 130
    const/4 v1, 0x4

    iget v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->v:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->v:I

    .line 131
    const/4 v1, 0x5

    iget v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->w:I

    .line 132
    const/4 v1, 0x6

    iget v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->x:I

    .line 133
    const/16 v1, 0x8

    iget v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->C:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->C:I

    .line 134
    const/16 v1, 0x9

    iget-boolean v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->r:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->r:Z

    .line 135
    const/4 v1, 0x7

    iget v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->t:I

    .line 136
    const/16 v1, 0xa

    iget-boolean v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->s:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->s:Z

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->k:Landroid/graphics/Paint;

    .line 141
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->l:Landroid/graphics/Paint;

    .line 145
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->l:Landroid/graphics/Paint;

    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->m:Landroid/graphics/Paint;

    .line 149
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 160
    return-void
.end method

.method static synthetic a(Lpl/jbzd/core/ui/indicator/LinePageIndicator;F)F
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->j:F

    return p1
.end method

.method static synthetic a(Lpl/jbzd/core/ui/indicator/LinePageIndicator;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->i:I

    return p1
.end method

.method static synthetic a(Lpl/jbzd/core/ui/indicator/LinePageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 220
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 221
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 223
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 224
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-direct {p0, p1, v0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(ILandroid/view/View;)V

    .line 227
    return-void
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 232
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 234
    invoke-direct {p0, p1, v0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(ILandroid/view/View;)V

    .line 236
    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 240
    new-instance v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$2;

    invoke-direct {v0, p0, p1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator$2;-><init>(Lpl/jbzd/core/ui/indicator/LinePageIndicator;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->f:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->d:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 249
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->c:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method static synthetic a(Lpl/jbzd/core/ui/indicator/LinePageIndicator;II)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->b(II)V

    return-void
.end method

.method static synthetic b(Lpl/jbzd/core/ui/indicator/LinePageIndicator;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->i:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 253
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->h:I

    if-ge v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 257
    iget v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->C:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    return-void
.end method

.method private b(II)V
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->h:I

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 270
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 271
    :cond_2
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->t:I

    sub-int/2addr v0, v1

    .line 274
    :cond_3
    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->B:I

    if-eq v0, v1, :cond_0

    .line 275
    iput v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->B:I

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->scrollTo(II)V

    goto :goto_0
.end method

.method static synthetic c(Lpl/jbzd/core/ui/indicator/LinePageIndicator;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 184
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/aa;->getCount()I

    move-result v0

    iput v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->h:I

    .line 186
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->h:I

    if-ge v1, v0, :cond_1

    .line 188
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v0

    instance-of v0, v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$a;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$a;

    invoke-interface {v0, v1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator$a;->a(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(II)V

    .line 186
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 191
    :cond_0
    invoke-direct {p0, v1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(I)V

    goto :goto_1

    .line 196
    :cond_1
    invoke-direct {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->b()V

    .line 198
    invoke-virtual {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lpl/jbzd/core/ui/indicator/LinePageIndicator$1;

    invoke-direct {v1, p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator$1;-><init>(Lpl/jbzd/core/ui/indicator/LinePageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 216
    return-void
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->w:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->A:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->z:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 285
    invoke-virtual {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->h:I

    if-nez v0, :cond_1

    .line 328
    :cond_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->getHeight()I

    move-result v8

    .line 293
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->k:Landroid/graphics/Paint;

    iget v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->n:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->f:Landroid/widget/LinearLayout;

    iget v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->i:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    .line 300
    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->j:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->i:I

    iget v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->h:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 302
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->f:Landroid/widget/LinearLayout;

    iget v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    .line 305
    iget v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->j:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget v4, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->j:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v3

    add-float v3, v0, v2

    .line 308
    :cond_2
    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->u:I

    sub-int v0, v8, v0

    int-to-float v2, v0

    int-to-float v4, v8

    iget-object v5, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 311
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->m:Landroid/graphics/Paint;

    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->o:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->w:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/core/a/a;->b(Landroid/content/Context;)I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->w:I

    sub-int v0, v8, v0

    int-to-float v6, v0

    iget-object v7, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->m:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 323
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->l:Landroid/graphics/Paint;

    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->h:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 325
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->w:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->w:I

    sub-int v0, v8, v0

    int-to-float v4, v0

    iget-object v5, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 324
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 400
    check-cast p1, Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;

    .line 401
    invoke-virtual {p1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 402
    iget v0, p1, Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;->a:I

    iput v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->i:I

    .line 403
    invoke-virtual {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->requestLayout()V

    .line 404
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 408
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 409
    new-instance v1, Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 410
    iget v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->i:I

    iput v0, v1, Lpl/jbzd/core/ui/indicator/LinePageIndicator$SavedState;->a:I

    .line 411
    return-object v1
.end method

.method public setDividerPadding(I)V
    .locals 0

    .prologue
    .line 368
    iput p1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->w:I

    .line 369
    invoke-virtual {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->invalidate()V

    .line 370
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .prologue
    .line 390
    iput p1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->A:I

    .line 391
    invoke-direct {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->b()V

    .line 392
    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .prologue
    .line 381
    iput p1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->z:I

    .line 382
    invoke-direct {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->b()V

    .line 383
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 4

    .prologue
    .line 163
    iput-object p1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->g:Landroid/support/v4/view/ViewPager;

    .line 165
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/aa;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 171
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lpl/jbzd/core/a/a;->b(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/aa;->getCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 175
    :cond_1
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->e:Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 177
    invoke-virtual {p0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a()V

    .line 178
    return-void
.end method
