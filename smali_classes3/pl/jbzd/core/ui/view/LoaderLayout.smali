.class public Lpl/jbzd/core/ui/view/LoaderLayout;
.super Landroid/widget/LinearLayout;
.source "LoaderLayout.java"


# instance fields
.field public progressWheel:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public text:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lpl/jbzd/core/ui/view/LoaderLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lpl/jbzd/core/ui/view/LoaderLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lpl/jbzd/core/ui/view/LoaderLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 23

    .prologue
    .line 52
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04009b

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    invoke-static/range {p0 .. p0}, Lbutterknife/ButterKnife;->a(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 55
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 57
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/LoaderLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    const/16 v2, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/LoaderLayout;->setGravity(I)V

    .line 59
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/LoaderLayout;->setOrientation(I)V

    .line 60
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/LoaderLayout;->setClickable(Z)V

    .line 62
    const/16 v20, 0x0

    .line 63
    const/16 v19, 0x0

    .line 64
    const/16 v18, 0x0

    .line 65
    const/16 v17, 0x0

    .line 66
    const/16 v16, 0x0

    .line 67
    const/4 v15, 0x0

    .line 68
    const/4 v14, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v12, 0x0

    .line 71
    const/4 v11, 0x0

    .line 72
    const/4 v10, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v5, 0x0

    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v3, 0x0

    .line 80
    const/4 v2, 0x0

    .line 82
    if-eqz p2, :cond_0

    .line 84
    invoke-virtual/range {p0 .. p0}, Lpl/jbzd/core/ui/view/LoaderLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lpl/jbzd/R$styleable;->LoaderLayout:[I

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v21

    .line 88
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 89
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .line 90
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    .line 91
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .line 92
    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 93
    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 94
    const/4 v2, 0x6

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v14, v2

    .line 95
    const/4 v2, 0x7

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 96
    const/16 v2, 0x8

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 97
    const/16 v2, 0x9

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 98
    const/16 v2, 0xa

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 99
    const/16 v2, 0xb

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 100
    const/16 v2, 0xd

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 101
    const/16 v2, 0xf

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 102
    const/16 v2, 0x11

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 103
    const/16 v2, 0xc

    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 104
    const/16 v2, 0xe

    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 105
    const/16 v2, 0x10

    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 106
    const/16 v2, 0x12

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 109
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    :cond_0
    if-eqz v19, :cond_6

    .line 115
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/LoaderLayout;->setBackgroundColor(I)V

    .line 127
    :cond_1
    :goto_0
    if-eqz v2, :cond_8

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lpl/jbzd/core/ui/view/TextView;->setVisibility(I)V

    .line 181
    :cond_2
    :goto_1
    if-eqz v17, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->progressWheel:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setColor(I)V

    .line 186
    :cond_3
    if-lez v15, :cond_4

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->progressWheel:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-virtual {v2, v15}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setThickness(I)V

    .line 191
    :cond_4
    if-lez v16, :cond_5

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->progressWheel:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-virtual {v2}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 194
    move/from16 v0, v16

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 195
    move/from16 v0, v16

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->progressWheel:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-virtual {v3, v2}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    :cond_5
    return-void

    .line 109
    :catchall_0
    move-exception v2

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 117
    :cond_6
    if-eqz v20, :cond_1

    .line 119
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x10

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/LoaderLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 123
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/LoaderLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 132
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lpl/jbzd/core/ui/view/TextView;->setVisibility(I)V

    .line 134
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_9

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v0, v14}, Lpl/jbzd/core/ui/view/TextView;->setTextSize(IF)V

    .line 138
    :cond_9
    if-eqz v13, :cond_a

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v2}, Lpl/jbzd/core/ui/view/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 142
    :cond_a
    if-eqz v12, :cond_b

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v2}, Lpl/jbzd/core/ui/view/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 146
    :cond_b
    if-eqz v11, :cond_c

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v2}, Lpl/jbzd/core/ui/view/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 150
    :cond_c
    if-eqz v10, :cond_d

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v2}, Lpl/jbzd/core/ui/view/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 155
    :cond_d
    if-eqz v18, :cond_e

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lpl/jbzd/core/ui/view/TextView;->setTextColor(I)V

    .line 160
    :cond_e
    if-eqz v9, :cond_f

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v2, v9}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_f
    if-eqz v8, :cond_10

    if-lez v5, :cond_10

    .line 166
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5}, Lpl/jbzd/core/ui/view/LoaderLayout;->a(Ljava/lang/String;I)V

    .line 170
    :cond_10
    if-eqz v7, :cond_11

    if-lez v4, :cond_11

    .line 171
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Lpl/jbzd/core/ui/view/LoaderLayout;->a(Ljava/lang/String;I)V

    .line 175
    :cond_11
    if-eqz v6, :cond_2

    if-lez v3, :cond_2

    .line 176
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, Lpl/jbzd/core/ui/view/LoaderLayout;->a(Ljava/lang/String;I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 217
    if-nez p2, :cond_2

    .line 218
    iget-object v0, p0, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v0, p1}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_0
    :goto_1
    return-void

    .line 218
    :cond_1
    const-string p1, ""

    goto :goto_0

    .line 221
    :cond_2
    if-lez p2, :cond_0

    .line 225
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpl/jbzd/core/ui/view/LoaderLayout$1;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/core/ui/view/LoaderLayout$1;-><init>(Lpl/jbzd/core/ui/view/LoaderLayout;Ljava/lang/String;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lpl/jbzd/core/ui/view/LoaderLayout;->a(Ljava/lang/String;I)V

    .line 245
    return-void
.end method
