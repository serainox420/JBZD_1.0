.class public Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;
.super Landroid/widget/RelativeLayout;
.source "SASNativeVideoControlsLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;,
        Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$a;
    }
.end annotation


# static fields
.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/graphics/Typeface;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/Button;

.field private l:Landroid/graphics/Rect;

.field private m:Landroid/graphics/Rect;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/widget/Button;

.field private u:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

.field private v:Landroid/widget/ImageView;

.field private w:Z

.field private x:Landroid/widget/ImageView;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h:Ljava/util/HashMap;

    .line 105
    sget-object v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h:Ljava/util/HashMap;

    const-string v1, "sas_native_video_close_button_label"

    const-string v2, "CLOSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h:Ljava/util/HashMap;

    const-string v1, "sas_native_video_info_button_label"

    const-string v2, "INFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h:Ljava/util/HashMap;

    const-string v1, "sas_native_video_replay_button_label"

    const-string v2, "REPLAY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h:Ljava/util/HashMap;

    const-string v1, "sas_native_video_pause_button_label"

    const-string v2, "PAUSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h:Ljava/util/HashMap;

    const-string v1, "sas_native_video_more_info_button_label"

    const-string v2, "MORE INFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h:Ljava/util/HashMap;

    const-string v1, "sas_native_video_download_button_label"

    const-string v2, "INSTALL NOW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h:Ljava/util/HashMap;

    const-string v1, "sas_native_video_watch_button_label"

    const-string v2, "WATCH MORE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 68
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->e:Z

    .line 70
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f:Z

    .line 77
    const-string v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a:Landroid/graphics/Typeface;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->l:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->m:Landroid/graphics/Rect;

    .line 85
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->n:I

    .line 86
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->o:I

    .line 87
    iput v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->p:I

    .line 88
    iput v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->q:I

    .line 89
    iput v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->r:I

    .line 90
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->s:I

    .line 100
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->y:Z

    .line 174
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->e:Z

    .line 70
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f:Z

    .line 77
    const-string v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a:Landroid/graphics/Typeface;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->l:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->m:Landroid/graphics/Rect;

    .line 85
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->n:I

    .line 86
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->o:I

    .line 87
    iput v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->p:I

    .line 88
    iput v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->q:I

    .line 89
    iput v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->r:I

    .line 90
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->s:I

    .line 100
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->y:Z

    .line 179
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Landroid/content/Context;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->e:Z

    .line 70
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f:Z

    .line 77
    const-string v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a:Landroid/graphics/Typeface;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->l:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->m:Landroid/graphics/Rect;

    .line 85
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->n:I

    .line 86
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->o:I

    .line 87
    iput v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->p:I

    .line 88
    iput v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->q:I

    .line 89
    iput v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->r:I

    .line 90
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->s:I

    .line 100
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->y:Z

    .line 184
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 256
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(II)V

    .line 257
    return-void
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$a;

    .line 251
    invoke-interface {v0, p1, p2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$a;->a(II)V

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 261
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->g:Ljava/util/Vector;

    .line 262
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Landroid/content/Context;)V

    .line 266
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;II)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->p:I

    return p1
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 513
    new-instance v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->u:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    .line 514
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 515
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 516
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 517
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v1

    .line 518
    invoke-virtual {v0, v1, v7, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 519
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->u:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    invoke-virtual {p0, v2, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b:Landroid/widget/Button;

    .line 523
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b:Landroid/widget/Button;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 526
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 527
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 528
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/smartadserver/android/library/f/a;->o:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 529
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v2

    .line 530
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v3

    .line 532
    invoke-virtual {v0, v7, v7, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 533
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b:Landroid/widget/Button;

    invoke-virtual {v4, v0, v8, v8, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 534
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b:Landroid/widget/Button;

    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 535
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b:Landroid/widget/Button;

    const-string v5, "sas_native_video_close_button_label"

    sget-object v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h:Ljava/util/HashMap;

    const-string v6, "sas_native_video_close_button_label"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b:Landroid/widget/Button;

    new-instance v4, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$5;

    invoke-direct {v4, p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$5;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 544
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 545
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 546
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v4

    .line 547
    iget-object v5, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b:Landroid/widget/Button;

    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 548
    iget-object v5, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b:Landroid/widget/Button;

    invoke-virtual {p0, v5, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c:Landroid/widget/Button;

    .line 552
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c:Landroid/widget/Button;

    iget-object v5, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 553
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 554
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 555
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/smartadserver/android/library/f/a;->n:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 556
    invoke-virtual {v0, v7, v7, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 557
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c:Landroid/widget/Button;

    invoke-virtual {v2, v8, v8, v0, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 558
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 559
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c:Landroid/widget/Button;

    new-instance v2, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$6;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$6;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 566
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 567
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 568
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c:Landroid/widget/Button;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 569
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c:Landroid/widget/Button;

    invoke-virtual {p0, v2, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i:Landroid/widget/FrameLayout;

    .line 573
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 574
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i:Landroid/widget/FrameLayout;

    const/16 v4, 0x96

    invoke-static {v4, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 575
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 576
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, v7, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 581
    new-instance v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$7;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$7;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->j:Landroid/widget/LinearLayout;

    .line 605
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 606
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 607
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 609
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    .line 612
    const-string v2, "sas_native_video_replay_button_label"

    sget-object v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h:Ljava/util/HashMap;

    const-string v4, "sas_native_video_replay_button_label"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 613
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 615
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 616
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 617
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    iget v4, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->n:I

    int-to-float v4, v4

    invoke-virtual {v2, v7, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 620
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 621
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 622
    iget v4, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->n:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 623
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->l:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v7, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 625
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v4, Lcom/smartadserver/android/library/f/a;->q:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 626
    iget v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->o:I

    iget v4, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->o:I

    invoke-virtual {v0, v7, v7, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 627
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    invoke-virtual {v2, v8, v0, v8, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 628
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 630
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    new-instance v2, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$8;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$8;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 639
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    .line 640
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 641
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 642
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 643
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 644
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    iget v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->n:I

    int-to-float v2, v2

    invoke-virtual {v0, v7, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 645
    const-string v0, ""

    invoke-virtual {p0, v7, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(ILjava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 648
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    new-instance v2, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$9;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$9;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 657
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->v:Landroid/widget/ImageView;

    .line 658
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->v:Landroid/widget/ImageView;

    sget-object v2, Lcom/smartadserver/android/library/f/a;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 659
    const/16 v0, 0x42

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    .line 660
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 661
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 662
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->x:Landroid/widget/ImageView;

    .line 666
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->y:Z

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setMuted(Z)V

    .line 667
    const/16 v0, 0x28

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    .line 668
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 669
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 670
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 672
    invoke-virtual {v2, v7, v7, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 673
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->x:Landroid/widget/ImageView;

    new-instance v1, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$10;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$10;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    invoke-virtual {p0, v7}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setActionLayerVisible(Z)V

    .line 684
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->x:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    return-void
.end method

.method private b(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 786
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->s:I

    iget v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->s:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->s:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 787
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->s:I

    iget v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->s:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->s:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 790
    if-eqz p1, :cond_1

    .line 791
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 792
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 793
    iget v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 794
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 795
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->m:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 797
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 798
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 799
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->q:I

    .line 806
    :goto_0
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setMinWidth(I)V

    .line 807
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setMinWidth(I)V

    .line 808
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 809
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 811
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    .line 812
    mul-int/lit8 v0, v0, 0x2

    if-le v0, v1, :cond_2

    .line 813
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 817
    :cond_0
    :goto_1
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 802
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 803
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->r:I

    goto :goto_0

    .line 814
    :cond_2
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->d:Z

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->t:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->q:I

    return p1
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->w:Z

    return v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->r:I

    return p1
.end method

.method static synthetic d(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->v:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->u:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$1;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

.method static synthetic h(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->e:Z

    return v0
.end method

.method static synthetic i(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic j(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->p:I

    return v0
.end method

.method static synthetic l(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->y:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->u:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a()V

    .line 163
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 725
    .line 726
    const-string v0, ""

    .line 727
    packed-switch p1, :pswitch_data_0

    .line 742
    const-string v1, "sas_native_video_more_info_button_label"

    sget-object v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h:Ljava/util/HashMap;

    const-string v2, "sas_native_video_more_info_button_label"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 743
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/smartadserver/android/library/f/a;->v:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 747
    :goto_0
    iget v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->o:I

    iget v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->o:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 754
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->h()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$2;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 782
    return-void

    .line 729
    :pswitch_0
    const-string v1, "sas_native_video_watch_button_label"

    sget-object v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h:Ljava/util/HashMap;

    const-string v2, "sas_native_video_watch_button_label"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 730
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/smartadserver/android/library/f/a;->t:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 733
    :pswitch_1
    const-string v1, "sas_native_video_download_button_label"

    sget-object v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h:Ljava/util/HashMap;

    const-string v2, "sas_native_video_download_button_label"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 734
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/smartadserver/android/library/f/a;->u:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 738
    :pswitch_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/smartadserver/android/library/f/a;->v:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$a;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->u:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a(Z)V

    .line 212
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->u:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->e:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 207
    :goto_0
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Z)V

    .line 208
    return-void

    .line 206
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->e:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->y:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBigPlayButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->v:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setActionLayerVisible(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 703
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 704
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->g()V

    .line 706
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->w:Z

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->x:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 709
    :cond_0
    if-eqz p1, :cond_1

    .line 711
    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Z)V

    .line 713
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 703
    goto :goto_0

    :cond_3
    move v2, v1

    .line 707
    goto :goto_1
.end method

.method public setCurrentPosition(I)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->u:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a(IZ)V

    .line 270
    return-void
.end method

.method public setFullscreenMode(Z)V
    .locals 2

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f:Z

    .line 189
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->w:Z

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    :goto_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->g()V

    .line 196
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setPlaying(Z)V

    .line 197
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->b:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInterstitialMode(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->w:Z

    .line 139
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f:Z

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setFullscreenMode(Z)V

    .line 140
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0, v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setPlaying(Z)V

    .line 143
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->v:Landroid/widget/ImageView;

    new-instance v1, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$3;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$3;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->v:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 153
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->x:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMuted(Z)V
    .locals 2

    .prologue
    .line 689
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->y:Z

    .line 691
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->y:Z

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->x:Landroid/widget/ImageView;

    sget-object v1, Lcom/smartadserver/android/library/f/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 696
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->x:Landroid/widget/ImageView;

    sget-object v1, Lcom/smartadserver/android/library/f/a;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setOpenActionEnabled(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->d:Z

    .line 116
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->g()V

    .line 117
    return-void
.end method

.method public setPlaying(Z)V
    .locals 2

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->e:Z

    .line 216
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->w:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 218
    :goto_0
    new-instance v1, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$4;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;ZZ)V

    .line 227
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 233
    :goto_1
    return-void

    .line 216
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :cond_2
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->h()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public setReplayEnabled(Z)V
    .locals 2

    .prologue
    .line 277
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->k:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 278
    return-void

    .line 277
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSwipeListenerOnActionLayer(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 717
    return-void
.end method

.method public setVideoDuration(I)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->u:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a(I)V

    .line 274
    return-void
.end method
