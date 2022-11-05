.class public Lcom/applovin/impl/sdk/AppLovinAdImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/az;
.implements Lcom/applovin/sdk/AppLovinAd;


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAdSize;

.field private final b:Lcom/applovin/sdk/AppLovinAdType;

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:F

.field private final i:F

.field private final j:I

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Lcom/applovin/impl/adview/v;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;Lcom/applovin/impl/adview/v;FFIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No size specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p3, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No type specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->a:Lcom/applovin/sdk/AppLovinAdSize;

    iput-object p3, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->b:Lcom/applovin/sdk/AppLovinAdType;

    iput-object p4, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->d:Ljava/lang/String;

    iput-wide p10, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->c:J

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->e:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    iput p7, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->h:F

    iput p9, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->j:I

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->o:Lcom/applovin/impl/adview/v;

    iput p8, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->i:F

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->k:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->l:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->m:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->n:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;Lcom/applovin/impl/adview/v;FFIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/d;)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Lcom/applovin/impl/sdk/AppLovinAdImpl;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;Lcom/applovin/impl/adview/v;FFIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iget-wide v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->c:J

    iget-wide v4, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->h:F

    iget v3, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->h:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->i:F

    iget v3, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->i:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->j:I

    iget v3, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->j:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->a:Lcom/applovin/sdk/AppLovinAdSize;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->a:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v3, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->a:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->b:Lcom/applovin/sdk/AppLovinAdType;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->b:Lcom/applovin/sdk/AppLovinAdType;

    iget-object v3, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->b:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v2, v3}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->d:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->e:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    iget-object v3, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->e:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->f:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->g:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->k:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->l:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->m:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_9
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->n:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_a
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->o:Lcom/applovin/impl/adview/v;

    iget-object v3, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->o:Lcom/applovin/impl/adview/v;

    if-ne v2, v3, :cond_14

    :goto_1
    move v1, v0

    goto/16 :goto_0

    :cond_b
    iget-object v2, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->a:Lcom/applovin/sdk/AppLovinAdSize;

    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_c
    iget-object v2, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->b:Lcom/applovin/sdk/AppLovinAdType;

    if-eqz v2, :cond_3

    goto/16 :goto_0

    :cond_d
    iget-object v2, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto/16 :goto_0

    :cond_e
    iget-object v2, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto/16 :goto_0

    :cond_f
    iget-object v2, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->g:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto/16 :goto_0

    :cond_10
    iget-object v2, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->k:Ljava/lang/String;

    if-eqz v2, :cond_7

    goto/16 :goto_0

    :cond_11
    iget-object v2, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->l:Ljava/lang/String;

    if-eqz v2, :cond_8

    goto/16 :goto_0

    :cond_12
    iget-object v2, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->m:Ljava/lang/String;

    if-eqz v2, :cond_9

    goto/16 :goto_0

    :cond_13
    iget-object v2, p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;->n:Ljava/lang/String;

    if-eqz v2, :cond_a

    goto/16 :goto_0

    :cond_14
    move v0, v1

    goto :goto_1
.end method

.method public getAdIdNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->c:J

    return-wide v0
.end method

.method public getClCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseDelay()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->i:F

    return v0
.end method

.method public getCloseStyle()Lcom/applovin/impl/adview/v;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->o:Lcom/applovin/impl/adview/v;

    return-object v0
.end method

.method public getCompletionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getCountdownLength()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->j:I

    return v0
.end method

.method public getHtmlSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getMuteImageFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getParametrizedCompletionUrl(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getCompletionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{CLCODE}"

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getClCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pv"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/applovin/impl/sdk/di;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinAdSize;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->a:Lcom/applovin/sdk/AppLovinAdSize;

    return-object v0
.end method

.method public getSupplementalClickTrackingUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getSupplementalClickTrackingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupplementalClickTrackingUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{CLCODE}"

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getClCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/di;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTarget()Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->e:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    return-object v0
.end method

.method public getType()Lcom/applovin/sdk/AppLovinAdType;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->b:Lcom/applovin/sdk/AppLovinAdType;

    return-object v0
.end method

.method public getUnmuteImageFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCloseDelay()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->h:F

    return v0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->a:Lcom/applovin/sdk/AppLovinAdSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->a:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->b:Lcom/applovin/sdk/AppLovinAdType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->b:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinAdType;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->c:J

    iget-wide v4, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->c:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->e:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->e:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->h:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->h:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->i:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->i:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->k:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->l:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->m:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->n:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->o:Lcom/applovin/impl/adview/v;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->o:Lcom/applovin/impl/adview/v;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/v;->hashCode()I

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

.method public isVideoAd()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinAdImpl{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->a:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->b:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adIdNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFilename=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->e:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", htmlSource=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoCloseDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", closeDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countdownLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completionUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supplementalClickTrackingUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", muteImageFilename=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unmuteImageFilename=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", closeStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdImpl;->o:Lcom/applovin/impl/adview/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
