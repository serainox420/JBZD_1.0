.class public Lcom/flurry/sdk/gr;
.super Lcom/flurry/sdk/gv;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I


# instance fields
.field a:Landroid/widget/ImageButton;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Lcom/flurry/sdk/gv$b;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/ImageButton;

.field private k:Lcom/flurry/sdk/hn;

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/flurry/sdk/gr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    .line 36
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/gr;->c:I

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/gr;->d:I

    .line 38
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/gr;->e:I

    .line 39
    const/16 v0, 0x23

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/gr;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/gv$b;)V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v4, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gv;-><init>(Landroid/content/Context;)V

    .line 47
    iput v6, p0, Lcom/flurry/sdk/gr;->l:I

    .line 48
    iput v6, p0, Lcom/flurry/sdk/gr;->m:I

    .line 1128
    if-eqz p1, :cond_0

    .line 1133
    iput-object p2, p0, Lcom/flurry/sdk/gr;->h:Lcom/flurry/sdk/gv$b;

    .line 1153
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update initLayout Video: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1155
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    .line 1156
    iget-object v0, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1159
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1160
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1161
    iget-object v1, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    new-instance v0, Lcom/flurry/sdk/hi;

    invoke-direct {v0}, Lcom/flurry/sdk/hi;-><init>()V

    .line 1164
    invoke-virtual {v0}, Lcom/flurry/sdk/hi;->g()V

    .line 1274
    iget-object v1, v0, Lcom/flurry/sdk/hi;->a:Landroid/graphics/Bitmap;

    .line 2176
    new-instance v2, Landroid/widget/ImageButton;

    invoke-direct {v2, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/gr;->a:Landroid/widget/ImageButton;

    .line 2177
    iget-object v2, p0, Lcom/flurry/sdk/gr;->a:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 2178
    iget-object v2, p0, Lcom/flurry/sdk/gr;->a:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2180
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2181
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2182
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 2183
    const/16 v2, 0xb2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 2184
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 2185
    iget-object v2, p0, Lcom/flurry/sdk/gr;->a:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2190
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/gr;->a:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2191
    iget-object v1, p0, Lcom/flurry/sdk/gr;->a:Landroid/widget/ImageButton;

    new-instance v2, Lcom/flurry/sdk/gr$2;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/gr$2;-><init>(Lcom/flurry/sdk/gr;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2200
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2201
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2202
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2203
    sget v2, Lcom/flurry/sdk/gr;->e:I

    sget v3, Lcom/flurry/sdk/gr;->e:I

    sget v4, Lcom/flurry/sdk/gr;->e:I

    sget v5, Lcom/flurry/sdk/gr;->e:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2206
    iget-object v2, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gr;->a:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2210
    new-instance v1, Lcom/flurry/sdk/hn;

    sget v2, Lcom/flurry/sdk/gr;->f:I

    sget v3, Lcom/flurry/sdk/gr;->f:I

    invoke-direct {v1, p1, v2, v3}, Lcom/flurry/sdk/hn;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/flurry/sdk/gr;->k:Lcom/flurry/sdk/hn;

    .line 2211
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2212
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2213
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2214
    sget v2, Lcom/flurry/sdk/gr;->d:I

    sget v3, Lcom/flurry/sdk/gr;->d:I

    sget v4, Lcom/flurry/sdk/gr;->d:I

    sget v5, Lcom/flurry/sdk/gr;->d:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2215
    iget-object v2, p0, Lcom/flurry/sdk/gr;->k:Lcom/flurry/sdk/hn;

    .line 3110
    iget-object v2, v2, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    .line 2215
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2216
    iget-object v2, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gr;->k:Lcom/flurry/sdk/hn;

    .line 4110
    iget-object v3, v3, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    .line 2216
    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4286
    iget-object v1, v0, Lcom/flurry/sdk/hi;->c:Landroid/graphics/Bitmap;

    .line 5220
    new-instance v2, Landroid/widget/ImageButton;

    invoke-direct {v2, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/gr;->j:Landroid/widget/ImageButton;

    .line 5221
    iget-object v2, p0, Lcom/flurry/sdk/gr;->j:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 5222
    iget-object v2, p0, Lcom/flurry/sdk/gr;->j:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 5223
    iget-object v2, p0, Lcom/flurry/sdk/gr;->j:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5224
    iget-object v1, p0, Lcom/flurry/sdk/gr;->j:Landroid/widget/ImageButton;

    new-instance v2, Lcom/flurry/sdk/gr$3;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/gr$3;-><init>(Lcom/flurry/sdk/gr;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5232
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5233
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5234
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5235
    sget v2, Lcom/flurry/sdk/gr;->c:I

    sget v3, Lcom/flurry/sdk/gr;->c:I

    sget v4, Lcom/flurry/sdk/gr;->c:I

    sget v5, Lcom/flurry/sdk/gr;->c:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 5237
    iget-object v2, p0, Lcom/flurry/sdk/gr;->j:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5238
    iget-object v2, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gr;->j:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5282
    iget-object v0, v0, Lcom/flurry/sdk/hi;->b:Landroid/graphics/Bitmap;

    .line 6242
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/gr;->i:Landroid/widget/ImageButton;

    .line 6243
    iget-object v1, p0, Lcom/flurry/sdk/gr;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 6244
    iget-object v1, p0, Lcom/flurry/sdk/gr;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 6245
    iget-object v1, p0, Lcom/flurry/sdk/gr;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6246
    iget-object v0, p0, Lcom/flurry/sdk/gr;->i:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gr$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gr$4;-><init>(Lcom/flurry/sdk/gr;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6255
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 6256
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6257
    sget v1, Lcom/flurry/sdk/gr;->c:I

    sget v2, Lcom/flurry/sdk/gr;->c:I

    sget v3, Lcom/flurry/sdk/gr;->c:I

    sget v4, Lcom/flurry/sdk/gr;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 6259
    iget-object v1, p0, Lcom/flurry/sdk/gr;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 6262
    invoke-virtual {p0, v6}, Lcom/flurry/sdk/gr;->show(I)V

    .line 6263
    iget-object v1, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gr;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1137
    iget-object v0, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 1138
    iget-object v0, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/flurry/sdk/gr$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gr$1;-><init>(Lcom/flurry/sdk/gr;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 53
    :cond_0
    return-void

    .line 2187
    :cond_1
    iget-object v2, p0, Lcom/flurry/sdk/gr;->a:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/gr;)Lcom/flurry/sdk/gv$b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/gr;->h:Lcom/flurry/sdk/gv$b;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/gr;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/gr;->i:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    const-string v2, "Layout is null in updateControlVisibility."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gr;->setCloseButtonVisibility(I)V

    .line 96
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gr;->setTimerVisibility(I)V

    .line 97
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gr;->setPlayButtonVisibility(I)V

    .line 98
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gr;->setMoreInfoButtonVisibility(I)V

    goto :goto_0
.end method

.method private getHeightDimensions()I
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/flurry/sdk/lw;->c()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 310
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private getWidthDimensions()I
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Lcom/flurry/sdk/lw;->c()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 305
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private setCloseButtonVisibility(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 268
    :goto_0
    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/flurry/sdk/gr;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 273
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 267
    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gr;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private setMoreInfoButtonVisibility(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 286
    :goto_0
    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/flurry/sdk/gr;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 292
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 285
    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gr;->j:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private setPlayButtonVisibility(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 296
    :goto_0
    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/flurry/sdk/gr;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 301
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 295
    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gr;->i:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private setTimerVisibility(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 277
    :goto_0
    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/flurry/sdk/gr;->k:Lcom/flurry/sdk/hn;

    .line 9110
    iget-object v0, v0, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 276
    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gr;->k:Lcom/flurry/sdk/hn;

    .line 10110
    iget-object v0, v0, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    .line 280
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final a(FF)V
    .locals 5

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/gr;->k:Lcom/flurry/sdk/hn;

    if-nez v0, :cond_1

    .line 113
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    const-string v2, "Cannot update timer. View is null."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    float-to-int v0, p2

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/flurry/sdk/gr;->l:I

    .line 119
    float-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    .line 120
    iget v1, p0, Lcom/flurry/sdk/gr;->l:I

    sub-int/2addr v0, v1

    .line 121
    iget-object v1, p0, Lcom/flurry/sdk/gr;->k:Lcom/flurry/sdk/hn;

    float-to-int v2, p1

    .line 7081
    div-int/lit16 v3, v2, 0x3e8

    .line 7082
    const/high16 v4, 0x43b40000    # 360.0f

    int-to-float v3, v3

    div-float v3, v4, v3

    iput v3, v1, Lcom/flurry/sdk/hn;->b:F

    .line 7083
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v3

    new-instance v4, Lcom/flurry/sdk/hn$1;

    invoke-direct {v4, v1, v2}, Lcom/flurry/sdk/hn$1;-><init>(Lcom/flurry/sdk/hn;I)V

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 122
    iget-object v1, p0, Lcom/flurry/sdk/gr;->k:Lcom/flurry/sdk/hn;

    .line 8069
    iget-object v2, v1, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 8167
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/hn$2;

    invoke-direct {v3, v1, v0}, Lcom/flurry/sdk/hn$2;-><init>(Lcom/flurry/sdk/hn;I)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 8179
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/hn$3;

    invoke-direct {v3, v1, v0}, Lcom/flurry/sdk/hn$3;-><init>(Lcom/flurry/sdk/hn;I)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 61
    iget v0, p0, Lcom/flurry/sdk/gr;->m:I

    if-ne v0, p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update UI with visible flag: \n CloseButton: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n Play Button: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v3, p1, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n MoreInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v3, p1, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n Timer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    iput p1, p0, Lcom/flurry/sdk/gr;->m:I

    .line 72
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gr;->c(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    const-string v2, "Layout is null in screenSizeChanged."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/gr;->m:I

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gr;->c(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 387
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 388
    const/4 v1, 0x5

    sget-object v4, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    const-string v5, "Override dispatchKeyEvent"

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 390
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 391
    :goto_0
    const/16 v4, 0x4f

    if-eq v3, v4, :cond_0

    const/16 v4, 0x55

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_0

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_0

    const/16 v4, 0x56

    if-eq v3, v4, :cond_0

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_2

    .line 416
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, v2

    .line 390
    goto :goto_0

    .line 399
    :cond_2
    const/16 v4, 0x19

    if-eq v3, v4, :cond_3

    const/16 v4, 0x18

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa4

    if-eq v3, v4, :cond_3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_4

    .line 405
    :cond_3
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/gr;->show(I)V

    .line 406
    invoke-super {p0, p1}, Lcom/flurry/sdk/gv;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 407
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    if-eqz v1, :cond_6

    .line 408
    iget-object v1, p0, Lcom/flurry/sdk/gr;->h:Lcom/flurry/sdk/gv$b;

    if-eqz v1, :cond_5

    .line 10364
    iget-object v1, p0, Lcom/flurry/sdk/gr;->a:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isShown()Z

    move-result v1

    .line 408
    if-eqz v1, :cond_5

    .line 409
    iget-object v1, p0, Lcom/flurry/sdk/gr;->h:Lcom/flurry/sdk/gv$b;

    invoke-interface {v1}, Lcom/flurry/sdk/gv$b;->n()V

    .line 411
    :cond_5
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/gr;->show(I)V

    goto :goto_1

    .line 415
    :cond_6
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/gr;->show(I)V

    .line 416
    invoke-super {p0, p1}, Lcom/flurry/sdk/gv;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    const-string v2, "Reset video view."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gr;->a(I)V

    .line 357
    iget-object v0, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 358
    invoke-virtual {p0}, Lcom/flurry/sdk/gr;->removeAllViews()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    .line 361
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 381
    invoke-super {p0, p1}, Lcom/flurry/sdk/gv;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 382
    iget v0, p0, Lcom/flurry/sdk/gr;->m:I

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gr;->c(I)V

    .line 383
    return-void
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/flurry/sdk/gv;->setAnchorView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    const-string v2, "Layout is null in setAnchorView."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gr;->removeAllViews()V

    .line 85
    iget-object v0, p0, Lcom/flurry/sdk/gr;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gr;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/flurry/sdk/gv;->show(I)V

    .line 370
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    const-string v2, "Show called."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public show(I)V
    .locals 3

    .prologue
    .line 375
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/gr;->b:Ljava/lang/String;

    const-string v2, "Override show(0)."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/flurry/sdk/gv;->show(I)V

    .line 377
    return-void
.end method
