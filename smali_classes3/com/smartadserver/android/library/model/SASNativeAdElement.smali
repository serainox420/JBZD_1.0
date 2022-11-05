.class public Lcom/smartadserver/android/library/model/SASNativeAdElement;
.super Ljava/lang/Object;
.source "SASNativeAdElement.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/c$a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/model/SASNativeAdElement$b;,
        Lcom/smartadserver/android/library/model/SASNativeAdElement$a;
    }
.end annotation


# static fields
.field public static final SAS_UNDEFINED_VALUE:I = -0x1

.field private static a:Ljava/lang/String;

.field private static final v:Z


# instance fields
.field private A:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/smartadserver/android/library/model/SASNativeAdElement$b;

.field private f:Lcom/smartadserver/android/library/model/SASNativeAdElement$b;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

.field private m:F

.field private n:J

.field private o:J

.field private p:Landroid/view/View;

.field private q:[Landroid/view/View;

.field private r:Z

.field private s:Landroid/view/View$OnClickListener;

.field private t:Lcom/smartadserver/android/library/model/SASNativeAdElement$a;

.field private u:Landroid/view/View$OnAttachStateChangeListener;

.field private w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartadserver/android/library/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private y:[Lcom/smartadserver/android/library/model/a;

.field private z:Lcom/smartadserver/android/library/model/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "SASNativeAdElement"

    sput-object v0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->a:Ljava/lang/String;

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->v:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->m:F

    .line 127
    iput-wide v4, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->n:J

    .line 128
    iput-wide v4, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->o:J

    .line 130
    iput-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    .line 131
    iput-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->q:[Landroid/view/View;

    .line 132
    iput-boolean v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->r:Z

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->x:Ljava/util/ArrayList;

    .line 167
    iput v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->A:I

    .line 178
    new-instance v0, Lcom/smartadserver/android/library/model/SASNativeAdElement$1;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement$1;-><init>(Lcom/smartadserver/android/library/model/SASNativeAdElement;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->s:Landroid/view/View$OnClickListener;

    .line 187
    sget-boolean v0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->v:Z

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/smartadserver/android/library/model/SASNativeAdElement$2;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement$2;-><init>(Lcom/smartadserver/android/library/model/SASNativeAdElement;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->u:Landroid/view/View$OnAttachStateChangeListener;

    .line 211
    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    instance-of v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/smartadserver/android/library/ui/SASAdChoicesView;

    if-eqz v0, :cond_1

    .line 465
    :cond_0
    return-void

    .line 457
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 459
    check-cast p0, Landroid/view/ViewGroup;

    .line 460
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 461
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 462
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/model/SASNativeAdElement;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->b()V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/smartadserver/android/library/a/c;->a(Landroid/content/Context;)Lcom/smartadserver/android/library/a/c;

    move-result-object v1

    .line 640
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 641
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 642
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;Z)V

    .line 640
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/model/SASNativeAdElement;)Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 583
    const/4 v0, 0x0

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->t:Lcom/smartadserver/android/library/model/SASNativeAdElement$a;

    if-eqz v1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->t:Lcom/smartadserver/android/library/model/SASNativeAdElement$a;

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->i:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement$a;->a(Ljava/lang/String;Lcom/smartadserver/android/library/model/SASNativeAdElement;)Z

    move-result v0

    .line 589
    :cond_0
    if-nez v0, :cond_1

    .line 592
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 594
    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 598
    :cond_1
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->triggerClickCount()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_2
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 687
    sget-boolean v0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->v:Z

    if-eqz v0, :cond_3

    .line 688
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 694
    :goto_0
    if-eqz v0, :cond_0

    .line 695
    invoke-static {p0}, Lcom/smartadserver/android/library/ui/c;->a(Lcom/smartadserver/android/library/ui/c$a;)V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->u:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 704
    :cond_1
    :goto_1
    return-void

    .line 691
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 701
    :cond_3
    invoke-static {p0}, Lcom/smartadserver/android/library/ui/c;->a(Lcom/smartadserver/android/library/ui/c$a;)V

    goto :goto_1
.end method

.method private d()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 713
    sget-boolean v0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->v:Z

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->u:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 720
    :cond_0
    invoke-static {p0}, Lcom/smartadserver/android/library/ui/c;->b(Lcom/smartadserver/android/library/ui/c$a;)V

    .line 721
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->updateVisibilityPercentage()V

    .line 722
    return-void
.end method


# virtual methods
.method protected a()D
    .locals 6

    .prologue
    .line 663
    const-wide/16 v0, 0x0

    .line 664
    iget-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 665
    iget-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 667
    iget-object v3, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    .line 668
    if-eqz v3, :cond_0

    .line 669
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v3, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 670
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 671
    div-double v0, v2, v0

    .line 678
    :cond_0
    return-wide v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCalltoAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getCandidateMediationAds()[Lcom/smartadserver/android/library/model/a;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->y:[Lcom/smartadserver/android/library/model/a;

    return-object v0
.end method

.method public getClickHandler()Lcom/smartadserver/android/library/model/SASNativeAdElement$a;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->t:Lcom/smartadserver/android/library/model/SASNativeAdElement$a;

    return-object v0
.end method

.method public getClickTrackingUrls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->i(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImage()Lcom/smartadserver/android/library/model/SASNativeAdElement$b;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->f:Lcom/smartadserver/android/library/model/SASNativeAdElement$b;

    return-object v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 794
    const-string v0, ""

    .line 795
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getInsertionId()I

    move-result v1

    .line 796
    if-lez v1, :cond_0

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsertionID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    :cond_0
    const-string v1, ""

    .line 801
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartadserver/android/library/model/a;->a()I

    move-result v2

    invoke-static {v2}, Lcom/smartadserver/android/library/c/j;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mediation native ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreativeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    return-object v0

    .line 804
    :cond_1
    const-string v1, "native ad"

    goto :goto_0
.end method

.method public getDownloads()J
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->o:J

    return-wide v0
.end method

.method public getExtraParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->w:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIcon()Lcom/smartadserver/android/library/model/SASNativeAdElement$b;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->e:Lcom/smartadserver/android/library/model/SASNativeAdElement$b;

    return-object v0
.end method

.method public getImpressionUrls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->i(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInsertionId()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->A:I

    return v0
.end method

.method public getLikes()J
    .locals 2

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->n:J

    return-wide v0
.end method

.method public getMediaElement()Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->l:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    return-object v0
.end method

.method public getRating()F
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->m:F

    return v0
.end method

.method public getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->z:Lcom/smartadserver/android/library/model/a;

    return-object v0
.end method

.method public getSponsored()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->b:Ljava/lang/String;

    return-object v0
.end method

.method public registerView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    invoke-static {p1, v0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 478
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->registerView(Landroid/view/View;[Landroid/view/View;)V

    .line 479
    return-void
.end method

.method public registerView(Landroid/view/View;[Landroid/view/View;)V
    .locals 5

    .prologue
    .line 490
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->unregisterView(Landroid/view/View;)V

    .line 495
    :cond_0
    if-eqz p1, :cond_3

    .line 497
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    .line 498
    iput-object p2, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->q:[Landroid/view/View;

    .line 500
    const/4 v0, 0x0

    .line 501
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 502
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/a;->e()Lcom/smartadserver/android/library/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g;->b()Lcom/smartadserver/android/library/c/g$a;

    move-result-object v0

    .line 505
    :cond_1
    if-eqz v0, :cond_4

    .line 507
    invoke-interface {v0, p1, p2}, Lcom/smartadserver/android/library/c/g$a;->a(Landroid/view/View;[Landroid/view/View;)V

    .line 518
    :cond_2
    invoke-direct {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->c()V

    .line 521
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->triggerImpressionCount()V

    .line 523
    :cond_3
    return-void

    .line 510
    :cond_4
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->q:[Landroid/view/View;

    if-eqz v0, :cond_2

    .line 511
    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->q:[Landroid/view/View;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 512
    iget-object v4, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->d:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setCalltoAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->g:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setCandidateMediationAds([Lcom/smartadserver/android/library/model/a;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->y:[Lcom/smartadserver/android/library/model/a;

    .line 773
    return-void
.end method

.method public setClickHandler(Lcom/smartadserver/android/library/model/SASNativeAdElement$a;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->t:Lcom/smartadserver/android/library/model/SASNativeAdElement$a;

    .line 572
    return-void
.end method

.method public setClickTrackingUrlString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->j:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->i:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setCoverImage(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Lcom/smartadserver/android/library/model/SASNativeAdElement$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/smartadserver/android/library/model/SASNativeAdElement$b;-><init>(Ljava/lang/String;IILcom/smartadserver/android/library/model/SASNativeAdElement$1;)V

    .line 288
    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->f:Lcom/smartadserver/android/library/model/SASNativeAdElement$b;

    .line 289
    return-void
.end method

.method public setDownloads(J)V
    .locals 3

    .prologue
    .line 359
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 360
    const-wide/16 p1, -0x1

    .line 362
    :cond_0
    iput-wide p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->o:J

    .line 363
    return-void
.end method

.method public setExtraParameters(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->w:Ljava/util/HashMap;

    .line 419
    return-void
.end method

.method public setIcon(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Lcom/smartadserver/android/library/model/SASNativeAdElement$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/smartadserver/android/library/model/SASNativeAdElement$b;-><init>(Ljava/lang/String;IILcom/smartadserver/android/library/model/SASNativeAdElement$1;)V

    .line 270
    iput-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->e:Lcom/smartadserver/android/library/model/SASNativeAdElement$b;

    .line 271
    return-void
.end method

.method public setImpressionUrlString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->h:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setInsertionId(I)V
    .locals 0

    .prologue
    .line 786
    iput p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->A:I

    .line 787
    return-void
.end method

.method public setLikes(J)V
    .locals 3

    .prologue
    .line 330
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 331
    const-wide/16 p1, -0x1

    .line 333
    :cond_0
    iput-wide p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->n:J

    .line 334
    return-void
.end method

.method public setMediaElement(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->l:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    .line 438
    return-void
.end method

.method public setRating(F)V
    .locals 2

    .prologue
    const/high16 v0, 0x40a00000    # 5.0f

    .line 345
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 346
    :goto_0
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    .line 347
    :cond_0
    iput v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->m:F

    .line 348
    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public setSelectedMediationAd(Lcom/smartadserver/android/library/model/a;)V
    .locals 4

    .prologue
    .line 735
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->z:Lcom/smartadserver/android/library/model/a;

    .line 737
    if-eqz p1, :cond_0

    .line 738
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/a;->e()Lcom/smartadserver/android/library/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g;->b()Lcom/smartadserver/android/library/c/g$a;

    move-result-object v0

    .line 741
    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->setTitle(Ljava/lang/String;)V

    .line 742
    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->setSubtitle(Ljava/lang/String;)V

    .line 743
    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->e()I

    move-result v2

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->f()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->setIcon(Ljava/lang/String;II)V

    .line 744
    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->h()I

    move-result v2

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->i()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->setCoverImage(Ljava/lang/String;II)V

    .line 745
    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->setCalltoAction(Ljava/lang/String;)V

    .line 746
    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->j()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->setRating(F)V

    .line 747
    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->setBody(Ljava/lang/String;)V

    .line 748
    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->setSponsored(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->setImpressionUrlString(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/a;->d()[Lcom/smartadserver/android/library/model/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->setViewabilityPixels([Lcom/smartadserver/android/library/model/d;)V

    .line 755
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->setClickTrackingUrlString(Ljava/lang/String;)V

    .line 757
    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g$a;->l()Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->setMediaElement(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;)V

    .line 759
    :cond_0
    return-void
.end method

.method public setSponsored(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->k:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->c:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->b:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setViewabilityPixels([Lcom/smartadserver/android/library/model/d;)V
    .locals 3

    .prologue
    .line 426
    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->x:Ljava/util/ArrayList;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->x:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 429
    monitor-exit v1

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SASNativeAdElement{title:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subtitle:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->e:Lcom/smartadserver/android/library/model/SASNativeAdElement$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverImage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->f:Lcom/smartadserver/android/library/model/SASNativeAdElement$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", call to action:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloads:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", likes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->n:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sponsored:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rating:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra parameters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->w:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public triggerClickCount()V
    .locals 4

    .prologue
    .line 623
    sget-object v0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->a:Ljava/lang/String;

    const-string v1, "NativeAd triggerClickCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->x:Ljava/util/ArrayList;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/smartadserver/android/library/ui/c;->a(Ljava/util/ArrayList;DZ)V

    .line 629
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getClickTrackingUrls()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->a([Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method public triggerImpressionCount()V
    .locals 2

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->r:Z

    if-nez v0, :cond_0

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->r:Z

    .line 613
    sget-object v0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->a:Ljava/lang/String;

    const-string v1, "NativeAd triggerImpressionCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getImpressionUrls()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->a([Ljava/lang/String;)V

    .line 617
    :cond_0
    return-void
.end method

.method public unregisterView(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 527
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    if-ne v0, p1, :cond_3

    .line 530
    invoke-direct {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->d()V

    .line 533
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 534
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/a;->e()Lcom/smartadserver/android/library/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/g;->b()Lcom/smartadserver/android/library/c/g$a;

    move-result-object v0

    .line 537
    :goto_0
    if-eqz v0, :cond_2

    .line 539
    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/c/g$a;->a(Landroid/view/View;)V

    .line 552
    :cond_0
    iput-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->p:Landroid/view/View;

    .line 553
    iput-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->q:[Landroid/view/View;

    .line 558
    :cond_1
    :goto_1
    return-void

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->q:[Landroid/view/View;

    if-eqz v0, :cond_0

    .line 543
    iget-object v3, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->q:[Landroid/view/View;

    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 544
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    invoke-virtual {v5, v1}, Landroid/view/View;->setClickable(Z)V

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 555
    :cond_3
    sget-object v0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->a:Ljava/lang/String;

    const-string v1, "Discard attempt to unregister a view not currently registered with this native ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method public updateVisibilityPercentage()V
    .locals 4

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/smartadserver/android/library/model/SASNativeAdElement;->a()D

    move-result-wide v0

    .line 654
    iget-object v2, p0, Lcom/smartadserver/android/library/model/SASNativeAdElement;->x:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/smartadserver/android/library/ui/c;->a(Ljava/util/ArrayList;DZ)V

    .line 655
    return-void
.end method
