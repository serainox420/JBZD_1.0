.class public final Lcom/revmob/ads/banner/a/b;
.super Lcom/revmob/client/a;


# instance fields
.field private h:Landroid/graphics/Bitmap;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/revmob/ads/a/d;

.field private m:Lcom/revmob/ads/a/d;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/ads/a/d;Lcom/revmob/ads/a/d;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p11

    move/from16 v7, p12

    invoke-direct/range {v1 .. v7}, Lcom/revmob/client/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    iput-object p5, p0, Lcom/revmob/ads/banner/a/b;->h:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/revmob/ads/banner/a/b;->i:Ljava/lang/String;

    iput-object p7, p0, Lcom/revmob/ads/banner/a/b;->j:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/revmob/ads/banner/a/b;->k:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/revmob/ads/banner/a/b;->l:Lcom/revmob/ads/a/d;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/revmob/ads/banner/a/b;->m:Lcom/revmob/ads/a/d;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/revmob/ads/banner/a/b;->n:Ljava/lang/String;

    const-string v1, "banner"

    iput-object v1, p0, Lcom/revmob/ads/banner/a/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/a/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/banner/a/b;->j:Ljava/lang/String;

    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/a/b;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/a/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/a/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/a/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/a/b;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/a/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/a/b;->l:Lcom/revmob/ads/a/d;

    invoke-virtual {v0}, Lcom/revmob/ads/a/d;->k()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/a/b;->m:Lcom/revmob/ads/a/d;

    invoke-virtual {v0}, Lcom/revmob/ads/a/d;->k()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/a/b;->n:Ljava/lang/String;

    return-object v0
.end method
