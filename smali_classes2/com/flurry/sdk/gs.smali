.class Lcom/flurry/sdk/gs;
.super Lcom/flurry/sdk/gv;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static E:Ljava/lang/String;

.field private static final H:I

.field private static final b:Ljava/lang/String;

.field private static c:I


# instance fields
.field private A:F

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/de;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/flurry/sdk/fn;

.field private I:Z

.field private J:Z

.field a:Landroid/widget/FrameLayout$LayoutParams;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/flurry/sdk/gv$a;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/content/Context;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/ImageView;

.field private w:I

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gs;->b:Ljava/lang/String;

    .line 37
    const/16 v0, 0x3c

    sput v0, Lcom/flurry/sdk/gs;->c:I

    .line 70
    const-string v0, "Sponsored"

    sput-object v0, Lcom/flurry/sdk/gs;->E:Ljava/lang/String;

    .line 75
    const/16 v0, 0x32

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/gs;->H:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/gv$a;Ljava/util/List;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/gv$a;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/de;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 80
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gv;-><init>(Landroid/content/Context;)V

    .line 60
    iput v2, p0, Lcom/flurry/sdk/gs;->w:I

    .line 61
    iput v2, p0, Lcom/flurry/sdk/gs;->x:I

    .line 62
    iput v1, p0, Lcom/flurry/sdk/gs;->y:I

    .line 64
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/flurry/sdk/gs;->z:F

    .line 65
    const/high16 v0, 0x418c0000    # 17.5f

    iput v0, p0, Lcom/flurry/sdk/gs;->A:F

    .line 66
    iput-boolean v2, p0, Lcom/flurry/sdk/gs;->B:Z

    .line 123
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    iput-object p1, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gv$a;

    .line 83
    new-instance v0, Lcom/flurry/sdk/fn;

    invoke-direct {v0}, Lcom/flurry/sdk/fn;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->G:Lcom/flurry/sdk/fn;

    .line 84
    iput-object p3, p0, Lcom/flurry/sdk/gs;->F:Ljava/util/List;

    .line 85
    iput p4, p0, Lcom/flurry/sdk/gs;->y:I

    .line 86
    iput-boolean p5, p0, Lcom/flurry/sdk/gs;->B:Z

    .line 88
    const-string v0, "headline"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gs;->C:Ljava/lang/String;

    .line 89
    const-string v0, "source"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gs;->D:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/flurry/sdk/fe;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/gs;->I:Z

    .line 1169
    new-instance v0, Lcom/flurry/sdk/hi;

    invoke-direct {v0}, Lcom/flurry/sdk/hi;-><init>()V

    .line 1170
    invoke-virtual {v0}, Lcom/flurry/sdk/hi;->g()V

    .line 1302
    iget-object v1, v0, Lcom/flurry/sdk/hi;->f:Landroid/graphics/Bitmap;

    .line 1172
    iput-object v1, p0, Lcom/flurry/sdk/gs;->f:Landroid/graphics/Bitmap;

    .line 1306
    iget-object v1, v0, Lcom/flurry/sdk/hi;->g:Landroid/graphics/Bitmap;

    .line 1173
    iput-object v1, p0, Lcom/flurry/sdk/gs;->g:Landroid/graphics/Bitmap;

    .line 1314
    iget-object v1, v0, Lcom/flurry/sdk/hi;->h:Landroid/graphics/Bitmap;

    .line 1174
    iput-object v1, p0, Lcom/flurry/sdk/gs;->h:Landroid/graphics/Bitmap;

    .line 1318
    iget-object v0, v0, Lcom/flurry/sdk/hi;->i:Landroid/graphics/Bitmap;

    .line 1175
    iput-object v0, p0, Lcom/flurry/sdk/gs;->i:Landroid/graphics/Bitmap;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gv$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flurry/sdk/gs;->e:Lcom/flurry/sdk/gv$a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/flurry/sdk/gs;->F:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/flurry/sdk/gs;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/de;

    .line 564
    iget-object v2, v0, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    iget-object v0, v0, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    .line 569
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/gs;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/flurry/sdk/gs;->B:Z

    return p1
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    .line 220
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 221
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 222
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 223
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gs$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gs$1;-><init>(Lcom/flurry/sdk/gs;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    .line 253
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 254
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 255
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gs$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gs$2;-><init>(Lcom/flurry/sdk/gs;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    .line 285
    iget-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 286
    iget-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 287
    iget-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 288
    iget-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gs$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gs$3;-><init>(Lcom/flurry/sdk/gs;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 316
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    .line 317
    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 318
    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 319
    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gs$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gs$4;-><init>(Lcom/flurry/sdk/gs;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    return-void
.end method

.method private p()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 548
    iget-boolean v0, p0, Lcom/flurry/sdk/gs;->I:Z

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    sget v1, Lcom/flurry/sdk/gs;->H:I

    sget v2, Lcom/flurry/sdk/gs;->H:I

    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 550
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    sget v1, Lcom/flurry/sdk/gs;->H:I

    sget v2, Lcom/flurry/sdk/gs;->H:I

    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 551
    iget-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    sget v1, Lcom/flurry/sdk/gs;->H:I

    sget v2, Lcom/flurry/sdk/gs;->H:I

    sget v3, Lcom/flurry/sdk/gs;->H:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 552
    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    sget v1, Lcom/flurry/sdk/gs;->H:I

    sget v2, Lcom/flurry/sdk/gs;->H:I

    sget v3, Lcom/flurry/sdk/gs;->H:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 559
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 555
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 556
    iget-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 557
    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method private q()I
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/flurry/sdk/gs;->w:I

    .line 120
    iput v0, p0, Lcom/flurry/sdk/gs;->x:I

    .line 121
    return-void
.end method

.method public final a(FF)V
    .locals 0

    .prologue
    .line 638
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 643
    return-void
.end method

.method public final b(I)V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v11, -0x1

    const/16 v10, 0xa

    const/4 v7, -0x2

    const/4 v9, 0x0

    .line 360
    iget-object v0, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 366
    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 367
    if-eqz v0, :cond_1

    .line 368
    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2348
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    .line 2349
    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2350
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v11, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2354
    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2355
    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v1, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    .line 3180
    iget-object v0, p0, Lcom/flurry/sdk/gs;->r:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 3181
    iget-object v0, p0, Lcom/flurry/sdk/gs;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3182
    if-eqz v0, :cond_2

    .line 3183
    iget-object v2, p0, Lcom/flurry/sdk/gs;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3187
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gs;->r:Landroid/widget/RelativeLayout;

    .line 3188
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3193
    iget-object v3, p0, Lcom/flurry/sdk/gs;->r:Landroid/widget/RelativeLayout;

    .line 3266
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 3267
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3268
    if-eqz v0, :cond_3

    .line 3269
    iget-object v4, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3273
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    if-nez v0, :cond_4

    .line 3274
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->m()V

    .line 3276
    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3277
    sget v4, Lcom/flurry/sdk/gs;->c:I

    invoke-virtual {v0, v4, v9, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3278
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3279
    iget-object v4, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3280
    iget-object v4, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3194
    iget-object v3, p0, Lcom/flurry/sdk/gs;->r:Landroid/widget/RelativeLayout;

    .line 4233
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 4234
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4235
    if-eqz v0, :cond_5

    .line 4236
    iget-object v4, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4240
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    if-nez v0, :cond_6

    .line 4241
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->l()V

    .line 4244
    :cond_6
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4245
    sget v4, Lcom/flurry/sdk/gs;->c:I

    invoke-virtual {v0, v4, v9, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 4246
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4247
    iget-object v4, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4248
    iget-object v4, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3195
    iget-object v3, p0, Lcom/flurry/sdk/gs;->r:Landroid/widget/RelativeLayout;

    .line 4297
    iget-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    .line 4298
    iget-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4299
    if-eqz v0, :cond_7

    .line 4300
    iget-object v4, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4304
    :cond_7
    iget-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    if-nez v0, :cond_8

    .line 4305
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->n()V

    .line 4308
    :cond_8
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4309
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4310
    iget-object v4, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4311
    iget-object v4, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4312
    iget-object v4, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3196
    iget-object v3, p0, Lcom/flurry/sdk/gs;->r:Landroid/widget/RelativeLayout;

    .line 4329
    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    .line 4330
    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4331
    if-eqz v0, :cond_9

    .line 4332
    iget-object v4, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4336
    :cond_9
    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    if-nez v0, :cond_a

    .line 4337
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->o()V

    .line 4340
    :cond_a
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4341
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4342
    iget-object v4, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4343
    iget-object v4, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4344
    iget-object v4, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3198
    iget-boolean v0, p0, Lcom/flurry/sdk/gs;->B:Z

    if-eqz v0, :cond_c

    .line 3199
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3200
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3207
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/gs;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    .line 377
    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    .line 4468
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/gs;->q:Landroid/widget/LinearLayout;

    .line 4469
    iget-object v1, p0, Lcom/flurry/sdk/gs;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4470
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4475
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4479
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4485
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flurry/sdk/gs;->p:Landroid/widget/LinearLayout;

    .line 4486
    iget-object v4, p0, Lcom/flurry/sdk/gs;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4487
    iget-object v4, p0, Lcom/flurry/sdk/gs;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4488
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 4493
    const/4 v5, 0x3

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 4494
    sget v5, Lcom/flurry/sdk/gs;->c:I

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4495
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    .line 4496
    iget-object v5, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    invoke-virtual {v5, v9, v10, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4497
    iget-object v5, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flurry/sdk/gs;->C:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4498
    iget-object v5, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    iget v6, p0, Lcom/flurry/sdk/gs;->A:F

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4499
    iget-object v5, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 4500
    iget-object v5, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4501
    iget-object v5, p0, Lcom/flurry/sdk/gs;->p:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4503
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/flurry/sdk/gs;->u:Landroid/widget/TextView;

    .line 4504
    iget-object v5, p0, Lcom/flurry/sdk/gs;->u:Landroid/widget/TextView;

    invoke-virtual {v5, v9, v10, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4505
    iget-object v5, p0, Lcom/flurry/sdk/gs;->u:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flurry/sdk/gs;->D:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4506
    iget-object v5, p0, Lcom/flurry/sdk/gs;->u:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4507
    iget-object v5, p0, Lcom/flurry/sdk/gs;->u:Landroid/widget/TextView;

    iget v6, p0, Lcom/flurry/sdk/gs;->z:F

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4508
    iget-object v5, p0, Lcom/flurry/sdk/gs;->p:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/flurry/sdk/gs;->u:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4509
    iget-object v2, p0, Lcom/flurry/sdk/gs;->q:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/flurry/sdk/gs;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4512
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/gs;->o:Landroid/widget/LinearLayout;

    .line 4513
    iget-object v2, p0, Lcom/flurry/sdk/gs;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4514
    iget-object v2, p0, Lcom/flurry/sdk/gs;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4515
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4519
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 4520
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x50

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4524
    sget v5, Lcom/flurry/sdk/gs;->c:I

    invoke-virtual {v4, v5, v10, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4525
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/flurry/sdk/gs;->v:Landroid/widget/ImageView;

    .line 4526
    iget-object v5, p0, Lcom/flurry/sdk/gs;->v:Landroid/widget/ImageView;

    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 4527
    const-string v5, "secHqBrandingLogo"

    invoke-direct {p0, v5}, Lcom/flurry/sdk/gs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4528
    if-eqz v5, :cond_b

    .line 4529
    iget-object v6, p0, Lcom/flurry/sdk/gs;->G:Lcom/flurry/sdk/fn;

    iget-object v7, p0, Lcom/flurry/sdk/gs;->v:Landroid/widget/ImageView;

    iget v8, p0, Lcom/flurry/sdk/gs;->y:I

    invoke-virtual {v6, v7, v8, v5}, Lcom/flurry/sdk/fn;->a(Landroid/widget/ImageView;ILjava/lang/String;)V

    .line 4531
    :cond_b
    iget-object v5, p0, Lcom/flurry/sdk/gs;->o:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/flurry/sdk/gs;->v:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4532
    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 4533
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/TextView;

    .line 4534
    iget-object v4, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v9, v10, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4535
    iget-object v4, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/TextView;

    sget-object v5, Lcom/flurry/sdk/gs;->E:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4536
    iget-object v4, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/TextView;

    iget v5, p0, Lcom/flurry/sdk/gs;->z:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4537
    iget-object v4, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4538
    iget-object v4, p0, Lcom/flurry/sdk/gs;->o:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4539
    iget-object v3, p0, Lcom/flurry/sdk/gs;->q:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gs;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4541
    iget-object v2, p0, Lcom/flurry/sdk/gs;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4543
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->p()V

    .line 379
    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->requestLayout()V

    goto/16 :goto_0

    .line 3203
    :cond_c
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3204
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 384
    :cond_d
    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    .line 5393
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/gs;->o:Landroid/widget/LinearLayout;

    .line 5394
    iget-object v1, p0, Lcom/flurry/sdk/gs;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5395
    iget-object v1, p0, Lcom/flurry/sdk/gs;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 5396
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5401
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x50

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5405
    sget v3, Lcom/flurry/sdk/gs;->c:I

    invoke-virtual {v2, v3, v10, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 5406
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/gs;->v:Landroid/widget/ImageView;

    .line 5407
    iget-object v3, p0, Lcom/flurry/sdk/gs;->v:Landroid/widget/ImageView;

    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 5408
    const-string v3, "secHqBrandingLogo"

    invoke-direct {p0, v3}, Lcom/flurry/sdk/gs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5409
    if-eqz v3, :cond_e

    .line 5410
    iget-object v4, p0, Lcom/flurry/sdk/gs;->G:Lcom/flurry/sdk/fn;

    iget-object v5, p0, Lcom/flurry/sdk/gs;->v:Landroid/widget/ImageView;

    iget v6, p0, Lcom/flurry/sdk/gs;->y:I

    invoke-virtual {v4, v5, v6, v3}, Lcom/flurry/sdk/fn;->a(Landroid/widget/ImageView;ILjava/lang/String;)V

    .line 5412
    :cond_e
    iget-object v3, p0, Lcom/flurry/sdk/gs;->o:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gs;->v:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5414
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5418
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5422
    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 5424
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/TextView;

    .line 5425
    iget-object v4, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v9, v10, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5426
    iget-object v4, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/TextView;

    sget-object v5, Lcom/flurry/sdk/gs;->E:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5427
    iget-object v4, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/TextView;

    iget v5, p0, Lcom/flurry/sdk/gs;->z:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 5428
    iget-object v4, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5429
    iget-object v4, p0, Lcom/flurry/sdk/gs;->o:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/flurry/sdk/gs;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5431
    const/16 v3, 0xf

    invoke-virtual {v1, v9, v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 5432
    iget-object v3, p0, Lcom/flurry/sdk/gs;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5434
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/gs;->p:Landroid/widget/LinearLayout;

    .line 5435
    iget-object v1, p0, Lcom/flurry/sdk/gs;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5436
    iget-object v1, p0, Lcom/flurry/sdk/gs;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 5437
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5442
    sget v3, Lcom/flurry/sdk/gs;->c:I

    const/16 v4, 0x14

    invoke-virtual {v1, v3, v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 5445
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    .line 5446
    iget-object v3, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v9, v10, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5447
    iget-object v3, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/flurry/sdk/gs;->C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5448
    iget-object v3, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    iget v4, p0, Lcom/flurry/sdk/gs;->A:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 5449
    iget-object v3, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 5450
    iget-object v3, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5451
    iget-object v3, p0, Lcom/flurry/sdk/gs;->p:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gs;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5454
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/gs;->u:Landroid/widget/TextView;

    .line 5455
    iget-object v3, p0, Lcom/flurry/sdk/gs;->u:Landroid/widget/TextView;

    invoke-virtual {v3, v9, v10, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5456
    iget-object v3, p0, Lcom/flurry/sdk/gs;->u:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/flurry/sdk/gs;->D:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5457
    iget-object v3, p0, Lcom/flurry/sdk/gs;->u:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5458
    iget-object v3, p0, Lcom/flurry/sdk/gs;->u:Landroid/widget/TextView;

    iget v4, p0, Lcom/flurry/sdk/gs;->z:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 5459
    iget-object v3, p0, Lcom/flurry/sdk/gs;->p:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gs;->u:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5461
    iget-object v2, p0, Lcom/flurry/sdk/gs;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5463
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->p()V

    .line 386
    iget-object v0, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gs;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->requestLayout()V

    goto/16 :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 577
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/flurry/sdk/gs;->j:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 584
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 591
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/flurry/sdk/gs;->k:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 598
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 605
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/flurry/sdk/gs;->l:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 612
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 619
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/flurry/sdk/gs;->m:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 626
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 647
    invoke-super {p0, p1}, Lcom/flurry/sdk/gv;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 648
    return-void
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 128
    invoke-super {p0, p1}, Lcom/flurry/sdk/gv;->setAnchorView(Landroid/view/View;)V

    .line 129
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    invoke-virtual {p0}, Lcom/flurry/sdk/gs;->removeAllViews()V

    .line 2145
    iget-boolean v0, p0, Lcom/flurry/sdk/gs;->J:Z

    if-nez v0, :cond_2

    .line 2146
    iget-object v0, p0, Lcom/flurry/sdk/gs;->n:Landroid/content/Context;

    .line 2156
    if-eqz v0, :cond_0

    .line 2212
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->m()V

    .line 2213
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->l()V

    .line 2214
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->n()V

    .line 2215
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->o()V

    .line 2162
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->q()I

    move-result v0

    .line 2164
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gs;->b(I)V

    .line 2165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gs;->J:Z

    .line 2152
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/flurry/sdk/gs;->d:Landroid/widget/LinearLayout;

    .line 136
    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 141
    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/flurry/sdk/gs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    return-void

    .line 2149
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/gs;->q()I

    move-result v0

    .line 2150
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gs;->b(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/flurry/sdk/gv;->show()V

    .line 110
    return-void
.end method

.method public show(I)V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/flurry/sdk/gv;->show(I)V

    .line 115
    return-void
.end method
