.class public Lcom/flurry/sdk/fd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;

.field private static final i:I

.field private static final j:I

.field private static final k:I


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/RelativeLayout;

.field c:Landroid/app/Dialog;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/TextView;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lcom/flurry/sdk/ey;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/flurry/sdk/fd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fd;->d:Ljava/lang/String;

    .line 57
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/fd;->i:I

    .line 58
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/fd;->j:I

    .line 59
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/fd;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/ey;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ey;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/flurry/sdk/fd;->b:Landroid/widget/RelativeLayout;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/fd;->m:Z

    .line 72
    iput-object v1, p0, Lcom/flurry/sdk/fd;->n:Lcom/flurry/sdk/ey;

    .line 79
    invoke-virtual {p1}, Lcom/flurry/sdk/ey;->b()Lcom/flurry/sdk/ey$a;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/ey$a;->a:Lcom/flurry/sdk/ey$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ey$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/fd;->m:Z

    .line 80
    iput-object p1, p0, Lcom/flurry/sdk/fd;->n:Lcom/flurry/sdk/ey;

    .line 81
    iput-object p2, p0, Lcom/flurry/sdk/fd;->l:Ljava/util/List;

    .line 1453
    invoke-static {}, Lcom/flurry/sdk/lw;->c()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1454
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/flurry/sdk/fd;->o:I

    .line 1455
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/flurry/sdk/fd;->p:I

    .line 84
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/flurry/sdk/fd;->j:I

    return v0
.end method

.method static synthetic a(Lcom/flurry/sdk/fd;)Lcom/flurry/sdk/ey;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/fd;->n:Lcom/flurry/sdk/ey;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/fd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/flurry/sdk/fd;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/fd;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 12

    .prologue
    const/16 v11, 0x24

    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 7342
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7343
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 7344
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7345
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7346
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7348
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 7349
    const-string v2, "#36465d"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 7350
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x32

    invoke-static {v3}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v3

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7351
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7353
    new-instance v2, Landroid/widget/ImageButton;

    invoke-direct {v2, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 7354
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7355
    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setId(I)V

    .line 7356
    invoke-static {}, Lcom/flurry/sdk/hi;->f()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7358
    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 7359
    sget v3, Lcom/flurry/sdk/fd;->j:I

    sget v4, Lcom/flurry/sdk/fd;->j:I

    sget v5, Lcom/flurry/sdk/fd;->k:I

    sget v6, Lcom/flurry/sdk/fd;->j:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 7360
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v11}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v4

    invoke-static {v11}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7361
    sget v4, Lcom/flurry/sdk/fd;->i:I

    sget v5, Lcom/flurry/sdk/fd;->i:I

    invoke-virtual {v3, v4, v8, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 7363
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7364
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7366
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7368
    new-instance v3, Lcom/flurry/sdk/fd$5;

    invoke-direct {v3, p0, p1}, Lcom/flurry/sdk/fd$5;-><init>(Lcom/flurry/sdk/fd;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7377
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7378
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 7379
    invoke-static {}, Lcom/flurry/sdk/eg;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7380
    const/4 v3, 0x2

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7381
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7382
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7383
    const/16 v4, 0x67

    invoke-virtual {v3, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7384
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7387
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7388
    sget v3, Lcom/flurry/sdk/fd;->j:I

    sget v4, Lcom/flurry/sdk/fd;->j:I

    invoke-virtual {v2, v8, v3, v8, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 7389
    invoke-static {}, Lcom/flurry/sdk/hi;->d()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7390
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7391
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7392
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7395
    new-instance v1, Lcom/flurry/sdk/fd$6;

    iget-object v2, p0, Lcom/flurry/sdk/fd;->l:Ljava/util/List;

    invoke-direct {v1, p0, p1, v2, p1}, Lcom/flurry/sdk/fd$6;-><init>(Lcom/flurry/sdk/fd;Landroid/content/Context;Ljava/util/List;Landroid/content/Context;)V

    .line 7433
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 7434
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 7435
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 7436
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/flurry/sdk/fd;->p:I

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7437
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7439
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7440
    new-instance v0, Lcom/flurry/sdk/fd$7;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/fd$7;-><init>(Lcom/flurry/sdk/fd;Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    return-void
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/flurry/sdk/fd;->i:I

    return v0
.end method

.method static synthetic b(Lcom/flurry/sdk/fd;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/fd;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/fd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/flurry/sdk/fd;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/fd;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/fd;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/flurry/sdk/fd;->k:I

    return v0
.end method

.method static synthetic c(Lcom/flurry/sdk/fd;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/flurry/sdk/fd;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/flurry/sdk/fd;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/fd;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/sdk/fd;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/fd;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/flurry/sdk/fd;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/fd;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/flurry/sdk/fd;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/fd;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/flurry/sdk/fd;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/fd;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/flurry/sdk/fd;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/fd;->e:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, -0x2

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 117
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 119
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2134
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2135
    const-string v2, "#36465d"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2136
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x32

    invoke-static {v3}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v3

    invoke-direct {v2, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2137
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2140
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2141
    invoke-static {}, Lcom/flurry/sdk/eg;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2142
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 2143
    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v11, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 2144
    sget v3, Lcom/flurry/sdk/fd;->k:I

    sget v4, Lcom/flurry/sdk/fd;->j:I

    sget v5, Lcom/flurry/sdk/fd;->j:I

    sget v6, Lcom/flurry/sdk/fd;->j:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 2145
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 2146
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 2147
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2148
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2149
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2150
    new-instance v3, Lcom/flurry/sdk/fd$2;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/fd$2;-><init>(Lcom/flurry/sdk/fd;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2159
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2160
    sget v3, Lcom/flurry/sdk/fd;->j:I

    sget v4, Lcom/flurry/sdk/fd;->j:I

    invoke-virtual {v2, v8, v3, v8, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2161
    invoke-static {}, Lcom/flurry/sdk/hi;->d()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2162
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2163
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2164
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2167
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2168
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2169
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 2170
    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v11, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 2171
    sget v3, Lcom/flurry/sdk/fd;->k:I

    sget v4, Lcom/flurry/sdk/fd;->j:I

    sget v5, Lcom/flurry/sdk/fd;->j:I

    sget v6, Lcom/flurry/sdk/fd;->j:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 2172
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 2173
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 2174
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2175
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2176
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2177
    new-instance v0, Lcom/flurry/sdk/fd$3;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/fd$3;-><init>(Lcom/flurry/sdk/fd;Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-boolean v0, p0, Lcom/flurry/sdk/fd;->m:Z

    if-eqz v0, :cond_2

    .line 2200
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2201
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2202
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/flurry/sdk/fd;->p:I

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v0, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2203
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2206
    iget-object v0, p0, Lcom/flurry/sdk/fd;->n:Lcom/flurry/sdk/ey;

    check-cast v0, Lcom/flurry/sdk/ex;

    .line 2209
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/fd;->f:Landroid/widget/EditText;

    .line 2210
    iget-object v3, p0, Lcom/flurry/sdk/fd;->f:Landroid/widget/EditText;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v11, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 2211
    iget-object v3, p0, Lcom/flurry/sdk/fd;->f:Landroid/widget/EditText;

    const-string v4, "#444444"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2212
    iget-object v3, p0, Lcom/flurry/sdk/fd;->f:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 2213
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2214
    const/high16 v4, 0x40000000    # 2.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2215
    sget v4, Lcom/flurry/sdk/fd;->i:I

    sget v5, Lcom/flurry/sdk/fd;->i:I

    sget v6, Lcom/flurry/sdk/fd;->i:I

    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2216
    iget-object v4, p0, Lcom/flurry/sdk/fd;->f:Landroid/widget/EditText;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2217
    iget-object v3, p0, Lcom/flurry/sdk/fd;->q:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3071
    iget-object v3, v0, Lcom/flurry/sdk/ex;->a:Ljava/lang/String;

    .line 2218
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2219
    iget-object v3, p0, Lcom/flurry/sdk/fd;->f:Landroid/widget/EditText;

    invoke-static {}, Lcom/flurry/sdk/eg;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2228
    :goto_0
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2229
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2230
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2231
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2232
    sget v5, Lcom/flurry/sdk/fd;->k:I

    sget v6, Lcom/flurry/sdk/fd;->j:I

    sget v7, Lcom/flurry/sdk/fd;->k:I

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2233
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2234
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v2

    .line 4145
    iget-object v2, v2, Lcom/flurry/sdk/jy;->c:Landroid/os/Handler;

    .line 2234
    new-instance v4, Lcom/flurry/sdk/eg$a;

    .line 5079
    iget-object v0, v0, Lcom/flurry/sdk/ex;->b:Ljava/lang/String;

    .line 2234
    invoke-direct {v4, v0, v3}, Lcom/flurry/sdk/eg$a;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/fd;->l:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7291
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7292
    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7293
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v12}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v4

    invoke-direct {v3, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7294
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7296
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 7297
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x37

    invoke-static {v4}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v4

    invoke-direct {v3, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7298
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7300
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/fd;->e:Landroid/widget/ImageView;

    .line 7301
    iget-object v1, p0, Lcom/flurry/sdk/fd;->e:Landroid/widget/ImageView;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 7302
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x24

    invoke-static {v3}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v3

    const/16 v4, 0x24

    invoke-static {v4}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7303
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7304
    sget v3, Lcom/flurry/sdk/fd;->j:I

    sget v4, Lcom/flurry/sdk/fd;->j:I

    invoke-virtual {v1, v3, v8, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 7305
    iget-object v3, p0, Lcom/flurry/sdk/fd;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7306
    invoke-static {}, Lcom/flurry/sdk/en;->a()Lcom/flurry/sdk/en;

    move-result-object v1

    iget-object v3, p0, Lcom/flurry/sdk/fd;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v3}, Lcom/flurry/sdk/en;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 7308
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/fd;->h:Landroid/widget/TextView;

    .line 7309
    iget-object v1, p0, Lcom/flurry/sdk/fd;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7310
    iget-object v0, p0, Lcom/flurry/sdk/fd;->h:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7311
    iget-object v0, p0, Lcom/flurry/sdk/fd;->h:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 7312
    iget-object v0, p0, Lcom/flurry/sdk/fd;->h:Landroid/widget/TextView;

    const-string v1, "#444444"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7313
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7314
    const/16 v1, 0x64

    invoke-virtual {v0, v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7315
    iget-object v1, p0, Lcom/flurry/sdk/fd;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7317
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7318
    invoke-static {}, Lcom/flurry/sdk/hi;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7319
    sget v1, Lcom/flurry/sdk/fd;->j:I

    sget v3, Lcom/flurry/sdk/fd;->j:I

    sget v4, Lcom/flurry/sdk/fd;->j:I

    sget v5, Lcom/flurry/sdk/fd;->j:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 7320
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x24

    invoke-static {v3}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v3

    const/16 v4, 0x24

    invoke-static {v4}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7321
    sget v3, Lcom/flurry/sdk/fd;->j:I

    sget v4, Lcom/flurry/sdk/fd;->i:I

    invoke-virtual {v1, v3, v8, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 7322
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7323
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7325
    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7327
    new-instance v1, Lcom/flurry/sdk/fd$4;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/fd$4;-><init>(Lcom/flurry/sdk/fd;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void

    .line 2221
    :cond_0
    iget-object v3, p0, Lcom/flurry/sdk/fd;->f:Landroid/widget/EditText;

    .line 4071
    iget-object v4, v0, Lcom/flurry/sdk/ex;->a:Ljava/lang/String;

    .line 2221
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2224
    :cond_1
    iget-object v3, p0, Lcom/flurry/sdk/fd;->f:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/flurry/sdk/fd;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 5238
    :cond_2
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5239
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5240
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5241
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5244
    iget-object v0, p0, Lcom/flurry/sdk/fd;->n:Lcom/flurry/sdk/ey;

    check-cast v0, Lcom/flurry/sdk/fa;

    .line 5247
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/fd;->g:Landroid/widget/EditText;

    .line 5248
    iget-object v3, p0, Lcom/flurry/sdk/fd;->g:Landroid/widget/EditText;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v11, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 5249
    iget-object v3, p0, Lcom/flurry/sdk/fd;->g:Landroid/widget/EditText;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 5250
    iget-object v3, p0, Lcom/flurry/sdk/fd;->g:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 5251
    iget-object v3, p0, Lcom/flurry/sdk/fd;->g:Landroid/widget/EditText;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 5252
    iget-object v3, p0, Lcom/flurry/sdk/fd;->g:Landroid/widget/EditText;

    sget v4, Lcom/flurry/sdk/fd;->j:I

    sget v5, Lcom/flurry/sdk/fd;->j:I

    sget v6, Lcom/flurry/sdk/fd;->j:I

    invoke-virtual {v3, v4, v5, v8, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 5253
    iget-object v3, p0, Lcom/flurry/sdk/fd;->r:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6057
    iget-object v3, v0, Lcom/flurry/sdk/fa;->a:Ljava/lang/String;

    .line 5254
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5255
    iget-object v3, p0, Lcom/flurry/sdk/fd;->g:Landroid/widget/EditText;

    .line 7057
    iget-object v4, v0, Lcom/flurry/sdk/fa;->a:Ljava/lang/String;

    .line 5255
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5263
    :goto_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5265
    iget-object v4, p0, Lcom/flurry/sdk/fd;->g:Landroid/widget/EditText;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5268
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5269
    const v4, -0x777778

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5270
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v12}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v5

    invoke-direct {v4, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5271
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5274
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5275
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v11, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 5276
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 5277
    sget v4, Lcom/flurry/sdk/fd;->j:I

    sget v5, Lcom/flurry/sdk/fd;->j:I

    sget v6, Lcom/flurry/sdk/fd;->j:I

    invoke-virtual {v3, v4, v5, v8, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 5278
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 5279
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 7061
    iget-object v0, v0, Lcom/flurry/sdk/fa;->b:Ljava/lang/String;

    .line 5280
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5281
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setLines(I)V

    .line 5282
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 5283
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5285
    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 5257
    :cond_3
    iget-object v3, p0, Lcom/flurry/sdk/fd;->g:Landroid/widget/EditText;

    invoke-static {}, Lcom/flurry/sdk/eg;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 5260
    :cond_4
    iget-object v3, p0, Lcom/flurry/sdk/fd;->g:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/flurry/sdk/fd;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
