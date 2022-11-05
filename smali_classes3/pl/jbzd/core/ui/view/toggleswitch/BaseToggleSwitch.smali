.class public abstract Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;
.super Landroid/widget/LinearLayout;
.source "BaseToggleSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch$a;
    }
.end annotation


# instance fields
.field private a:Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch$a;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:F

.field private j:Landroid/view/LayoutInflater;

.field private k:Landroid/widget/LinearLayout;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->a:Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch$a;

    .line 64
    if-eqz p2, :cond_2

    .line 65
    sget-object v0, Lpl/jbzd/R$styleable;->ToggleSwitchOptions:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 68
    :try_start_0
    iput-object p1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->m:Landroid/content/Context;

    .line 70
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->j:Landroid/view/LayoutInflater;

    .line 71
    iget-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->j:Landroid/view/LayoutInflater;

    const v2, 0x7f04009d

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    const v0, 0x7f1101ec

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->k:Landroid/widget/LinearLayout;

    .line 75
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    const/4 v4, 0x5

    const v5, 0x1060013

    invoke-static {p1, v5}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->b:I

    .line 80
    const/4 v4, 0x6

    const v5, 0x106000b

    invoke-static {p1, v5}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->c:I

    .line 81
    const/4 v4, 0x7

    const v5, 0x106000b

    invoke-static {p1, v5}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->d:I

    .line 82
    const/16 v4, 0x8

    const v5, 0x106000c

    invoke-static {p1, v5}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->e:I

    .line 83
    const/16 v4, 0x9

    const v5, 0x106000c

    invoke-static {p1, v5}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->f:I

    .line 84
    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static {v5}, Lpl/jbzd/core/a/a;->a(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->g:I

    .line 85
    const/4 v4, 0x1

    const/16 v5, 0x40

    invoke-static {v5}, Lpl/jbzd/core/a/a;->a(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->i:F

    .line 86
    const/16 v4, 0xa

    const/4 v5, 0x4

    invoke-static {v5}, Lpl/jbzd/core/a/a;->a(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->h:F

    .line 88
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->l:Ljava/util/ArrayList;

    .line 91
    iget-object v4, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    :cond_2
    return-void

    .line 98
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(Lpl/jbzd/core/ui/view/toggleswitch/a;)Landroid/graphics/drawable/shapes/RoundRectShape;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/16 v1, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 199
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->b(Lpl/jbzd/core/ui/view/toggleswitch/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-array v1, v1, [F

    iget v2, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->h:F

    aput v2, v1, v3

    iget v2, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->h:F

    aput v2, v1, v6

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    const/4 v2, 0x4

    aput v4, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->h:F

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->h:F

    aput v3, v1, v2

    invoke-direct {v0, v1, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 210
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->c(Lpl/jbzd/core/ui/view/toggleswitch/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-array v1, v1, [F

    aput v4, v1, v3

    aput v4, v1, v6

    const/4 v2, 0x2

    iget v3, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->h:F

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->h:F

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->h:F

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->h:F

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v4, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    invoke-direct {v0, v1, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    goto :goto_0

    .line 210
    :cond_1
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 177
    new-instance v0, Lpl/jbzd/core/ui/view/toggleswitch/a;

    iget-object v1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lpl/jbzd/core/ui/view/toggleswitch/a;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/toggleswitch/a;->b()Landroid/widget/TextView;

    move-result-object v1

    .line 180
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const/4 v2, 0x0

    iget v3, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->g:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 182
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->i:F

    float-to-int v3, v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    iget v3, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->i:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 184
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/toggleswitch/a;->c()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->f:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 188
    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/toggleswitch/a;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->i:F

    float-to-int v2, v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    iget v2, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->i:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_1

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 192
    :cond_1
    iget-object v2, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/toggleswitch/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->b(I)V

    .line 196
    return-void
.end method

.method private b(Lpl/jbzd/core/ui/view/toggleswitch/a;)Z
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/toggleswitch/a;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lpl/jbzd/core/ui/view/toggleswitch/a;)Z
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 300
    iget-object v1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/toggleswitch/a;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    invoke-direct {p0, v0}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->d(I)Lpl/jbzd/core/ui/view/toggleswitch/a;

    move-result-object v0

    iget v1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->b:I

    iget v2, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->c:I

    invoke-virtual {p0, v0, v1, v2}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->a(Lpl/jbzd/core/ui/view/toggleswitch/a;II)V

    .line 173
    return-void
.end method

.method protected a(Lpl/jbzd/core/ui/view/toggleswitch/a;II)V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->a(Lpl/jbzd/core/ui/view/toggleswitch/a;)Landroid/graphics/drawable/shapes/RoundRectShape;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 263
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/toggleswitch/a;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    invoke-virtual {p1}, Lpl/jbzd/core/ui/view/toggleswitch/a;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 226
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 227
    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->b(I)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method protected b(I)V
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->d(I)Lpl/jbzd/core/ui/view/toggleswitch/a;

    move-result-object v0

    iget v1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->d:I

    iget v2, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->e:I

    invoke-virtual {p0, v0, v1, v2}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->a(Lpl/jbzd/core/ui/view/toggleswitch/a;II)V

    .line 223
    return-void
.end method

.method protected abstract c(I)Z
.end method

.method protected d(I)Lpl/jbzd/core/ui/view/toggleswitch/a;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lpl/jbzd/core/ui/view/toggleswitch/a;

    iget-object v1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lpl/jbzd/core/ui/view/toggleswitch/a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected abstract e(I)V
.end method

.method public f(I)V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->a:Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch$a;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->a:Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch$a;

    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->c(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch$a;->a(IZ)V

    .line 283
    :cond_0
    return-void
.end method

.method public getActiveBgColor()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->b:I

    return v0
.end method

.method public getActiveTextColor()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->c:I

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->h:F

    return v0
.end method

.method public getInactiveBgColor()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->d:I

    return v0
.end method

.method public getInactiveTextColor()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->e:I

    return v0
.end method

.method protected getNumButtons()I
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->getToggleSwitchesContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getSeparatorColor()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->f:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->g:I

    return v0
.end method

.method protected getToggleSwitchesContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getToggleWidth()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->i:F

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 255
    iget-object v1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 256
    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->e(I)V

    .line 257
    return-void
.end method

.method public setActiveBgColor(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->b:I

    .line 111
    return-void
.end method

.method public setActiveTextColor(I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->c:I

    .line 119
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->h:F

    .line 159
    return-void
.end method

.method public setInactiveBgColor(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->d:I

    .line 127
    return-void
.end method

.method public setInactiveTextColor(I)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->e:I

    .line 135
    return-void
.end method

.method public setLabels(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The list of labels must contains at least 2 elements"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    iput-object p1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->l:Ljava/util/ArrayList;

    .line 272
    iget-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 273
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->a()V

    .line 274
    return-void
.end method

.method public setOnToggleSwitchChangeListener(Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch$a;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->a:Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch$a;

    .line 278
    return-void
.end method

.method public setSeparatorColor(I)V
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->f:I

    .line 143
    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .prologue
    .line 150
    iput p1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->g:I

    .line 151
    return-void
.end method

.method public setToggleWidth(F)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->i:F

    .line 167
    return-void
.end method
