.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$a;,
        Landroid/support/design/widget/TabLayout$c;,
        Landroid/support/design/widget/TabLayout$h;,
        Landroid/support/design/widget/TabLayout$f;,
        Landroid/support/design/widget/TabLayout$d;,
        Landroid/support/design/widget/TabLayout$g;,
        Landroid/support/design/widget/TabLayout$e;,
        Landroid/support/design/widget/TabLayout$b;
    }
.end annotation


# static fields
.field private static final n:Landroid/support/v4/f/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/j$a",
            "<",
            "Landroid/support/design/widget/TabLayout$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/database/DataSetObserver;

.field private B:Landroid/support/design/widget/TabLayout$f;

.field private C:Landroid/support/design/widget/TabLayout$a;

.field private D:Z

.field private final E:Landroid/support/v4/f/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/j$a",
            "<",
            "Landroid/support/design/widget/TabLayout$g;",
            ">;"
        }
    .end annotation
.end field

.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Landroid/content/res/ColorStateList;

.field g:F

.field h:F

.field final i:I

.field j:I

.field k:I

.field l:I

.field m:Landroid/support/v4/view/ViewPager;

.field private final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$e;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/support/design/widget/TabLayout$e;

.field private final q:Landroid/support/design/widget/TabLayout$d;

.field private final r:I

.field private final s:I

.field private final t:I

.field private u:I

.field private v:Landroid/support/design/widget/TabLayout$b;

.field private final w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroid/support/design/widget/TabLayout$b;

.field private y:Landroid/support/design/widget/r;

.field private z:Landroid/support/v4/view/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Landroid/support/v4/f/j$c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/f/j$c;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/TabLayout;->n:Landroid/support/v4/f/j$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 288
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 295
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->o:Ljava/util/ArrayList;

    .line 260
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/design/widget/TabLayout;->j:I

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    .line 284
    new-instance v0, Landroid/support/v4/f/j$b;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/f/j$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->E:Landroid/support/v4/f/j$a;

    .line 297
    invoke-static {p1}, Landroid/support/design/widget/q;->a(Landroid/content/Context;)V

    .line 300
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 303
    new-instance v0, Landroid/support/design/widget/TabLayout$d;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$d;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    .line 304
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v4, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 307
    sget-object v0, Landroid/support/design/R$styleable;->TabLayout:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 310
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorHeight:I

    .line 311
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 310
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$d;->b(I)V

    .line 312
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    sget v2, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$d;->a(I)V

    .line 314
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPadding:I

    .line 315
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->d:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->c:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->b:I

    iput v1, p0, Landroid/support/design/widget/TabLayout;->a:I

    .line 316
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->a:I

    .line 318
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingTop:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->b:I

    .line 320
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->c:I

    .line 322
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->d:I

    .line 325
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v2, Landroid/support/design/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    .line 329
    iget v1, p0, Landroid/support/design/widget/TabLayout;->e:I

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 332
    :try_start_0
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/TabLayout;->g:F

    .line 334
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    .line 345
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 350
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/design/widget/TabLayout;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    .line 353
    :cond_1
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMinWidth:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->r:I

    .line 355
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMaxWidth:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->s:I

    .line 357
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->i:I

    .line 358
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->u:I

    .line 359
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabMode:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->l:I

    .line 360
    sget v1, Landroid/support/design/R$styleable;->TabLayout_tabGravity:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->k:I

    .line 361
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 364
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 365
    sget v1, Landroid/support/design/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/TabLayout;->h:F

    .line 366
    sget v1, Landroid/support/design/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout;->t:I

    .line 369
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->g()V

    .line 370
    return-void

    .line 337
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(IF)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1181
    iget v1, p0, Landroid/support/design/widget/TabLayout;->l:I

    if-nez v1, :cond_1

    .line 1182
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1183
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$d;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    add-int/lit8 v2, p1, 0x1

    .line 1184
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1186
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1187
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1190
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 1192
    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 1194
    invoke-static {p0}, Landroid/support/v4/view/ai;->g(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_4

    add-int/2addr v0, v2

    .line 1198
    :cond_1
    :goto_2
    return v0

    .line 1184
    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_3
    move v1, v0

    .line 1186
    goto :goto_1

    .line 1194
    :cond_4
    sub-int v0, v2, v0

    goto :goto_2
.end method

.method private static a(II)Landroid/content/res/ColorStateList;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 2066
    new-array v0, v1, [[I

    .line 2067
    new-array v1, v1, [I

    .line 2068
    const/4 v2, 0x0

    .line 2070
    sget-object v3, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v0, v2

    .line 2071
    aput p1, v1, v2

    .line 2072
    const/4 v2, 0x1

    .line 2075
    sget-object v3, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v0, v2

    .line 2076
    aput p0, v1, v2

    .line 2079
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private a(Landroid/support/design/widget/TabItem;)V
    .locals 2

    .prologue
    .line 487
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    .line 488
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$e;

    .line 491
    :cond_0
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$e;

    .line 494
    :cond_1
    iget v1, p1, Landroid/support/design/widget/TabItem;->c:I

    if-eqz v1, :cond_2

    .line 495
    iget v1, p1, Landroid/support/design/widget/TabItem;->c:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->a(I)Landroid/support/design/widget/TabLayout$e;

    .line 497
    :cond_2
    invoke-virtual {p1}, Landroid/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 498
    invoke-virtual {p1}, Landroid/support/design/widget/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->b(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$e;

    .line 500
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$e;)V

    .line 501
    return-void
.end method

.method private a(Landroid/support/design/widget/TabLayout$e;I)V
    .locals 3

    .prologue
    .line 940
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$e;->b(I)V

    .line 941
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 943
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 944
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 945
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$e;->b(I)V

    .line 944
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 947
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v4/view/ViewPager;ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 779
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->m:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->B:Landroid/support/design/widget/TabLayout$f;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->m:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->B:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 784
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->C:Landroid/support/design/widget/TabLayout$a;

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->m:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->C:Landroid/support/design/widget/TabLayout$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 789
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Landroid/support/design/widget/TabLayout$b;

    if-eqz v0, :cond_2

    .line 791
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$b;)V

    .line 792
    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->x:Landroid/support/design/widget/TabLayout$b;

    .line 795
    :cond_2
    if-eqz p1, :cond_6

    .line 796
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->m:Landroid/support/v4/view/ViewPager;

    .line 799
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->B:Landroid/support/design/widget/TabLayout$f;

    if-nez v0, :cond_3

    .line 800
    new-instance v0, Landroid/support/design/widget/TabLayout$f;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$f;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->B:Landroid/support/design/widget/TabLayout$f;

    .line 802
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->B:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->a()V

    .line 803
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->B:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$e;)V

    .line 806
    new-instance v0, Landroid/support/design/widget/TabLayout$h;

    invoke-direct {v0, p1}, Landroid/support/design/widget/TabLayout$h;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Landroid/support/design/widget/TabLayout$b;

    .line 807
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    .line 809
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_4

    .line 813
    invoke-virtual {p0, v0, p2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/aa;Z)V

    .line 817
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->C:Landroid/support/design/widget/TabLayout$a;

    if-nez v0, :cond_5

    .line 818
    new-instance v0, Landroid/support/design/widget/TabLayout$a;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$a;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->C:Landroid/support/design/widget/TabLayout$a;

    .line 820
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->C:Landroid/support/design/widget/TabLayout$a;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/TabLayout$a;->a(Z)V

    .line 821
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->C:Landroid/support/design/widget/TabLayout$a;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 824
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TabLayout;->a(IFZ)V

    .line 832
    :goto_0
    iput-boolean p3, p0, Landroid/support/design/widget/TabLayout;->D:Z

    .line 833
    return-void

    .line 828
    :cond_6
    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->m:Landroid/support/v4/view/ViewPager;

    .line 829
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/aa;Z)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 975
    instance-of v0, p1, Landroid/support/design/widget/TabItem;

    if-eqz v0, :cond_0

    .line 976
    check-cast p1, Landroid/support/design/widget/TabItem;

    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabItem;)V

    .line 980
    return-void

    .line 978
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .prologue
    .line 990
    iget v0, p0, Landroid/support/design/widget/TabLayout;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->k:I

    if-nez v0, :cond_0

    .line 991
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 992
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 997
    :goto_0
    return-void

    .line 994
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 995
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private c(Landroid/support/design/widget/TabLayout$e;)Landroid/support/design/widget/TabLayout$g;
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->E:Landroid/support/v4/f/j$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->E:Landroid/support/v4/f/j$a;

    invoke-interface {v0}, Landroid/support/v4/f/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$g;

    .line 930
    :goto_0
    if-nez v0, :cond_0

    .line 931
    new-instance v0, Landroid/support/design/widget/TabLayout$g;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TabLayout$g;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    .line 933
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$g;->a(Landroid/support/design/widget/TabLayout$e;)V

    .line 934
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$g;->setFocusable(Z)V

    .line 935
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$g;->setMinimumWidth(I)V

    .line 936
    return-object v0

    .line 929
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$g;

    .line 1062
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$d;->removeViewAt(I)V

    .line 1063
    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$g;->a()V

    .line 1065
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->E:Landroid/support/v4/f/j$a;

    invoke-interface {v1, v0}, Landroid/support/v4/f/j$a;->a(Ljava/lang/Object;)Z

    .line 1067
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    .line 1068
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 923
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 924
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->h()V

    .line 923
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 926
    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1071
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1095
    :goto_0
    return-void

    .line 1075
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ai;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    .line 1076
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1079
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/design/widget/TabLayout;->a(IFZ)V

    goto :goto_0

    .line 1083
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 1084
    invoke-direct {p0, p1, v1}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v1

    .line 1086
    if-eq v0, v1, :cond_3

    .line 1087
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->f()V

    .line 1089
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/r;

    invoke-virtual {v2, v0, v1}, Landroid/support/design/widget/r;->a(II)V

    .line 1090
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/r;

    invoke-virtual {v0}, Landroid/support/design/widget/r;->a()V

    .line 1094
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    const/16 v1, 0x12c

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/TabLayout$d;->b(II)V

    goto :goto_0
.end method

.method private d(Landroid/support/design/widget/TabLayout$e;)V
    .locals 4

    .prologue
    .line 950
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$g;

    .line 951
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->c()I

    move-result v2

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->e()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/design/widget/TabLayout$d;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 952
    return-void
.end method

.method private e()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 983
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 985
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 986
    return-object v0
.end method

.method private e(Landroid/support/design/widget/TabLayout$e;)V
    .locals 2

    .prologue
    .line 1163
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1164
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$b;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$b;->a(Landroid/support/design/widget/TabLayout$e;)V

    .line 1163
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1166
    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 1098
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/r;

    if-nez v0, :cond_0

    .line 1099
    invoke-static {}, Landroid/support/design/widget/x;->a()Landroid/support/design/widget/r;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/r;

    .line 1100
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/r;

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/r;->a(Landroid/view/animation/Interpolator;)V

    .line 1101
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/r;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/support/design/widget/r;->a(J)V

    .line 1102
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/r;

    new-instance v1, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/r;->a(Landroid/support/design/widget/r$c;)V

    .line 1109
    :cond_0
    return-void
.end method

.method private f(Landroid/support/design/widget/TabLayout$e;)V
    .locals 2

    .prologue
    .line 1169
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1170
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$b;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$b;->b(Landroid/support/design/widget/TabLayout$e;)V

    .line 1169
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1172
    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1202
    .line 1203
    iget v0, p0, Landroid/support/design/widget/TabLayout;->l:I

    if-nez v0, :cond_0

    .line 1205
    iget v0, p0, Landroid/support/design/widget/TabLayout;->u:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->a:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1207
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-static {v2, v0, v1, v1, v1}, Landroid/support/v4/view/ai;->b(Landroid/view/View;IIII)V

    .line 1209
    iget v0, p0, Landroid/support/design/widget/TabLayout;->l:I

    packed-switch v0, :pswitch_data_0

    .line 1218
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->a(Z)V

    .line 1219
    return-void

    .line 1211
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$d;->setGravity(I)V

    goto :goto_1

    .line 1214
    :pswitch_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$d;->setGravity(I)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private g(Landroid/support/design/widget/TabLayout$e;)V
    .locals 2

    .prologue
    .line 1175
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1176
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$b;

    invoke-interface {v0, p1}, Landroid/support/design/widget/TabLayout$b;->c(Landroid/support/design/widget/TabLayout$e;)V

    .line 1175
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1178
    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2083
    .line 2084
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    .line 2085
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    .line 2086
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2087
    const/4 v0, 0x1

    .line 2091
    :goto_1
    if-eqz v0, :cond_1

    const/16 v0, 0x48

    :goto_2
    return v0

    .line 2084
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2091
    :cond_1
    const/16 v0, 0x30

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getScrollPosition()F
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->b()F

    move-result v0

    return v0
.end method

.method private getTabMinWidth()I
    .locals 2

    .prologue
    .line 2095
    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2097
    iget v0, p0, Landroid/support/design/widget/TabLayout;->r:I

    .line 2100
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout;->l:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->t:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTabScrollRange()I
    .locals 3

    .prologue
    .line 879
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$d;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 880
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 879
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private setSelectedTabView(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1117
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->getChildCount()I

    move-result v3

    .line 1118
    if-ge p1, v3, :cond_1

    move v2, v1

    .line 1119
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1120
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1121
    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1119
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1121
    goto :goto_1

    .line 1124
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/support/design/widget/TabLayout$e;
    .locals 2

    .prologue
    .line 563
    sget-object v0, Landroid/support/design/widget/TabLayout;->n:Landroid/support/v4/f/j$a;

    invoke-interface {v0}, Landroid/support/v4/f/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    .line 564
    if-nez v0, :cond_0

    .line 565
    new-instance v0, Landroid/support/design/widget/TabLayout$e;

    invoke-direct {v0}, Landroid/support/design/widget/TabLayout$e;-><init>()V

    .line 567
    :cond_0
    iput-object p0, v0, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    .line 568
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout$e;)Landroid/support/design/widget/TabLayout$g;

    move-result-object v1

    iput-object v1, v0, Landroid/support/design/widget/TabLayout$e;->b:Landroid/support/design/widget/TabLayout$g;

    .line 569
    return-object v0
.end method

.method public a(I)Landroid/support/design/widget/TabLayout$e;
    .locals 1

    .prologue
    .line 586
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    goto :goto_0
.end method

.method public a(IFZ)V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/TabLayout;->a(IFZZ)V

    .line 406
    return-void
.end method

.method a(IFZZ)V
    .locals 3

    .prologue
    .line 410
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 411
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$d;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    if-eqz p4, :cond_2

    .line 417
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v1, p1, p2}, Landroid/support/design/widget/TabLayout$d;->a(IF)V

    .line 421
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/r;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/r;

    invoke-virtual {v1}, Landroid/support/design/widget/r;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/r;

    invoke-virtual {v1}, Landroid/support/design/widget/r;->e()V

    .line 424
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    .line 427
    if-eqz p3, :cond_0

    .line 428
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/TabLayout$b;)V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_0
    return-void
.end method

.method public a(Landroid/support/design/widget/TabLayout$e;)V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$e;Z)V

    .line 444
    return-void
.end method

.method public a(Landroid/support/design/widget/TabLayout$e;IZ)V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p1, Landroid/support/design/widget/TabLayout$e;->a:Landroid/support/design/widget/TabLayout;

    if-eq v0, p0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$e;I)V

    .line 479
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->d(Landroid/support/design/widget/TabLayout$e;)V

    .line 481
    if-eqz p3, :cond_1

    .line 482
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->e()V

    .line 484
    :cond_1
    return-void
.end method

.method public a(Landroid/support/design/widget/TabLayout$e;Z)V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$e;IZ)V

    .line 465
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;Z)V
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ViewPager;ZZ)V

    .line 775
    return-void
.end method

.method a(Landroid/support/v4/view/aa;Z)V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/support/v4/view/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/support/v4/view/aa;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aa;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 889
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/support/v4/view/aa;

    .line 891
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 893
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 894
    new-instance v0, Landroid/support/design/widget/TabLayout$c;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$c;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/database/DataSetObserver;

    .line 896
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->A:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/aa;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 900
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->c()V

    .line 901
    return-void
.end method

.method a(Z)V
    .locals 3

    .prologue
    .line 1222
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1223
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1224
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1225
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1226
    if-eqz p1, :cond_0

    .line 1227
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1222
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1230
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 956
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    .line 957
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 961
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    .line 962
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 971
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    .line 972
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 966
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    .line 967
    return-void
.end method

.method b(I)I
    .locals 2

    .prologue
    .line 1000
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 643
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$d;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 644
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->c(I)V

    .line 643
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 647
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$e;

    .line 649
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 650
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->i()V

    .line 651
    sget-object v2, Landroid/support/design/widget/TabLayout;->n:Landroid/support/v4/f/j$a;

    invoke-interface {v2, v0}, Landroid/support/v4/f/j$a;->a(Ljava/lang/Object;)Z

    goto :goto_1

    .line 654
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->p:Landroid/support/design/widget/TabLayout$e;

    .line 655
    return-void
.end method

.method public b(Landroid/support/design/widget/TabLayout$b;)V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 545
    return-void
.end method

.method b(Landroid/support/design/widget/TabLayout$e;)V
    .locals 1

    .prologue
    .line 1127
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$e;Z)V

    .line 1128
    return-void
.end method

.method b(Landroid/support/design/widget/TabLayout$e;Z)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1131
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->p:Landroid/support/design/widget/TabLayout$e;

    .line 1133
    if-ne v2, p1, :cond_1

    .line 1134
    if-eqz v2, :cond_0

    .line 1135
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->g(Landroid/support/design/widget/TabLayout$e;)V

    .line 1136
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->c()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->d(I)V

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$e;->c()I

    move-result v0

    .line 1140
    :goto_1
    if-eqz p2, :cond_3

    .line 1141
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$e;->c()I

    move-result v3

    if-ne v3, v1, :cond_6

    :cond_2
    if-eq v0, v1, :cond_6

    .line 1144
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Landroid/support/design/widget/TabLayout;->a(IFZ)V

    .line 1148
    :goto_2
    if-eq v0, v1, :cond_3

    .line 1149
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 1152
    :cond_3
    if-eqz v2, :cond_4

    .line 1153
    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->f(Landroid/support/design/widget/TabLayout$e;)V

    .line 1155
    :cond_4
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->p:Landroid/support/design/widget/TabLayout$e;

    .line 1156
    if-eqz p1, :cond_0

    .line 1157
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->e(Landroid/support/design/widget/TabLayout$e;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1139
    goto :goto_1

    .line 1146
    :cond_6
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->d(I)V

    goto :goto_2
.end method

.method c()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 904
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->b()V

    .line 906
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/support/v4/view/aa;

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/support/v4/view/aa;

    invoke-virtual {v0}, Landroid/support/v4/view/aa;->getCount()I

    move-result v2

    move v0, v1

    .line 908
    :goto_0
    if-ge v0, v2, :cond_0

    .line 909
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$e;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->z:Landroid/support/v4/view/aa;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/aa;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$e;->a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$e;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$e;Z)V

    .line 908
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 913
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->m:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    if-lez v2, :cond_1

    .line 914
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->m:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 915
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 916
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$e;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$e;)V

    .line 920
    :cond_1
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 2109
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->p:Landroid/support/design/widget/TabLayout$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->p:Landroid/support/design/widget/TabLayout$e;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$e;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Landroid/support/design/widget/TabLayout;->k:I

    return v0
.end method

.method getTabMaxWidth()I
    .locals 1

    .prologue
    .line 2113
    iget v0, p0, Landroid/support/design/widget/TabLayout;->j:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Landroid/support/design/widget/TabLayout;->l:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 853
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 855
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->m:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 858
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 859
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 862
    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0, v2, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ViewPager;ZZ)V

    .line 865
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 869
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 871
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->D:Z

    if-eqz v0, :cond_0

    .line 873
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 874
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TabLayout;->D:Z

    .line 876
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1007
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    .line 1008
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1019
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1020
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1023
    iget v3, p0, Landroid/support/design/widget/TabLayout;->s:I

    if-lez v3, :cond_2

    iget v0, p0, Landroid/support/design/widget/TabLayout;->s:I

    .line 1025
    :goto_1
    iput v0, p0, Landroid/support/design/widget/TabLayout;->j:I

    .line 1029
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1031
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1034
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1037
    iget v0, p0, Landroid/support/design/widget/TabLayout;->l:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 1049
    :goto_2
    if-eqz v0, :cond_1

    .line 1051
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v0

    .line 1052
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1051
    invoke-static {p2, v0, v1}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1054
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v1

    .line 1053
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1055
    invoke-virtual {v3, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1058
    :cond_1
    return-void

    .line 1011
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1010
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1015
    :sswitch_1
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1023
    :cond_2
    const/16 v3, 0x38

    .line 1025
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_1

    .line 1041
    :pswitch_0
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-ge v0, v4, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    .line 1045
    :pswitch_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v4

    if-eq v0, v4, :cond_4

    :goto_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    .line 1008
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 1037
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/TabLayout$b;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/TabLayout$b;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$b;)V

    .line 516
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->v:Landroid/support/design/widget/TabLayout$b;

    .line 517
    if-eqz p1, :cond_1

    .line 518
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$b;)V

    .line 520
    :cond_1
    return-void
.end method

.method setScrollAnimatorListener(Landroid/support/design/widget/r$a;)V
    .locals 1

    .prologue
    .line 1112
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->f()V

    .line 1113
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/support/design/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/r;->a(Landroid/support/design/widget/r$a;)V

    .line 1114
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$d;->a(I)V

    .line 381
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->q:Landroid/support/design/widget/TabLayout$d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$d;->b(I)V

    .line 392
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .prologue
    .line 697
    iget v0, p0, Landroid/support/design/widget/TabLayout;->k:I

    if-eq v0, p1, :cond_0

    .line 698
    iput p1, p0, Landroid/support/design/widget/TabLayout;->k:I

    .line 699
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->g()V

    .line 701
    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Landroid/support/design/widget/TabLayout;->l:I

    if-eq p1, v0, :cond_0

    .line 674
    iput p1, p0, Landroid/support/design/widget/TabLayout;->l:I

    .line 675
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->g()V

    .line 677
    :cond_0
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 720
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->f:Landroid/content/res/ColorStateList;

    .line 721
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->d()V

    .line 723
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/aa;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 842
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/aa;Z)V

    .line 843
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ViewPager;Z)V

    .line 753
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 848
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
