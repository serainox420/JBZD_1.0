.class public Lcom/applovin/impl/sdk/NativeAdImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/az;
.implements Lcom/applovin/impl/sdk/y;


# static fields
.field public static final QUERY_PARAM_IS_FIRST_PLAY:Ljava/lang/String; = "fp"

.field public static final QUERY_PARAM_VIDEO_PERCENT_VIEWED:Ljava/lang/String; = "pv"

.field public static final SIZE_NATIVE:Lcom/applovin/sdk/AppLovinAdSize;

.field public static final SPEC_NATIVE:Lcom/applovin/impl/sdk/c;

.field public static final TYPE_NATIVE:Lcom/applovin/sdk/AppLovinAdType;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:F

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/applovin/sdk/AppLovinAdSize;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1}, Lcom/applovin/sdk/AppLovinAdSize;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/NativeAdImpl;->SIZE_NATIVE:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v0, Lcom/applovin/sdk/AppLovinAdType;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1}, Lcom/applovin/sdk/AppLovinAdType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/NativeAdImpl;->TYPE_NATIVE:Lcom/applovin/sdk/AppLovinAdType;

    new-instance v0, Lcom/applovin/impl/sdk/c;

    sget-object v1, Lcom/applovin/impl/sdk/NativeAdImpl;->SIZE_NATIVE:Lcom/applovin/sdk/AppLovinAdSize;

    sget-object v2, Lcom/applovin/impl/sdk/NativeAdImpl;->TYPE_NATIVE:Lcom/applovin/sdk/AppLovinAdType;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    sput-object v0, Lcom/applovin/impl/sdk/NativeAdImpl;->SPEC_NATIVE:Lcom/applovin/impl/sdk/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    iput-object p9, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    iput p10, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->l:F

    iput-object p11, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    iput-object p12, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    iput-object p13, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->q:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->s:J

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/impl/sdk/ba;)V
    .locals 0

    invoke-direct/range {p0 .. p20}, Lcom/applovin/impl/sdk/NativeAdImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/applovin/impl/sdk/NativeAdImpl;

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_9
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    if-nez v2, :cond_a

    :cond_c
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    if-nez v2, :cond_d

    :cond_f
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    goto :goto_0

    :cond_11
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    if-nez v2, :cond_10

    :cond_12
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    if-nez v2, :cond_13

    :cond_15
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Ljava/lang/String;

    if-nez v2, :cond_16

    :cond_18
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->c:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_19
    move v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->c:Ljava/lang/String;

    if-nez v2, :cond_19

    :cond_1b
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1c
    move v0, v1

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    if-nez v2, :cond_1c

    :cond_1e
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1f
    move v0, v1

    goto/16 :goto_0

    :cond_20
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    if-nez v2, :cond_1f

    :cond_21
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_22
    move v0, v1

    goto/16 :goto_0

    :cond_23
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    if-nez v2, :cond_22

    :cond_24
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->q:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_25
    move v0, v1

    goto/16 :goto_0

    :cond_26
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->q:Ljava/lang/String;

    if-nez v2, :cond_25

    :cond_27
    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_28
    iget-object v2, p1, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getAdId()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->s:J

    return-wide v0
.end method

.method public getCaptionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getClCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getCtaText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionTrackingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceStarRatingImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->l:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoEndTrackingUrl(IZ)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    :cond_1
    const-string v0, "AppLovinNativeAd"

    const-string v1, "Invalid percent viewed supplied."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Percent viewed must be an integer between 0 and 100."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pv"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "fp"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoStartTrackingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->q:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    move v0, v1

    goto :goto_8

    :cond_a
    move v0, v1

    goto :goto_9

    :cond_b
    move v0, v1

    goto :goto_a

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method public isImagePrecached()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public isVideoPrecached()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchClickTarget(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getPersistentPostbackManager()Lcom/applovin/impl/sdk/bn;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/bn;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->openUrl(Landroid/content/Context;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    return-void
.end method

.method public setStarRating(F)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->l:F

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetSlot{clCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceIconUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceStarRatingImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceVideoUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descriptionText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captionText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ctaText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", starRating=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impressionTrackingUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoStartTrackingUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoEndTrackingUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/NativeAdImpl;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
