.class Lcom/adcolony/sdk/as;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private A:Lcom/adcolony/sdk/c;

.field private B:Lcom/adcolony/sdk/z;

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v3, p0, Lcom/adcolony/sdk/as;->a:I

    .line 23
    iput v1, p0, Lcom/adcolony/sdk/as;->b:I

    .line 24
    iput v2, p0, Lcom/adcolony/sdk/as;->c:I

    .line 25
    iput v4, p0, Lcom/adcolony/sdk/as;->d:I

    .line 26
    iput v1, p0, Lcom/adcolony/sdk/as;->e:I

    .line 27
    iput v2, p0, Lcom/adcolony/sdk/as;->f:I

    .line 28
    iput v4, p0, Lcom/adcolony/sdk/as;->g:I

    .line 29
    iput v3, p0, Lcom/adcolony/sdk/as;->h:I

    .line 30
    iput v1, p0, Lcom/adcolony/sdk/as;->i:I

    .line 31
    iput v2, p0, Lcom/adcolony/sdk/as;->j:I

    .line 32
    iput v1, p0, Lcom/adcolony/sdk/as;->k:I

    .line 33
    iput v2, p0, Lcom/adcolony/sdk/as;->l:I

    .line 66
    iput p4, p0, Lcom/adcolony/sdk/as;->m:I

    .line 67
    iput-object p3, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    .line 68
    iput-object p5, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    .line 69
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 22
    iput v2, p0, Lcom/adcolony/sdk/as;->a:I

    .line 23
    iput v0, p0, Lcom/adcolony/sdk/as;->b:I

    .line 24
    iput v1, p0, Lcom/adcolony/sdk/as;->c:I

    .line 25
    iput v3, p0, Lcom/adcolony/sdk/as;->d:I

    .line 26
    iput v0, p0, Lcom/adcolony/sdk/as;->e:I

    .line 27
    iput v1, p0, Lcom/adcolony/sdk/as;->f:I

    .line 28
    iput v3, p0, Lcom/adcolony/sdk/as;->g:I

    .line 29
    iput v2, p0, Lcom/adcolony/sdk/as;->h:I

    .line 30
    iput v0, p0, Lcom/adcolony/sdk/as;->i:I

    .line 31
    iput v1, p0, Lcom/adcolony/sdk/as;->j:I

    .line 32
    iput v0, p0, Lcom/adcolony/sdk/as;->k:I

    .line 33
    iput v1, p0, Lcom/adcolony/sdk/as;->l:I

    .line 57
    iput p3, p0, Lcom/adcolony/sdk/as;->m:I

    .line 58
    iput-object p2, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    .line 59
    iput-object p4, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    .line 60
    return-void
.end method


# virtual methods
.method a(ZI)I
    .locals 1

    .prologue
    .line 90
    packed-switch p2, :pswitch_data_0

    .line 120
    const/16 v0, 0x11

    :goto_0
    return v0

    .line 93
    :pswitch_0
    if-eqz p1, :cond_0

    .line 95
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 102
    :pswitch_1
    if-eqz p1, :cond_1

    .line 104
    const/4 v0, 0x3

    goto :goto_0

    .line 108
    :cond_1
    const/16 v0, 0x30

    goto :goto_0

    .line 111
    :pswitch_2
    if-eqz p1, :cond_2

    .line 113
    const/4 v0, 0x5

    goto :goto_0

    .line 117
    :cond_2
    const/16 v0, 0x50

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method a()V
    .locals 7

    .prologue
    const/4 v3, -0x2

    const/high16 v4, 0x40c00000    # 6.0f

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 246
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/as;->z:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->n:I

    .line 248
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->o:I

    .line 249
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->p:I

    .line 250
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->q:I

    .line 251
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_family"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->s:I

    .line 252
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_style"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->r:I

    .line 253
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_size"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->t:I

    .line 254
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "background_color"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/as;->w:Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_color"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/as;->x:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "text"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/as;->y:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "align_x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->u:I

    .line 258
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "align_y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->v:I

    .line 261
    iget-object v0, p0, Lcom/adcolony/sdk/as;->y:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "Learn More"

    iput-object v0, p0, Lcom/adcolony/sdk/as;->y:Ljava/lang/String;

    .line 267
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "wrap_content"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 271
    :goto_0
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 274
    iget-object v1, p0, Lcom/adcolony/sdk/as;->y:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/as;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget v1, p0, Lcom/adcolony/sdk/as;->t:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/as;->setTextSize(F)V

    .line 281
    iget-object v1, p0, Lcom/adcolony/sdk/as;->B:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "overlay"

    invoke-static {v1, v3}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    iput v2, p0, Lcom/adcolony/sdk/as;->n:I

    .line 284
    iput v2, p0, Lcom/adcolony/sdk/as;->o:I

    .line 285
    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v1, v1, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v1}, Lcom/adcolony/sdk/j;->j()F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v3, v1

    .line 286
    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v1, v1, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v1}, Lcom/adcolony/sdk/j;->j()F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 288
    const/high16 v4, 0x40800000    # 4.0f

    sget-object v5, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v5, v5, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v5}, Lcom/adcolony/sdk/j;->j()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 289
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/adcolony/sdk/as;->setPadding(IIII)V

    .line 290
    const/16 v4, 0x55

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 293
    :goto_1
    iget v4, p0, Lcom/adcolony/sdk/as;->n:I

    iget v5, p0, Lcom/adcolony/sdk/as;->o:I

    invoke-virtual {v0, v4, v5, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 294
    iget-object v1, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    invoke-virtual {v1, p0, v0}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget v0, p0, Lcom/adcolony/sdk/as;->s:I

    packed-switch v0, :pswitch_data_0

    .line 314
    :goto_2
    iget v0, p0, Lcom/adcolony/sdk/as;->r:I

    packed-switch v0, :pswitch_data_1

    .line 331
    :goto_3
    iget v0, p0, Lcom/adcolony/sdk/as;->u:I

    invoke-virtual {p0, v6, v0}, Lcom/adcolony/sdk/as;->a(ZI)I

    move-result v0

    .line 332
    iget v1, p0, Lcom/adcolony/sdk/as;->v:I

    invoke-virtual {p0, v2, v1}, Lcom/adcolony/sdk/as;->a(ZI)I

    move-result v1

    .line 334
    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setGravity(I)V

    .line 337
    iget-object v0, p0, Lcom/adcolony/sdk/as;->w:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/adcolony/sdk/as;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/au;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setBackgroundColor(I)V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/as;->x:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/adcolony/sdk/as;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/au;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setTextColor(I)V

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_visible"

    new-instance v2, Lcom/adcolony/sdk/as$1;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/as$1;-><init>(Lcom/adcolony/sdk/as;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_bounds"

    new-instance v2, Lcom/adcolony/sdk/as$3;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/as$3;-><init>(Lcom/adcolony/sdk/as;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_font_color"

    new-instance v2, Lcom/adcolony/sdk/as$4;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/as$4;-><init>(Lcom/adcolony/sdk/as;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_background_color"

    new-instance v2, Lcom/adcolony/sdk/as$5;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/as$5;-><init>(Lcom/adcolony/sdk/as;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_typeface"

    new-instance v2, Lcom/adcolony/sdk/as$6;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/as$6;-><init>(Lcom/adcolony/sdk/as;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_font_size"

    new-instance v2, Lcom/adcolony/sdk/as$7;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/as$7;-><init>(Lcom/adcolony/sdk/as;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_font_style"

    new-instance v2, Lcom/adcolony/sdk/as$8;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/as$8;-><init>(Lcom/adcolony/sdk/as;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.get_text"

    new-instance v2, Lcom/adcolony/sdk/as$9;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/as$9;-><init>(Lcom/adcolony/sdk/as;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_text"

    new-instance v2, Lcom/adcolony/sdk/as$10;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/as$10;-><init>(Lcom/adcolony/sdk/as;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.align"

    new-instance v2, Lcom/adcolony/sdk/as$2;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/as$2;-><init>(Lcom/adcolony/sdk/as;)V

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_visible"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_bounds"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_font_color"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_background_color"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_typeface"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_font_size"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_font_style"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.get_text"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_text"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.align"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "TextView added to layout"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 471
    return-void

    .line 268
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/adcolony/sdk/as;->p:I

    iget v3, p0, Lcom/adcolony/sdk/as;->q:I

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    .line 300
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 303
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 306
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 309
    :pswitch_3
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 317
    :pswitch_4
    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_3

    .line 320
    :pswitch_5
    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_3

    .line 323
    :pswitch_6
    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_3

    .line 326
    :pswitch_7
    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_3

    :cond_4
    move v1, v2

    move v3, v2

    goto/16 :goto_1

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 314
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method a(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->u:I

    .line 77
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->v:I

    .line 79
    const/4 v0, 0x1

    iget v1, p0, Lcom/adcolony/sdk/as;->u:I

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/as;->a(ZI)I

    move-result v0

    .line 80
    const/4 v1, 0x0

    iget v2, p0, Lcom/adcolony/sdk/as;->v:I

    invoke-virtual {p0, v1, v2}, Lcom/adcolony/sdk/as;->a(ZI)I

    move-result v1

    .line 82
    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setGravity(I)V

    .line 83
    return-void
.end method

.method b(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 128
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 129
    const-string v1, "text"

    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 132
    return-void
.end method

.method c(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 231
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/adcolony/sdk/as;->m:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "container_id"

    .line 232
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget v1, v1, Lcom/adcolony/sdk/c;->n:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    .line 233
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-object v1, v1, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 480
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->n:I

    .line 481
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->o:I

    .line 482
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->p:I

    .line 483
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->q:I

    .line 485
    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 486
    iget v1, p0, Lcom/adcolony/sdk/as;->n:I

    iget v2, p0, Lcom/adcolony/sdk/as;->o:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 487
    iget v1, p0, Lcom/adcolony/sdk/as;->p:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 488
    iget v1, p0, Lcom/adcolony/sdk/as;->q:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 489
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    return-void
.end method

.method e(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "background_color"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/as;->w:Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/adcolony/sdk/as;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/au;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setBackgroundColor(I)V

    .line 499
    return-void
.end method

.method f(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_color"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/as;->x:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/adcolony/sdk/as;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/au;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setTextColor(I)V

    .line 508
    return-void
.end method

.method g(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_size"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->t:I

    .line 516
    iget v0, p0, Lcom/adcolony/sdk/as;->t:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setTextSize(F)V

    .line 517
    return-void
.end method

.method h(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_style"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->r:I

    packed-switch v0, :pswitch_data_0

    .line 539
    :goto_0
    return-void

    .line 527
    :pswitch_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 530
    :pswitch_1
    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 533
    :pswitch_2
    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 536
    :pswitch_3
    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method i(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "text"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/as;->y:Ljava/lang/String;

    .line 547
    iget-object v0, p0, Lcom/adcolony/sdk/as;->y:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setText(Ljava/lang/CharSequence;)V

    .line 548
    return-void
.end method

.method j(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_family"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/as;->s:I

    packed-switch v0, :pswitch_data_0

    .line 570
    :goto_0
    return-void

    .line 558
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 561
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 564
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 567
    :pswitch_3
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method k(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "visible"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 578
    if-eqz v0, :cond_0

    .line 580
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setVisibility(I)V

    .line 586
    :goto_0
    return-void

    .line 584
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/as;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const v7, 0xff00

    const/4 v1, 0x1

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 141
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

    .line 145
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 151
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 152
    const-string v5, "view_id"

    iget v6, p0, Lcom/adcolony/sdk/as;->m:I

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 153
    const-string v5, "ad_session_id"

    iget-object v6, p0, Lcom/adcolony/sdk/as;->z:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    const-string v5, "container_x"

    iget v6, p0, Lcom/adcolony/sdk/as;->n:I

    add-int/2addr v6, v2

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 155
    const-string v5, "container_y"

    iget v6, p0, Lcom/adcolony/sdk/as;->o:I

    add-int/2addr v6, v3

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 156
    const-string v5, "view_x"

    invoke-static {v4, v5, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 157
    const-string v5, "view_y"

    invoke-static {v4, v5, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 158
    const-string v5, "id"

    iget-object v6, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget v6, v6, Lcom/adcolony/sdk/c;->n:I

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 160
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 219
    goto :goto_0

    .line 163
    :pswitch_1
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_began"

    iget-object v3, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 166
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x8

    .line 167
    const-string v2, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/as;->n:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 168
    const-string v2, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/as;->o:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 169
    const-string v2, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 170
    const-string v2, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4, v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 171
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_began"

    iget-object v3, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 174
    :pswitch_3
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-boolean v0, v0, Lcom/adcolony/sdk/c;->q:Z

    if-nez v0, :cond_1

    .line 176
    sget-object v5, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/adcolony/sdk/as;->z:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    iput-object v0, v5, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 179
    :cond_1
    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getWidth()I

    move-result v0

    if-ge v2, v0, :cond_2

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getHeight()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 181
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_ended"

    iget-object v3, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 185
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_cancelled"

    iget-object v3, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 190
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x8

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    .line 194
    const-string v5, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/adcolony/sdk/as;->n:I

    add-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 195
    const-string v5, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/adcolony/sdk/as;->o:I

    add-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 196
    const-string v5, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 197
    const-string v5, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4, v5, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 198
    iget-object v0, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget-boolean v0, v0, Lcom/adcolony/sdk/c;->q:Z

    if-nez v0, :cond_3

    .line 200
    sget-object v5, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/adcolony/sdk/as;->z:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    iput-object v0, v5, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 203
    :cond_3
    if-lez v2, :cond_4

    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getWidth()I

    move-result v0

    if-ge v2, v0, :cond_4

    if-lez v3, :cond_4

    invoke-virtual {p0}, Lcom/adcolony/sdk/as;->getHeight()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 205
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_ended"

    iget-object v3, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 209
    :cond_4
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_cancelled"

    iget-object v3, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 213
    :pswitch_5
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_cancelled"

    iget-object v3, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 216
    :pswitch_6
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_moved"

    iget-object v3, p0, Lcom/adcolony/sdk/as;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 160
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
