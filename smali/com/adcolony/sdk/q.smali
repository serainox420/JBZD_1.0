.class Lcom/adcolony/sdk/q;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/adcolony/sdk/z;

.field private l:Lcom/adcolony/sdk/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50
    iput p3, p0, Lcom/adcolony/sdk/q;->a:I

    .line 51
    iput-object p2, p0, Lcom/adcolony/sdk/q;->k:Lcom/adcolony/sdk/z;

    .line 52
    iput-object p4, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/q;Lcom/adcolony/sdk/z;)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/q;->a(Lcom/adcolony/sdk/z;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 157
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/adcolony/sdk/q;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "container_id"

    .line 158
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget v1, v1, Lcom/adcolony/sdk/c;->n:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    .line 159
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget-object v1, v1, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/adcolony/sdk/q;Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/q;->d(Lcom/adcolony/sdk/z;)V

    return-void
.end method

.method private b(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/q;->b:I

    .line 255
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/q;->c:I

    .line 256
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/q;->d:I

    .line 257
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/q;->e:I

    .line 260
    iget-boolean v0, p0, Lcom/adcolony/sdk/q;->f:Z

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->j()F

    move-result v0

    .line 263
    iget v1, p0, Lcom/adcolony/sdk/q;->e:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/adcolony/sdk/q;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 265
    invoke-virtual {p0}, Lcom/adcolony/sdk/q;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adcolony/sdk/q;->e:I

    .line 266
    invoke-virtual {p0}, Lcom/adcolony/sdk/q;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/adcolony/sdk/q;->d:I

    .line 267
    iget v0, p0, Lcom/adcolony/sdk/q;->b:I

    iget v1, p0, Lcom/adcolony/sdk/q;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/adcolony/sdk/q;->b:I

    .line 268
    iget v0, p0, Lcom/adcolony/sdk/q;->c:I

    iget v1, p0, Lcom/adcolony/sdk/q;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/adcolony/sdk/q;->c:I

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/q;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 272
    iget v1, p0, Lcom/adcolony/sdk/q;->b:I

    iget v2, p0, Lcom/adcolony/sdk/q;->c:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 273
    iget v1, p0, Lcom/adcolony/sdk/q;->d:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 274
    iget v1, p0, Lcom/adcolony/sdk/q;->e:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 275
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/q;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    return-void
.end method

.method static synthetic c(Lcom/adcolony/sdk/q;Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/q;->b(Lcom/adcolony/sdk/z;)V

    return-void
.end method

.method private c(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "filepath"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/q;->i:Ljava/lang/String;

    .line 287
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adcolony/sdk/q;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/q;->setImageURI(Landroid/net/Uri;)V

    .line 288
    return-void
.end method

.method static synthetic d(Lcom/adcolony/sdk/q;Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/q;->c(Lcom/adcolony/sdk/z;)V

    return-void
.end method

.method private d(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "visible"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 298
    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/q;->setVisibility(I)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/q;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 5

    .prologue
    const/4 v2, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 174
    iget-object v0, p0, Lcom/adcolony/sdk/q;->k:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/q;->j:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/adcolony/sdk/q;->k:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/q;->b:I

    .line 176
    iget-object v0, p0, Lcom/adcolony/sdk/q;->k:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/q;->c:I

    .line 177
    iget-object v0, p0, Lcom/adcolony/sdk/q;->k:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/q;->d:I

    .line 178
    iget-object v0, p0, Lcom/adcolony/sdk/q;->k:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/q;->e:I

    .line 179
    iget-object v0, p0, Lcom/adcolony/sdk/q;->k:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "filepath"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/q;->i:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/adcolony/sdk/q;->k:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "dpi"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/q;->f:Z

    .line 182
    iget-object v0, p0, Lcom/adcolony/sdk/q;->k:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "invert_y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/q;->g:Z

    .line 183
    iget-object v0, p0, Lcom/adcolony/sdk/q;->k:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "wrap_content"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/q;->h:Z

    .line 186
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adcolony/sdk/q;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/q;->setImageURI(Landroid/net/Uri;)V

    .line 189
    iget-boolean v0, p0, Lcom/adcolony/sdk/q;->f:Z

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->j()F

    move-result v0

    .line 192
    iget v1, p0, Lcom/adcolony/sdk/q;->e:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/adcolony/sdk/q;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 194
    invoke-virtual {p0}, Lcom/adcolony/sdk/q;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adcolony/sdk/q;->e:I

    .line 195
    invoke-virtual {p0}, Lcom/adcolony/sdk/q;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/adcolony/sdk/q;->d:I

    .line 196
    iget v0, p0, Lcom/adcolony/sdk/q;->b:I

    iget v1, p0, Lcom/adcolony/sdk/q;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/adcolony/sdk/q;->b:I

    .line 197
    iget-boolean v0, p0, Lcom/adcolony/sdk/q;->g:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/adcolony/sdk/q;->c:I

    iget v1, p0, Lcom/adcolony/sdk/q;->e:I

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/adcolony/sdk/q;->c:I

    .line 200
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/q;->setVisibility(I)V

    .line 201
    iget-boolean v0, p0, Lcom/adcolony/sdk/q;->h:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 204
    :goto_1
    iget v1, p0, Lcom/adcolony/sdk/q;->b:I

    iget v2, p0, Lcom/adcolony/sdk/q;->c:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 205
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 206
    iget-object v1, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v1, p0, v0}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "ImageView.set_visible"

    new-instance v2, Lcom/adcolony/sdk/q$1;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/q$1;-><init>(Lcom/adcolony/sdk/q;)V

    invoke-static {v1, v2, v4}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "ImageView.set_bounds"

    new-instance v2, Lcom/adcolony/sdk/q$2;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/q$2;-><init>(Lcom/adcolony/sdk/q;)V

    invoke-static {v1, v2, v4}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "ImageView.set_image"

    new-instance v2, Lcom/adcolony/sdk/q$3;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/q$3;-><init>(Lcom/adcolony/sdk/q;)V

    invoke-static {v1, v2, v4}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "ImageView.set_visible"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "ImageView.set_bounds"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "ImageView.set_image"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    return-void

    .line 197
    :cond_1
    iget v0, p0, Lcom/adcolony/sdk/q;->c:I

    iget v1, p0, Lcom/adcolony/sdk/q;->e:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 201
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/adcolony/sdk/q;->d:I

    iget v2, p0, Lcom/adcolony/sdk/q;->e:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1
.end method

.method b()[I
    .locals 3

    .prologue
    .line 315
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 317
    const/4 v1, 0x0

    iget v2, p0, Lcom/adcolony/sdk/q;->b:I

    aput v2, v0, v1

    .line 318
    const/4 v1, 0x1

    iget v2, p0, Lcom/adcolony/sdk/q;->c:I

    aput v2, v0, v1

    .line 319
    const/4 v1, 0x2

    iget v2, p0, Lcom/adcolony/sdk/q;->d:I

    aput v2, v0, v1

    .line 320
    const/4 v1, 0x3

    iget v2, p0, Lcom/adcolony/sdk/q;->e:I

    aput v2, v0, v1

    .line 322
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const v7, 0xff00

    const/4 v1, 0x1

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 67
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 77
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 78
    const-string v5, "view_id"

    iget v6, p0, Lcom/adcolony/sdk/q;->a:I

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 79
    const-string v5, "ad_session_id"

    iget-object v6, p0, Lcom/adcolony/sdk/q;->j:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    const-string v5, "container_x"

    iget v6, p0, Lcom/adcolony/sdk/q;->b:I

    add-int/2addr v6, v2

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 81
    const-string v5, "container_y"

    iget v6, p0, Lcom/adcolony/sdk/q;->c:I

    add-int/2addr v6, v3

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 82
    const-string v5, "view_x"

    invoke-static {v4, v5, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 83
    const-string v5, "view_y"

    invoke-static {v4, v5, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 84
    const-string v5, "id"

    iget-object v6, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget v6, v6, Lcom/adcolony/sdk/c;->n:I

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 86
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 145
    goto :goto_0

    .line 89
    :pswitch_1
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_began"

    iget-object v3, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 92
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x8

    .line 93
    const-string v2, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/q;->b:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 94
    const-string v2, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/q;->c:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 95
    const-string v2, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 96
    const-string v2, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4, v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 97
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_began"

    iget-object v3, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 100
    :pswitch_3
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget-boolean v0, v0, Lcom/adcolony/sdk/c;->q:Z

    if-nez v0, :cond_1

    .line 102
    sget-object v5, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/adcolony/sdk/q;->j:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    iput-object v0, v5, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 105
    :cond_1
    if-lez v2, :cond_2

    iget v0, p0, Lcom/adcolony/sdk/q;->d:I

    if-ge v2, v0, :cond_2

    if-lez v3, :cond_2

    iget v0, p0, Lcom/adcolony/sdk/q;->e:I

    if-ge v3, v0, :cond_2

    .line 107
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_ended"

    iget-object v3, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 111
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_cancelled"

    iget-object v3, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 115
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x8

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    .line 119
    const-string v5, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/adcolony/sdk/q;->b:I

    add-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 120
    const-string v5, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/adcolony/sdk/q;->c:I

    add-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 121
    const-string v5, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 122
    const-string v5, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4, v5, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 124
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget-boolean v0, v0, Lcom/adcolony/sdk/c;->q:Z

    if-nez v0, :cond_3

    .line 126
    sget-object v5, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/adcolony/sdk/q;->j:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    iput-object v0, v5, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 129
    :cond_3
    if-lez v2, :cond_4

    iget v0, p0, Lcom/adcolony/sdk/q;->d:I

    if-ge v2, v0, :cond_4

    if-lez v3, :cond_4

    iget v0, p0, Lcom/adcolony/sdk/q;->e:I

    if-ge v3, v0, :cond_4

    .line 131
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_ended"

    iget-object v3, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 135
    :cond_4
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_cancelled"

    iget-object v3, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 139
    :pswitch_5
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_cancelled"

    iget-object v3, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 142
    :pswitch_6
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_moved"

    iget-object v3, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
