.class public Landroid/support/v7/widget/aw;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/support/v7/widget/u;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
.end annotation


# instance fields
.field a:Landroid/support/v7/widget/Toolbar;

.field b:Ljava/lang/CharSequence;

.field c:Landroid/view/Window$Callback;

.field d:Z

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:Landroid/support/v7/widget/ActionMenuPresenter;

.field private o:I

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 2

    .prologue
    .line 95
    sget v0, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I

    sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_ab_back_material:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/aw;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v1, p0, Landroid/support/v7/widget/aw;->o:I

    .line 91
    iput v1, p0, Landroid/support/v7/widget/aw;->p:I

    .line 101
    iput-object p1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    .line 102
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/aw;->b:Ljava/lang/CharSequence;

    .line 103
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/aw;->l:Ljava/lang/CharSequence;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/aw;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/aw;->k:Z

    .line 105
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/aw;->j:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-static {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/av;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/av;

    move-result-object v0

    .line 108
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/aw;->q:Landroid/graphics/drawable/Drawable;

    .line 109
    if-eqz p2, :cond_d

    .line 110
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/aw;->b(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/aw;->c(Ljava/lang/CharSequence;)V

    .line 120
    :cond_1
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_2

    .line 122
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/aw;->c(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_2
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 126
    if-eqz v2, :cond_3

    .line 127
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/aw;->a(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/aw;->j:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/aw;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 130
    iget-object v2, p0, Landroid/support/v7/widget/aw;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/aw;->b(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_4
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/av;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/aw;->c(I)V

    .line 134
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/av;->g(II)I

    move-result v2

    .line 136
    if-eqz v2, :cond_5

    .line 137
    iget-object v3, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/aw;->a(Landroid/view/View;)V

    .line 139
    iget v2, p0, Landroid/support/v7/widget/aw;->e:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/aw;->c(I)V

    .line 142
    :cond_5
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/av;->f(II)I

    move-result v2

    .line 143
    if-lez v2, :cond_6

    .line 144
    iget-object v3, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 145
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    iget-object v2, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    :cond_6
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    invoke-virtual {v0, v2, v5}, Landroid/support/v7/widget/av;->d(II)I

    move-result v2

    .line 151
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {v0, v3, v5}, Landroid/support/v7/widget/av;->d(II)I

    move-result v3

    .line 153
    if-gez v2, :cond_7

    if-ltz v3, :cond_8

    .line 154
    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 155
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 154
    invoke-virtual {v4, v2, v3}, Landroid/support/v7/widget/Toolbar;->a(II)V

    .line 158
    :cond_8
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/av;->g(II)I

    move-result v2

    .line 159
    if-eqz v2, :cond_9

    .line 160
    iget-object v3, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;I)V

    .line 163
    :cond_9
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/av;->g(II)I

    move-result v2

    .line 165
    if-eqz v2, :cond_a

    .line 166
    iget-object v3, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/content/Context;I)V

    .line 169
    :cond_a
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/av;->g(II)I

    move-result v1

    .line 170
    if-eqz v1, :cond_b

    .line 171
    iget-object v2, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 176
    :cond_b
    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/widget/av;->a()V

    .line 178
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/aw;->g(I)V

    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/aw;->m:Ljava/lang/CharSequence;

    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/widget/aw$1;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/aw$1;-><init>(Landroid/support/v7/widget/aw;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void

    :cond_c
    move v0, v1

    .line 104
    goto/16 :goto_0

    .line 174
    :cond_d
    invoke-direct {p0}, Landroid/support/v7/widget/aw;->s()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/aw;->e:I

    goto :goto_1
.end method

.method private e(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 259
    iput-object p1, p0, Landroid/support/v7/widget/aw;->b:Ljava/lang/CharSequence;

    .line 260
    iget v0, p0, Landroid/support/v7/widget/aw;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    :cond_0
    return-void
.end method

.method private s()I
    .locals 2

    .prologue
    .line 205
    const/16 v0, 0xb

    .line 207
    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    const/16 v0, 0xf

    .line 209
    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/aw;->q:Landroid/graphics/drawable/Drawable;

    .line 211
    :cond_0
    return v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    iget v1, p0, Landroid/support/v7/widget/aw;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 323
    iget v0, p0, Landroid/support/v7/widget/aw;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Landroid/support/v7/widget/aw;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/aw;->i:Landroid/graphics/drawable/Drawable;

    .line 329
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 330
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aw;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 326
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/aw;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 610
    iget v0, p0, Landroid/support/v7/widget/aw;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 611
    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/widget/aw;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aw;->j:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 615
    :goto_1
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aw;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 613
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private v()V
    .locals 2

    .prologue
    .line 629
    iget v0, p0, Landroid/support/v7/widget/aw;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Landroid/support/v7/widget/aw;->m:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/widget/aw;->p:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/aw;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a(IJ)Landroid/support/v4/view/az;
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ai;->r(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v1

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 566
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/view/az;->a(F)Landroid/support/v4/view/az;

    move-result-object v0

    .line 567
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/az;->a(J)Landroid/support/v4/view/az;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/aw$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/aw$2;-><init>(Landroid/support/v7/widget/aw;I)V

    .line 568
    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    move-result-object v0

    return-object v0

    .line 565
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 300
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aw;->a(Landroid/graphics/drawable/Drawable;)V

    .line 301
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Landroid/support/v7/widget/aw;->h:Landroid/graphics/drawable/Drawable;

    .line 306
    invoke-direct {p0}, Landroid/support/v7/widget/aw;->t()V

    .line 307
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V

    .line 672
    return-void
.end method

.method public a(Landroid/support/v7/widget/an;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 421
    iget-object v0, p0, Landroid/support/v7/widget/aw;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aw;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/aw;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 424
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/aw;->f:Landroid/view/View;

    .line 425
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/aw;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 426
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/aw;->f:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 427
    iget-object v0, p0, Landroid/support/v7/widget/aw;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 428
    iput v3, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->width:I

    .line 429
    iput v3, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->height:I

    .line 430
    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    .line 431
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/an;->setAllowCollapse(Z)V

    .line 433
    :cond_1
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/aw;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/aw;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 366
    iget-object v0, p0, Landroid/support/v7/widget/aw;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v1, Landroid/support/v7/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(I)V

    .line 368
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aw;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/view/menu/o$a;)V

    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/widget/aw;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/view/menu/h;Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 370
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Landroid/support/v7/widget/aw;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/aw;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/aw;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 542
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/aw;->g:Landroid/view/View;

    .line 543
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/aw;->e:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/aw;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 546
    :cond_1
    return-void
.end method

.method public a(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Landroid/support/v7/widget/aw;->c:Landroid/view/Window$Callback;

    .line 237
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Landroid/support/v7/widget/aw;->k:Z

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aw;->e(Ljava/lang/CharSequence;)V

    .line 245
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    .line 448
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 311
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aw;->c(Landroid/graphics/drawable/Drawable;)V

    .line 312
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Landroid/support/v7/widget/aw;->j:Landroid/graphics/drawable/Drawable;

    .line 593
    invoke-direct {p0}, Landroid/support/v7/widget/aw;->u()V

    .line 594
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/aw;->k:Z

    .line 255
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aw;->e(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    iget v0, p0, Landroid/support/v7/widget/aw;->e:I

    .line 385
    xor-int/2addr v0, p1

    .line 386
    iput p1, p0, Landroid/support/v7/widget/aw;->e:I

    .line 387
    if-eqz v0, :cond_4

    .line 388
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 389
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 390
    invoke-direct {p0}, Landroid/support/v7/widget/aw;->v()V

    .line 392
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/aw;->u()V

    .line 395
    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    .line 396
    invoke-direct {p0}, Landroid/support/v7/widget/aw;->t()V

    .line 399
    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 400
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 401
    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/aw;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/aw;->l:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 409
    :cond_3
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/aw;->g:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 410
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 411
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/aw;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 417
    :cond_4
    :goto_1
    return-void

    .line 404
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 413
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/aw;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Landroid/support/v7/widget/aw;->i:Landroid/graphics/drawable/Drawable;

    .line 317
    invoke-direct {p0}, Landroid/support/v7/widget/aw;->t()V

    .line 318
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Landroid/support/v7/widget/aw;->l:Ljava/lang/CharSequence;

    .line 273
    iget v0, p0, Landroid/support/v7/widget/aw;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->g()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->h()V

    .line 232
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 598
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aw;->b(Landroid/graphics/drawable/Drawable;)V

    .line 599
    return-void

    .line 598
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Landroid/support/v7/widget/aw;->m:Ljava/lang/CharSequence;

    .line 620
    invoke-direct {p0}, Landroid/support/v7/widget/aw;->v()V

    .line 621
    return-void
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 625
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aw;->d(Ljava/lang/CharSequence;)V

    .line 626
    return-void

    .line 625
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 661
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 285
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Landroid/support/v7/widget/aw;->p:I

    if-ne p1, v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/aw;->p:I

    .line 199
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget v0, p0, Landroid/support/v7/widget/aw;->p:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aw;->e(I)V

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->d()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->e()Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/aw;->d:Z

    .line 360
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->f()V

    .line 375
    return-void
.end method

.method public o()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Landroid/support/v7/widget/aw;->e:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Landroid/support/v7/widget/aw;->o:I

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public r()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method
