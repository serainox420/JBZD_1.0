.class Lcom/adcolony/sdk/m;
.super Landroid/widget/EditText;
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
.method constructor <init>(Landroid/content/Context;Lcom/adcolony/sdk/z;ILcom/adcolony/sdk/c;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 18
    iput v2, p0, Lcom/adcolony/sdk/m;->a:I

    .line 19
    iput v0, p0, Lcom/adcolony/sdk/m;->b:I

    .line 20
    iput v1, p0, Lcom/adcolony/sdk/m;->c:I

    .line 21
    iput v3, p0, Lcom/adcolony/sdk/m;->d:I

    .line 22
    iput v0, p0, Lcom/adcolony/sdk/m;->e:I

    .line 23
    iput v1, p0, Lcom/adcolony/sdk/m;->f:I

    .line 24
    iput v3, p0, Lcom/adcolony/sdk/m;->g:I

    .line 25
    iput v2, p0, Lcom/adcolony/sdk/m;->h:I

    .line 26
    iput v0, p0, Lcom/adcolony/sdk/m;->i:I

    .line 27
    iput v1, p0, Lcom/adcolony/sdk/m;->j:I

    .line 28
    iput v0, p0, Lcom/adcolony/sdk/m;->k:I

    .line 29
    iput v1, p0, Lcom/adcolony/sdk/m;->l:I

    .line 53
    iput p3, p0, Lcom/adcolony/sdk/m;->m:I

    .line 54
    iput-object p2, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    .line 55
    iput-object p4, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    .line 56
    return-void
.end method


# virtual methods
.method a(ZI)I
    .locals 1

    .prologue
    .line 83
    packed-switch p2, :pswitch_data_0

    .line 113
    const/16 v0, 0x11

    :goto_0
    return v0

    .line 86
    :pswitch_0
    if-eqz p1, :cond_0

    .line 88
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 95
    :pswitch_1
    if-eqz p1, :cond_1

    .line 97
    const/4 v0, 0x3

    goto :goto_0

    .line 101
    :cond_1
    const/16 v0, 0x30

    goto :goto_0

    .line 104
    :pswitch_2
    if-eqz p1, :cond_2

    .line 106
    const/4 v0, 0x5

    goto :goto_0

    .line 110
    :cond_2
    const/16 v0, 0x50

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 213
    iget-object v0, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/m;->w:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->n:I

    .line 215
    iget-object v0, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->o:I

    .line 216
    iget-object v0, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->p:I

    .line 217
    iget-object v0, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->q:I

    .line 218
    iget-object v0, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_family"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->s:I

    .line 219
    iget-object v0, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_style"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->r:I

    .line 220
    iget-object v0, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_size"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->t:I

    .line 221
    iget-object v0, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "background_color"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/m;->x:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_color"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/m;->y:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "text"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/m;->z:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "align_x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->u:I

    .line 225
    iget-object v0, p0, Lcom/adcolony/sdk/m;->B:Lcom/adcolony/sdk/z;

    iget-object v0, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "align_y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->v:I

    .line 227
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setVisibility(I)V

    .line 228
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/adcolony/sdk/m;->p:I

    iget v2, p0, Lcom/adcolony/sdk/m;->q:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 229
    iget v1, p0, Lcom/adcolony/sdk/m;->n:I

    iget v2, p0, Lcom/adcolony/sdk/m;->o:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 230
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 231
    iget-object v1, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    invoke-virtual {v1, p0, v0}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget v0, p0, Lcom/adcolony/sdk/m;->s:I

    packed-switch v0, :pswitch_data_0

    .line 251
    :goto_0
    iget v0, p0, Lcom/adcolony/sdk/m;->r:I

    packed-switch v0, :pswitch_data_1

    .line 268
    :goto_1
    iget-object v0, p0, Lcom/adcolony/sdk/m;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget v0, p0, Lcom/adcolony/sdk/m;->t:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setTextSize(F)V

    .line 274
    iget v0, p0, Lcom/adcolony/sdk/m;->u:I

    invoke-virtual {p0, v3, v0}, Lcom/adcolony/sdk/m;->a(ZI)I

    move-result v0

    .line 275
    iget v1, p0, Lcom/adcolony/sdk/m;->v:I

    invoke-virtual {p0, v4, v1}, Lcom/adcolony/sdk/m;->a(ZI)I

    move-result v1

    .line 277
    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setGravity(I)V

    .line 280
    iget-object v0, p0, Lcom/adcolony/sdk/m;->x:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/adcolony/sdk/m;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/au;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setBackgroundColor(I)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/m;->y:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/adcolony/sdk/m;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/au;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setTextColor(I)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_visible"

    new-instance v2, Lcom/adcolony/sdk/m$1;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/m$1;-><init>(Lcom/adcolony/sdk/m;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_bounds"

    new-instance v2, Lcom/adcolony/sdk/m$3;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/m$3;-><init>(Lcom/adcolony/sdk/m;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_font_color"

    new-instance v2, Lcom/adcolony/sdk/m$4;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/m$4;-><init>(Lcom/adcolony/sdk/m;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_background_color"

    new-instance v2, Lcom/adcolony/sdk/m$5;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/m$5;-><init>(Lcom/adcolony/sdk/m;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_typeface"

    new-instance v2, Lcom/adcolony/sdk/m$6;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/m$6;-><init>(Lcom/adcolony/sdk/m;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_font_size"

    new-instance v2, Lcom/adcolony/sdk/m$7;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/m$7;-><init>(Lcom/adcolony/sdk/m;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_font_style"

    new-instance v2, Lcom/adcolony/sdk/m$8;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/m$8;-><init>(Lcom/adcolony/sdk/m;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.get_text"

    new-instance v2, Lcom/adcolony/sdk/m$9;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/m$9;-><init>(Lcom/adcolony/sdk/m;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.set_text"

    new-instance v2, Lcom/adcolony/sdk/m$10;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/m$10;-><init>(Lcom/adcolony/sdk/m;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "TextView.align"

    new-instance v2, Lcom/adcolony/sdk/m$2;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/m$2;-><init>(Lcom/adcolony/sdk/m;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_visible"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_bounds"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_font_color"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_background_color"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_typeface"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_font_size"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_font_style"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.get_text"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.set_text"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "TextView.align"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    return-void

    .line 237
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 240
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 243
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 246
    :pswitch_3
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 254
    :pswitch_4
    invoke-virtual {p0}, Lcom/adcolony/sdk/m;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_1

    .line 257
    :pswitch_5
    invoke-virtual {p0}, Lcom/adcolony/sdk/m;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_1

    .line 260
    :pswitch_6
    invoke-virtual {p0}, Lcom/adcolony/sdk/m;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_1

    .line 263
    :pswitch_7
    invoke-virtual {p0}, Lcom/adcolony/sdk/m;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_1

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 251
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
    .line 65
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->u:I

    .line 66
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->v:I

    .line 68
    const/4 v0, 0x1

    iget v1, p0, Lcom/adcolony/sdk/m;->u:I

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/m;->a(ZI)I

    move-result v0

    .line 69
    const/4 v1, 0x0

    iget v2, p0, Lcom/adcolony/sdk/m;->v:I

    invoke-virtual {p0, v1, v2}, Lcom/adcolony/sdk/m;->a(ZI)I

    move-result v1

    .line 71
    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setGravity(I)V

    .line 72
    return-void
.end method

.method b(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/adcolony/sdk/m;->m:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "container_id"

    .line 198
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget v1, v1, Lcom/adcolony/sdk/c;->n:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    .line 199
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-object v1, v1, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Lcom/adcolony/sdk/z;)V
    .locals 3

    .prologue
    .line 421
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 422
    const-string v1, "text"

    invoke-virtual {p0}, Lcom/adcolony/sdk/m;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 424
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 425
    return-void
.end method

.method d(Lcom/adcolony/sdk/z;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 434
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->n:I

    .line 435
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->o:I

    .line 436
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->p:I

    .line 437
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->q:I

    .line 439
    invoke-virtual {p0}, Lcom/adcolony/sdk/m;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 440
    iget v1, p0, Lcom/adcolony/sdk/m;->n:I

    iget v2, p0, Lcom/adcolony/sdk/m;->o:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 441
    iget v1, p0, Lcom/adcolony/sdk/m;->p:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 442
    iget v1, p0, Lcom/adcolony/sdk/m;->q:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 443
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    return-void
.end method

.method e(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "background_color"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/m;->x:Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/adcolony/sdk/m;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/au;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setBackgroundColor(I)V

    .line 456
    return-void
.end method

.method f(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_color"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/m;->y:Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/adcolony/sdk/m;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/au;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setTextColor(I)V

    .line 468
    return-void
.end method

.method g(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_size"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->t:I

    .line 479
    iget v0, p0, Lcom/adcolony/sdk/m;->t:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setTextSize(F)V

    .line 480
    return-void
.end method

.method h(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_style"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->r:I

    packed-switch v0, :pswitch_data_0

    .line 505
    :goto_0
    return-void

    .line 493
    :pswitch_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/m;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 496
    :pswitch_1
    invoke-virtual {p0}, Lcom/adcolony/sdk/m;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 499
    :pswitch_2
    invoke-virtual {p0}, Lcom/adcolony/sdk/m;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 502
    :pswitch_3
    invoke-virtual {p0}, Lcom/adcolony/sdk/m;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 490
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
    .line 515
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "text"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/m;->z:Ljava/lang/String;

    .line 516
    iget-object v0, p0, Lcom/adcolony/sdk/m;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setText(Ljava/lang/CharSequence;)V

    .line 517
    return-void
.end method

.method j(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "font_family"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/m;->s:I

    packed-switch v0, :pswitch_data_0

    .line 542
    :goto_0
    return-void

    .line 530
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 533
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 536
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 539
    :pswitch_3
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 527
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
    .line 552
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "visible"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 553
    if-eqz v0, :cond_0

    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setVisibility(I)V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/m;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const v7, 0xff00

    const/4 v1, 0x1

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 127
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

    .line 131
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 137
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 138
    const-string v5, "view_id"

    iget v6, p0, Lcom/adcolony/sdk/m;->m:I

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 139
    const-string v5, "ad_session_id"

    iget-object v6, p0, Lcom/adcolony/sdk/m;->w:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 140
    const-string v5, "container_x"

    iget v6, p0, Lcom/adcolony/sdk/m;->n:I

    add-int/2addr v6, v2

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 141
    const-string v5, "container_y"

    iget v6, p0, Lcom/adcolony/sdk/m;->o:I

    add-int/2addr v6, v3

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 142
    const-string v5, "view_x"

    invoke-static {v4, v5, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 143
    const-string v2, "view_y"

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 144
    const-string v2, "id"

    iget-object v3, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->n:I

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 146
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 185
    goto :goto_0

    .line 149
    :pswitch_1
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_began"

    iget-object v3, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 152
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x8

    .line 153
    const-string v2, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/m;->n:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 154
    const-string v2, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/m;->o:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 155
    const-string v2, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 156
    const-string v2, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4, v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 157
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_began"

    iget-object v3, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 160
    :pswitch_3
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-boolean v0, v0, Lcom/adcolony/sdk/c;->q:Z

    if-nez v0, :cond_1

    .line 162
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/adcolony/sdk/m;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    iput-object v0, v2, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 164
    :cond_1
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_ended"

    iget-object v3, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_1

    .line 167
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v7

    shr-int/lit8 v0, v0, 0x8

    .line 168
    const-string v2, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/m;->n:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 169
    const-string v2, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/adcolony/sdk/m;->o:I

    add-int/2addr v3, v5

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 170
    const-string v2, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 171
    const-string v2, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4, v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 172
    iget-object v0, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget-boolean v0, v0, Lcom/adcolony/sdk/c;->q:Z

    if-nez v0, :cond_2

    .line 174
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/adcolony/sdk/m;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    iput-object v0, v2, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 176
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_ended"

    iget-object v3, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 179
    :pswitch_5
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_cancelled"

    iget-object v3, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 182
    :pswitch_6
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdContainer.on_touch_moved"

    iget-object v3, p0, Lcom/adcolony/sdk/m;->A:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v0, v2, v3, v4}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_1

    .line 146
    nop

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
