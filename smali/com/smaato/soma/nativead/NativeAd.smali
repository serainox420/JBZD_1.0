.class public Lcom/smaato/soma/nativead/NativeAd;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/smaato/soma/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/nativead/NativeAd$a;,
        Lcom/smaato/soma/nativead/NativeAd$d;,
        Lcom/smaato/soma/nativead/NativeAd$c;,
        Lcom/smaato/soma/nativead/NativeAd$b;,
        Lcom/smaato/soma/nativead/NativeAd$NativeType;
    }
.end annotation


# static fields
.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/RelativeLayout;

.field private final B:Ljava/lang/String;

.field private C:Lcom/smaato/soma/c;

.field private D:Landroid/widget/TextView;

.field private E:Z

.field private F:Landroid/content/Context;

.field a:Landroid/widget/HorizontalScrollView;

.field private d:Lcom/smaato/soma/internal/requests/settings/UserSettings;

.field private e:Lcom/smaato/soma/d;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/facebook/ads/MediaView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/RatingBar;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Lcom/smaato/soma/nativead/NativeAd$d;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/mediation/n;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private x:Landroid/widget/Button;

.field private y:Ljava/util/concurrent/atomic/AtomicInteger;

.field private z:Lcom/smaato/soma/nativead/NativeAd$NativeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    const-string v0, "right"

    sput-object v0, Lcom/smaato/soma/nativead/NativeAd;->b:Ljava/lang/String;

    .line 173
    const-string v0, "left"

    sput-object v0, Lcom/smaato/soma/nativead/NativeAd;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x46

    const/16 v2, 0xf

    const/4 v1, 0x0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/smaato/soma/internal/requests/settings/UserSettings;

    invoke-direct {v0}, Lcom/smaato/soma/internal/requests/settings/UserSettings;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->d:Lcom/smaato/soma/internal/requests/settings/UserSettings;

    .line 72
    new-instance v0, Lcom/smaato/soma/d;

    invoke-direct {v0}, Lcom/smaato/soma/d;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->e:Lcom/smaato/soma/d;

    .line 121
    iput-boolean v1, p0, Lcom/smaato/soma/nativead/NativeAd;->l:Z

    .line 122
    iput-boolean v1, p0, Lcom/smaato/soma/nativead/NativeAd;->m:Z

    .line 138
    iput v3, p0, Lcom/smaato/soma/nativead/NativeAd;->n:I

    .line 139
    iput v3, p0, Lcom/smaato/soma/nativead/NativeAd;->o:I

    .line 141
    const/16 v0, 0x14

    iput v0, p0, Lcom/smaato/soma/nativead/NativeAd;->p:I

    .line 142
    iput v2, p0, Lcom/smaato/soma/nativead/NativeAd;->q:I

    .line 143
    iput v2, p0, Lcom/smaato/soma/nativead/NativeAd;->r:I

    .line 144
    const/4 v0, 0x5

    iput v0, p0, Lcom/smaato/soma/nativead/NativeAd;->s:I

    .line 151
    iput-object v4, p0, Lcom/smaato/soma/nativead/NativeAd;->u:Ljava/util/ArrayList;

    .line 153
    iput-object v4, p0, Lcom/smaato/soma/nativead/NativeAd;->v:Ljava/util/Vector;

    .line 274
    sget-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->ALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->z:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    .line 282
    const-string v0, "NATIVE"

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->B:Ljava/lang/String;

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smaato/soma/nativead/NativeAd;->E:Z

    .line 290
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/nativead/NativeAd;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/smaato/soma/nativead/NativeAd;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd;->v:Ljava/util/Vector;

    return-object p1
.end method

.method private a(Landroid/widget/RelativeLayout;)V
    .locals 1

    .prologue
    .line 1446
    :try_start_0
    invoke-direct {p0}, Lcom/smaato/soma/nativead/NativeAd;->c()V

    .line 1447
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->D:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    :goto_0
    return-void

    .line 1448
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;)V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 950
    new-instance v0, Landroid/widget/RatingBar;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x101007d

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    .line 951
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 954
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 956
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 957
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    iget v1, p0, Lcom/smaato/soma/nativead/NativeAd;->s:I

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 958
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 960
    invoke-interface {p2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->h()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    invoke-interface {p2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->h()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/nativead/NativeAd;->a(Landroid/widget/RatingBar;)Lcom/smaato/soma/nativead/NativeAd;

    .line 964
    return-void
.end method

.method private a(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 548
    :try_start_0
    sget-object v0, Lcom/smaato/soma/nativead/NativeAd$5;->a:[I

    invoke-virtual {p1}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 569
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "NATIVE"

    const-string v2, "Sent NativeAdType is not recognized!"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 582
    :goto_0
    return-void

    .line 551
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/smaato/soma/nativead/NativeAd;->b(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "NATIVE"

    const-string v2, "Problem in creating Dynamic createNativeLayout()"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0

    .line 554
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smaato/soma/nativead/NativeAd;->b(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;)V

    goto :goto_0

    .line 557
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/smaato/soma/nativead/NativeAd;->b(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;)V

    goto :goto_0

    .line 560
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;)V

    goto :goto_0

    .line 563
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/smaato/soma/nativead/NativeAd;->b(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;)V

    goto :goto_0

    .line 566
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/smaato/soma/nativead/NativeAd;->b(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;II)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 924
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    .line 926
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 927
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 928
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    .line 932
    :cond_0
    invoke-interface {p2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 933
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$c;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Lcom/smaato/soma/nativead/NativeAd$c;-><init>(Lcom/smaato/soma/nativead/NativeAd;Landroid/widget/ImageView;)V

    new-array v1, v2, [Ljava/lang/String;

    .line 934
    invoke-interface {p2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v2

    .line 935
    invoke-virtual {v2}, Lcom/smaato/soma/internal/b/a;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 934
    invoke-virtual {v0, v1}, Lcom/smaato/soma/nativead/NativeAd$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 938
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 939
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 940
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 941
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 944
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/nativead/NativeAd;->a(Landroid/widget/ImageView;)Lcom/smaato/soma/nativead/NativeAd;

    .line 946
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 947
    return-void
.end method

.method private a(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;IIZ)V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 879
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    .line 882
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 883
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 884
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    .line 890
    :cond_0
    invoke-interface {p2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 891
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$c;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Lcom/smaato/soma/nativead/NativeAd$c;-><init>(Lcom/smaato/soma/nativead/NativeAd;Landroid/widget/ImageView;)V

    new-array v1, v2, [Ljava/lang/String;

    .line 892
    invoke-interface {p2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v2

    .line 893
    invoke-virtual {v2}, Lcom/smaato/soma/internal/b/a;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 892
    invoke-virtual {v0, v1}, Lcom/smaato/soma/nativead/NativeAd$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 896
    :cond_1
    const/4 v0, 0x0

    .line 897
    sget-object v1, Lcom/smaato/soma/nativead/NativeAd$NativeType;->NEWS_FEED:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v1}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 898
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 899
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 900
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 908
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 911
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/nativead/NativeAd;->b(Landroid/widget/ImageView;)Lcom/smaato/soma/nativead/NativeAd;

    .line 913
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 915
    return-void

    .line 901
    :cond_3
    sget-object v1, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v1}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p6, :cond_2

    sget-object v1, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CAROUSEL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v1}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 902
    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 903
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 904
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-lez v1, :cond_2

    .line 905
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private a(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1006
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    .line 1008
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    iget v1, p0, Lcom/smaato/soma/nativead/NativeAd;->r:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1010
    invoke-interface {p2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    .line 1011
    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-interface {p2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    .line 1013
    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 1012
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    :goto_0
    invoke-interface {p2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    new-instance v1, Lcom/smaato/soma/nativead/NativeAd$3;

    invoke-direct {v1, p0, p2}, Lcom/smaato/soma/nativead/NativeAd$3;-><init>(Lcom/smaato/soma/nativead/NativeAd;Lcom/smaato/soma/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1032
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1034
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1035
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1037
    sget-object v1, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v1}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1038
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1039
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-virtual {p4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1046
    :goto_1
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/nativead/NativeAd;->a(Landroid/widget/Button;)Lcom/smaato/soma/nativead/NativeAd;

    .line 1047
    return-void

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    const-string v1, "Click here"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1042
    :cond_2
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1043
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/smaato/soma/nativead/NativeAd;Lcom/smaato/soma/p;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/smaato/soma/nativead/NativeAd;->d(Lcom/smaato/soma/p;)V

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/nativead/NativeAd;Z)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/smaato/soma/nativead/NativeAd;->b(Z)V

    return-void
.end method

.method private a(Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;)V
    .locals 4

    .prologue
    .line 585
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    .line 588
    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$c;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Lcom/smaato/soma/nativead/NativeAd$c;-><init>(Lcom/smaato/soma/nativead/NativeAd;Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 590
    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v3

    .line 591
    invoke-virtual {v3}, Lcom/smaato/soma/internal/b/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 590
    invoke-virtual {v0, v1}, Lcom/smaato/soma/nativead/NativeAd$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 592
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/smaato/soma/nativead/NativeAd$6;

    invoke-direct {v1, p0, p1}, Lcom/smaato/soma/nativead/NativeAd$6;-><init>(Lcom/smaato/soma/nativead/NativeAd;Lcom/smaato/soma/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/nativead/NativeAd;->b(Landroid/widget/ImageView;)Lcom/smaato/soma/nativead/NativeAd;

    .line 609
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 612
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smaato/soma/nativead/NativeAd;->c(Lcom/smaato/soma/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/smaato/soma/nativead/NativeAd;->a()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 613
    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->j()Lcom/facebook/ads/NativeAd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/nativead/NativeAd;->a()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;)V

    .line 615
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/smaato/soma/nativead/NativeAd;->l:Z

    .line 119
    return-void
.end method

.method static synthetic b(Lcom/smaato/soma/nativead/NativeAd;)Lcom/smaato/soma/c;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->C:Lcom/smaato/soma/c;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 1422
    :try_start_0
    invoke-direct {p0}, Lcom/smaato/soma/nativead/NativeAd;->c()V

    .line 1423
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->A:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    :goto_0
    return-void

    .line 1424
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 967
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    .line 969
    invoke-interface {p2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 973
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 974
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 975
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/smaato/soma/nativead/NativeAd;->p:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 976
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 977
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/nativead/NativeAd;->a(Landroid/widget/TextView;)Lcom/smaato/soma/nativead/NativeAd;

    .line 978
    return-void
.end method

.method private b(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;)V
    .locals 9

    .prologue
    .line 623
    const/4 v7, 0x0

    .line 625
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 626
    iget v1, p0, Lcom/smaato/soma/nativead/NativeAd;->n:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v4, v1

    .line 627
    iget v1, p0, Lcom/smaato/soma/nativead/NativeAd;->o:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 631
    sget-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CAROUSEL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v0}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->APP_WALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v0}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v0}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CHAT_LIST:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v0}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 632
    invoke-direct/range {v0 .. v5}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;II)V

    .line 636
    :cond_1
    invoke-virtual {p0, p2}, Lcom/smaato/soma/nativead/NativeAd;->c(Lcom/smaato/soma/p;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/smaato/soma/nativead/NativeAd;->a()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->NEWS_FEED:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v0}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v0}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 637
    :cond_2
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;IIZ)V

    .line 639
    invoke-virtual {p0, p2}, Lcom/smaato/soma/nativead/NativeAd;->b(Lcom/smaato/soma/p;)Z

    move-result v0

    .line 644
    :goto_0
    const/4 v1, 0x0

    .line 645
    sget-object v2, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CAROUSEL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v2}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 647
    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 649
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 650
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 651
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    if-lez v2, :cond_3

    .line 652
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 655
    :cond_3
    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 658
    invoke-virtual {p0, p2}, Lcom/smaato/soma/nativead/NativeAd;->c(Lcom/smaato/soma/p;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/smaato/soma/nativead/NativeAd;->a()Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 659
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;IIZ)V

    .line 661
    invoke-virtual {p0, p2}, Lcom/smaato/soma/nativead/NativeAd;->b(Lcom/smaato/soma/p;)Z

    move-result v0

    .line 667
    :goto_1
    invoke-virtual {p3, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move v1, v0

    move-object v0, v7

    .line 672
    :goto_2
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 673
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 677
    sget-object v4, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CAROUSEL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v4}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/smaato/soma/nativead/NativeAd$NativeType;->APP_WALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v4}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v4}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CHAT_LIST:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v4}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_4
    iget-object v4, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    if-eqz v4, :cond_f

    .line 679
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 684
    :cond_5
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/nativead/NativeAd;->b(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;)V

    .line 689
    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 690
    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 693
    :cond_6
    sget-object v3, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CAROUSEL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v3}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/smaato/soma/nativead/NativeAd$NativeType;->APP_WALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v3}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/smaato/soma/nativead/NativeAd$NativeType;->NEWS_FEED:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v3}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v3}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 694
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;)V

    .line 695
    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    if-eqz v3, :cond_8

    .line 696
    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 705
    :cond_8
    :goto_4
    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 714
    sget-object v2, Lcom/smaato/soma/nativead/NativeAd$NativeType;->APP_WALL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v2}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/smaato/soma/nativead/NativeAd$NativeType;->NEWS_FEED:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v2}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 715
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    .line 758
    :cond_a
    :goto_5
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$7;

    invoke-direct {v0, p0, p2}, Lcom/smaato/soma/nativead/NativeAd$7;-><init>(Lcom/smaato/soma/nativead/NativeAd;Lcom/smaato/soma/p;)V

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    return-void

    .line 640
    :cond_b
    sget-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->NEWS_FEED:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v0}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v0}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 641
    :cond_c
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;IIZ)V

    :cond_d
    move v0, v7

    goto/16 :goto_0

    .line 664
    :cond_e
    invoke-direct {p0, p2, v7}, Lcom/smaato/soma/nativead/NativeAd;->b(Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;)V

    goto/16 :goto_1

    .line 680
    :cond_f
    sget-object v4, Lcom/smaato/soma/nativead/NativeAd$NativeType;->NEWS_FEED:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v4}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    .line 681
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 699
    :cond_10
    sget-object v3, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CHAT_LIST:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v3}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 701
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/nativead/NativeAd;->c(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;)V

    .line 702
    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 716
    :cond_11
    sget-object v2, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v2}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    sget-object v2, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CAROUSEL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v2}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 720
    :cond_12
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 721
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 722
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 724
    sget-object v4, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v4}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 725
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-lez v0, :cond_13

    .line 726
    const/4 v0, 0x3

    iget-object v4, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 734
    :cond_13
    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    sget-object v0, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v0}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 737
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    .line 741
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/nativead/NativeAd;->c(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;)V

    .line 742
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 744
    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_15

    .line 746
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 747
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 748
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-virtual {v3}, Lcom/facebook/ads/MediaView;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 749
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    :cond_15
    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 727
    :cond_16
    sget-object v4, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CAROUSEL:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v4}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 728
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    if-lez v4, :cond_17

    .line 729
    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_6

    .line 730
    :cond_17
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-lez v0, :cond_13

    .line 731
    const/4 v0, 0x3

    iget-object v4, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_6

    :cond_18
    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto/16 :goto_2
.end method

.method private b(Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;)V
    .locals 11

    .prologue
    const/4 v5, -0x1

    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 778
    .line 779
    const/16 v1, 0x15e

    .line 781
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 782
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 783
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-le v3, v4, :cond_3

    .line 784
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 785
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 790
    :goto_0
    new-instance v1, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->a:Landroid/widget/HorizontalScrollView;

    .line 792
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 794
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v8}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 796
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v8}, Landroid/widget/HorizontalScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 798
    new-instance v1, Lcom/smaato/soma/nativead/NativeAd$a;

    invoke-direct {v1, p0}, Lcom/smaato/soma/nativead/NativeAd$a;-><init>(Lcom/smaato/soma/nativead/NativeAd;)V

    .line 799
    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v2

    .line 800
    invoke-virtual {v2}, Lcom/smaato/soma/internal/b/a;->f()Ljava/lang/String;

    move-result-object v2

    .line 799
    invoke-virtual {v1, v2}, Lcom/smaato/soma/nativead/NativeAd$a;->a(Ljava/lang/String;)V

    .line 801
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 804
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->u:Ljava/util/ArrayList;

    .line 807
    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->a()Ljava/util/Vector;

    move-result-object v1

    .line 809
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 810
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 811
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 814
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 816
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, v10, :cond_0

    .line 817
    int-to-double v4, v0

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 822
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 825
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 827
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 828
    if-eqz v0, :cond_1

    .line 829
    new-instance v6, Lcom/smaato/soma/nativead/NativeAd$c;

    invoke-direct {v6, p0, v5}, Lcom/smaato/soma/nativead/NativeAd$c;-><init>(Lcom/smaato/soma/nativead/NativeAd;Landroid/widget/ImageView;)V

    new-array v7, v10, [Ljava/lang/String;

    aput-object v0, v7, v8

    .line 830
    invoke-virtual {v6, v7}, Lcom/smaato/soma/nativead/NativeAd$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 833
    :cond_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 836
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-le v0, v6, :cond_2

    .line 837
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 786
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-ge v2, v3, :cond_5

    .line 787
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto/16 :goto_0

    .line 845
    :cond_4
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 847
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->a:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/smaato/soma/nativead/NativeAd$1;

    invoke-direct {v1, p0, v2}, Lcom/smaato/soma/nativead/NativeAd$1;-><init>(Lcom/smaato/soma/nativead/NativeAd;Landroid/view/GestureDetector;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 857
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$2;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/nativead/NativeAd$2;-><init>(Lcom/smaato/soma/nativead/NativeAd;Lcom/smaato/soma/p;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 871
    return-void

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method private b(Z)V
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/smaato/soma/nativead/NativeAd;->m:Z

    .line 130
    return-void
.end method

.method static synthetic c(Lcom/smaato/soma/nativead/NativeAd;)Lcom/smaato/soma/nativead/NativeAd$NativeType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->z:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1431
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->D:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->D:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1434
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1436
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1437
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1438
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1439
    return-void
.end method

.method private c(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 981
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->j:Landroid/widget/TextView;

    .line 983
    invoke-interface {p2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->j:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 988
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 990
    sget-object v1, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CONTENT_STREAM:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v1}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 991
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 992
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-lez v1, :cond_1

    .line 993
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 998
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/smaato/soma/nativead/NativeAd;->q:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1000
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1002
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/nativead/NativeAd;->b(Landroid/widget/TextView;)Lcom/smaato/soma/nativead/NativeAd;

    .line 1003
    return-void

    .line 994
    :cond_2
    sget-object v1, Lcom/smaato/soma/nativead/NativeAd$NativeType;->CHAT_LIST:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-virtual {p1, v1}, Lcom/smaato/soma/nativead/NativeAd$NativeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-lez v1, :cond_1

    .line 995
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private d()Lcom/smaato/soma/nativead/NativeAd$d;
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->t:Lcom/smaato/soma/nativead/NativeAd$d;

    return-object v0
.end method

.method static synthetic d(Lcom/smaato/soma/nativead/NativeAd;)Lcom/smaato/soma/nativead/NativeAd$d;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/smaato/soma/nativead/NativeAd;->d()Lcom/smaato/soma/nativead/NativeAd$d;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/smaato/soma/p;)V
    .locals 4

    .prologue
    .line 1229
    const/4 v1, 0x0

    .line 1239
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 1240
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1242
    :try_start_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1246
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->z:Lcom/smaato/soma/nativead/NativeAd$NativeType;

    invoke-direct {p0, v1, p1, v0}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd$NativeType;Lcom/smaato/soma/p;Landroid/widget/RelativeLayout;)V

    .line 1251
    invoke-direct {p0, v0}, Lcom/smaato/soma/nativead/NativeAd;->a(Landroid/widget/RelativeLayout;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1268
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/smaato/soma/nativead/NativeAd;->d()Lcom/smaato/soma/nativead/NativeAd$d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1269
    invoke-direct {p0}, Lcom/smaato/soma/nativead/NativeAd;->d()Lcom/smaato/soma/nativead/NativeAd$d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/smaato/soma/nativead/NativeAd$d;->a(Landroid/view/ViewGroup;)V

    .line 1273
    :cond_1
    return-void

    .line 1254
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/smaato/soma/nativead/NativeAd;->d()Lcom/smaato/soma/nativead/NativeAd$d;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1255
    invoke-direct {p0}, Lcom/smaato/soma/nativead/NativeAd;->d()Lcom/smaato/soma/nativead/NativeAd$d;

    move-result-object v0

    sget-object v2, Lcom/smaato/soma/ErrorCode;->GENERAL_ERROR:Lcom/smaato/soma/ErrorCode;

    const-string v3, "mContext is null"

    invoke-interface {v0, v2, v3}, Lcom/smaato/soma/nativead/NativeAd$d;->a(Lcom/smaato/soma/ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 1258
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1259
    :goto_1
    invoke-direct {p0}, Lcom/smaato/soma/nativead/NativeAd;->d()Lcom/smaato/soma/nativead/NativeAd$d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1260
    invoke-direct {p0}, Lcom/smaato/soma/nativead/NativeAd;->d()Lcom/smaato/soma/nativead/NativeAd$d;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/ErrorCode;->GENERAL_ERROR:Lcom/smaato/soma/ErrorCode;

    const-string v3, "ERROR in NativeTypeLayoutBuilding"

    invoke-interface {v1, v2, v3}, Lcom/smaato/soma/nativead/NativeAd$d;->a(Lcom/smaato/soma/ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 1264
    :goto_2
    invoke-direct {p0}, Lcom/smaato/soma/nativead/NativeAd;->d()Lcom/smaato/soma/nativead/NativeAd$d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1265
    invoke-direct {p0}, Lcom/smaato/soma/nativead/NativeAd;->d()Lcom/smaato/soma/nativead/NativeAd$d;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/ErrorCode;->GENERAL_ERROR:Lcom/smaato/soma/ErrorCode;

    const-string v3, "ERROR in NativeTypeLayoutBuilding"

    invoke-interface {v1, v2, v3}, Lcom/smaato/soma/nativead/NativeAd$d;->a(Lcom/smaato/soma/ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    :catch_2
    move-exception v1

    goto :goto_2

    .line 1258
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic e(Lcom/smaato/soma/nativead/NativeAd;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 1797
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->removeAllViews()V

    .line 1798
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-static {v0}, Lcom/smaato/soma/mediation/t;->a(Landroid/view/View;)V

    .line 1799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    .line 1800
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1802
    :goto_0
    return-void

    .line 1801
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->A:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final a(Landroid/widget/Button;)Lcom/smaato/soma/nativead/NativeAd;
    .locals 0

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    .line 1143
    return-object p0
.end method

.method public final a(Landroid/widget/ImageView;)Lcom/smaato/soma/nativead/NativeAd;
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    .line 1102
    return-object p0
.end method

.method public final a(Landroid/widget/RatingBar;)Lcom/smaato/soma/nativead/NativeAd;
    .locals 0

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    .line 1092
    return-object p0
.end method

.method public final a(Landroid/widget/TextView;)Lcom/smaato/soma/nativead/NativeAd;
    .locals 0

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    .line 1153
    return-object p0
.end method

.method protected a(Lcom/smaato/soma/p;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1285
    if-nez p1, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$b;

    invoke-direct {v0, p0}, Lcom/smaato/soma/nativead/NativeAd$b;-><init>(Lcom/smaato/soma/nativead/NativeAd;)V

    .line 1289
    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    .line 1290
    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1291
    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    .line 1292
    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->f()Ljava/lang/String;

    move-result-object v1

    .line 1291
    invoke-virtual {v0, v1}, Lcom/smaato/soma/nativead/NativeAd$b;->a(Ljava/lang/String;)V

    .line 1300
    :cond_2
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1301
    new-instance v1, Lcom/smaato/soma/nativead/NativeAd$c;

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/smaato/soma/nativead/NativeAd$c;-><init>(Lcom/smaato/soma/nativead/NativeAd;Landroid/widget/ImageView;)V

    new-array v2, v4, [Ljava/lang/String;

    .line 1302
    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v3

    .line 1303
    invoke-virtual {v3}, Lcom/smaato/soma/internal/b/a;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1302
    invoke-virtual {v1, v2}, Lcom/smaato/soma/nativead/NativeAd$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1304
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1307
    :cond_3
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1308
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->j:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/internal/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1311
    :cond_4
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1312
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/internal/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1313
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
    :cond_5
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    .line 1316
    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1317
    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1318
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v2

    .line 1319
    invoke-virtual {v2}, Lcom/smaato/soma/internal/b/a;->g()Ljava/lang/String;

    move-result-object v2

    .line 1318
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1320
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1322
    :cond_6
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->h()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 1323
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    invoke-virtual {v1, v4}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 1324
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/internal/b/a;->h()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1325
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1329
    :cond_7
    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/smaato/soma/p;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Lcom/smaato/soma/p;->c()Lcom/smaato/soma/mediation/CSMAdFormat;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Lcom/smaato/soma/p;->c()Lcom/smaato/soma/mediation/CSMAdFormat;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/mediation/CSMAdFormat;->NATIVE:Lcom/smaato/soma/mediation/CSMAdFormat;

    if-ne v1, v2, :cond_a

    .line 1331
    invoke-virtual {p0, p1}, Lcom/smaato/soma/nativead/NativeAd;->b(Lcom/smaato/soma/p;)Z

    move-result v0

    .line 1333
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_8

    .line 1335
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1336
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1}, Lcom/facebook/ads/MediaView;->getId()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1337
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1339
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1340
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1}, Lcom/facebook/ads/MediaView;->getId()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1341
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1344
    :cond_8
    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->i()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b/a;->i()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1345
    new-instance v0, Lcom/smaato/soma/internal/c/e;

    invoke-direct {v0}, Lcom/smaato/soma/internal/c/e;-><init>()V

    new-array v1, v4, [Ljava/util/Vector;

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/internal/b/a;->i()Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1347
    :cond_9
    invoke-direct {p0, v4}, Lcom/smaato/soma/nativead/NativeAd;->a(Z)V

    .line 1390
    :goto_1
    iget-boolean v0, p0, Lcom/smaato/soma/nativead/NativeAd;->E:Z

    if-eqz v0, :cond_0

    .line 1391
    invoke-direct {p0}, Lcom/smaato/soma/nativead/NativeAd;->b()V

    goto/16 :goto_0

    .line 1350
    :cond_a
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1351
    new-instance v1, Lcom/smaato/soma/nativead/NativeAd$c;

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/smaato/soma/nativead/NativeAd$c;-><init>(Lcom/smaato/soma/nativead/NativeAd;Landroid/widget/ImageView;)V

    new-array v2, v4, [Ljava/lang/String;

    .line 1352
    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v3

    .line 1353
    invoke-virtual {v3}, Lcom/smaato/soma/internal/b/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1352
    invoke-virtual {v1, v2}, Lcom/smaato/soma/nativead/NativeAd$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1355
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1357
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1360
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_b

    .line 1361
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    .line 1369
    if-ge v0, v4, :cond_d

    .line 1370
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_c

    .line 1371
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1373
    :cond_c
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1374
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setId(I)V

    :cond_d
    move v1, v0

    .line 1377
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1379
    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1380
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->x:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1382
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1383
    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1384
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd;->k:Landroid/widget/RatingBar;

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1363
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/mediation/n;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd;->w:Ljava/lang/ref/WeakReference;

    .line 165
    return-void
.end method

.method public final b(Landroid/widget/ImageView;)Lcom/smaato/soma/nativead/NativeAd;
    .locals 0

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    .line 1125
    return-object p0
.end method

.method public final b(Landroid/widget/TextView;)Lcom/smaato/soma/nativead/NativeAd;
    .locals 0

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd;->j:Landroid/widget/TextView;

    .line 1163
    return-object p0
.end method

.method public b(Lcom/smaato/soma/p;)Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 1708
    .line 1712
    :try_start_0
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1713
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1717
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1718
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1721
    if-gez v2, :cond_0

    .line 1722
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/internal/requests/settings/a;->g()I

    move-result v2

    .line 1725
    :cond_0
    int-to-double v6, v2

    const-wide v8, 0x3ffc72b020c49ba6L    # 1.778

    div-double/2addr v6, v8

    double-to-int v5, v6

    .line 1728
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1731
    instance-of v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 1732
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0

    .line 1734
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v6, v5, v7, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1740
    :cond_1
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_5

    .line 1741
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1743
    invoke-virtual {v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    move v2, v4

    .line 1744
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 1745
    aget v5, v3, v2

    invoke-virtual {v6, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1744
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1747
    :cond_2
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1754
    :goto_1
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    if-eqz v2, :cond_3

    .line 1755
    invoke-direct {p0}, Lcom/smaato/soma/nativead/NativeAd;->e()V

    .line 1757
    :cond_3
    new-instance v2, Lcom/facebook/ads/MediaView;

    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->F:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    .line 1759
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1760
    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1761
    iget-object v5, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1763
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    if-lez v2, :cond_7

    .line 1764
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/ads/MediaView;->setId(I)V

    .line 1772
    :goto_2
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/facebook/ads/MediaView;->setVisibility(I)V

    .line 1773
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smaato/soma/internal/b/a;->j()Lcom/facebook/ads/NativeAd;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/ads/MediaView;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 1776
    invoke-virtual {p0}, Lcom/smaato/soma/nativead/NativeAd;->a()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1777
    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/internal/b/a;->j()Lcom/facebook/ads/NativeAd;

    move-result-object v2

    invoke-virtual {p0}, Lcom/smaato/soma/nativead/NativeAd;->a()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;)V

    .line 1782
    :cond_4
    const/4 v2, 0x1

    .line 1791
    :goto_3
    return v2

    .line 1749
    :cond_5
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->g:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1785
    :catch_0
    move-exception v2

    .line 1788
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    move v2, v4

    .line 1791
    goto :goto_3

    .line 1766
    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v2, :cond_8

    .line 1767
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0xfa

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1769
    :cond_8
    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd;->h:Lcom/facebook/ads/MediaView;

    iget-object v3, p0, Lcom/smaato/soma/nativead/NativeAd;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/ads/MediaView;->setId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public c(Lcom/smaato/soma/p;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1840
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/smaato/soma/p;->n()Lcom/smaato/soma/internal/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/b/a;->j()Lcom/facebook/ads/NativeAd;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1841
    invoke-interface {p1}, Lcom/smaato/soma/p;->c()Lcom/smaato/soma/mediation/CSMAdFormat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/smaato/soma/p;->c()Lcom/smaato/soma/mediation/CSMAdFormat;

    move-result-object v1

    sget-object v2, Lcom/smaato/soma/mediation/CSMAdFormat;->NATIVE:Lcom/smaato/soma/mediation/CSMAdFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1845
    :cond_0
    :goto_0
    return v0

    .line 1843
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/AdReceiveFailed;
        }
    .end annotation

    .prologue
    .line 1177
    new-instance v0, Lcom/smaato/soma/nativead/NativeAd$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/smaato/soma/nativead/NativeAd$4;-><init>(Lcom/smaato/soma/nativead/NativeAd;Lcom/smaato/soma/p;Lcom/smaato/soma/b;)V

    .line 1224
    invoke-virtual {v0}, Lcom/smaato/soma/nativead/NativeAd$4;->c()Ljava/lang/Object;

    .line 1225
    return-void
.end method
