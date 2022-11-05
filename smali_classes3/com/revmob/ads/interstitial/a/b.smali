.class public final Lcom/revmob/ads/interstitial/a/b;
.super Lcom/revmob/client/a;


# static fields
.field private static h:Ljava/util/HashMap;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Lcom/revmob/ads/a/d;

.field private E:Lcom/revmob/ads/a/d;

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:D

.field private U:D

.field private V:D

.field private W:D

.field private X:D

.field private Y:D

.field private Z:Ljava/io/File;

.field private aa:Ljava/util/ArrayList;

.field private ab:Ljava/util/ArrayList;

.field private ac:Lcom/revmob/RevMobAdsListener;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/graphics/Bitmap;

.field private n:Landroid/graphics/Bitmap;

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/graphics/Bitmap;

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/graphics/Bitmap;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/revmob/ads/interstitial/a/b;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/revmob/RevMobAdsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/revmob/ads/a/d;Lcom/revmob/ads/a/d;Ljava/lang/String;ZLjava/lang/String;IDILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;DDDDLjava/lang/String;Ljava/lang/String;IIIIIIIIIDILandroid/graphics/Bitmap;)V
    .locals 9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p15

    move/from16 v8, p16

    invoke-direct/range {v2 .. v8}, Lcom/revmob/client/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/revmob/ads/interstitial/a/b;->l:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/revmob/ads/interstitial/a/b;->m:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput v2, p0, Lcom/revmob/ads/interstitial/a/b;->F:I

    iput-object p5, p0, Lcom/revmob/ads/interstitial/a/b;->ac:Lcom/revmob/RevMobAdsListener;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->w:Ljava/lang/String;

    iput-object p6, p0, Lcom/revmob/ads/interstitial/a/b;->v:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->x:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->y:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->j:Landroid/graphics/Bitmap;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->k:Landroid/graphics/Bitmap;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->l:Landroid/graphics/Bitmap;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->m:Landroid/graphics/Bitmap;

    move/from16 v0, p32

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->I:I

    move/from16 v0, p33

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->H:I

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->i:Landroid/graphics/Bitmap;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->D:Lcom/revmob/ads/a/d;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->E:Lcom/revmob/ads/a/d;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->z:Ljava/lang/String;

    move/from16 v0, p18

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->F:I

    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/revmob/ads/interstitial/a/b;->T:D

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->p:Landroid/graphics/Bitmap;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->o:Landroid/graphics/Bitmap;

    move-object/from16 v0, p59

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->u:Landroid/graphics/Bitmap;

    move/from16 v0, p21

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->G:I

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->A:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->n:Landroid/graphics/Bitmap;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->q:Landroid/graphics/Bitmap;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->Z:Ljava/io/File;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->aa:Ljava/util/ArrayList;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->ab:Ljava/util/ArrayList;

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->r:Landroid/graphics/Bitmap;

    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->s:Landroid/graphics/Bitmap;

    move-wide/from16 v0, p37

    iput-wide v0, p0, Lcom/revmob/ads/interstitial/a/b;->U:D

    move-wide/from16 v0, p39

    iput-wide v0, p0, Lcom/revmob/ads/interstitial/a/b;->V:D

    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->t:Landroid/graphics/Bitmap;

    move-wide/from16 v0, p41

    iput-wide v0, p0, Lcom/revmob/ads/interstitial/a/b;->W:D

    move-wide/from16 v0, p43

    iput-wide v0, p0, Lcom/revmob/ads/interstitial/a/b;->X:D

    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->B:Ljava/lang/String;

    move/from16 v0, p47

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->J:I

    move/from16 v0, p48

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->K:I

    move/from16 v0, p49

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->L:I

    move/from16 v0, p50

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->M:I

    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->C:Ljava/lang/String;

    move/from16 v0, p51

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->N:I

    move/from16 v0, p52

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->O:I

    move/from16 v0, p53

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->P:I

    move/from16 v0, p54

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->Q:I

    move/from16 v0, p55

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->R:I

    move-wide/from16 v0, p56

    iput-wide v0, p0, Lcom/revmob/ads/interstitial/a/b;->Y:D

    move/from16 v0, p58

    iput v0, p0, Lcom/revmob/ads/interstitial/a/b;->S:I

    const-string v2, "fullscreen"

    iput-object v2, p0, Lcom/revmob/ads/interstitial/a/b;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a/b;->A:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "video"

    iput-object v2, p0, Lcom/revmob/ads/interstitial/a/b;->e:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/revmob/ads/interstitial/a/b;->r:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    const-string v2, "rewardedVideo"

    iput-object v2, p0, Lcom/revmob/ads/interstitial/a/b;->e:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/revmob/ads/interstitial/a/b;
    .locals 1

    sget-object v0, Lcom/revmob/ads/interstitial/a/b;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/revmob/ads/interstitial/a/b;

    return-object v0
.end method

.method public static a(Lcom/revmob/ads/interstitial/a/b;)V
    .locals 3

    sget-object v0, Lcom/revmob/ads/interstitial/a/b;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a/b;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Lcom/revmob/ads/interstitial/a/b;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/revmob/ads/interstitial/a/b;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final A()D
    .locals 2

    iget-wide v0, p0, Lcom/revmob/ads/interstitial/a/b;->W:D

    return-wide v0
.end method

.method public final B()D
    .locals 2

    iget-wide v0, p0, Lcom/revmob/ads/interstitial/a/b;->X:D

    return-wide v0
.end method

.method public final C()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->r:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final D()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->s:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final E()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->t:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final H()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->J:I

    return v0
.end method

.method public final I()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->K:I

    return v0
.end method

.method public final J()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->L:I

    return v0
.end method

.method public final K()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->M:I

    return v0
.end method

.method public final L()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->N:I

    return v0
.end method

.method public final M()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->O:I

    return v0
.end method

.method public final N()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->P:I

    return v0
.end method

.method public final O()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->Q:I

    return v0
.end method

.method public final P()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->R:I

    return v0
.end method

.method public final Q()D
    .locals 2

    iget-wide v0, p0, Lcom/revmob/ads/interstitial/a/b;->Y:D

    return-wide v0
.end method

.method public final R()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->S:I

    return v0
.end method

.method public final S()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->u:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final a(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->k:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->j:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->i:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->m:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->l:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/interstitial/a/b;->x:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/revmob/RevMobAdsListener;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->ac:Lcom/revmob/RevMobAdsListener;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->v:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->w:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->y:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->D:Lcom/revmob/ads/a/d;

    invoke-virtual {v0}, Lcom/revmob/ads/a/d;->k()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public final j()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->E:Lcom/revmob/ads/a/d;

    invoke-virtual {v0}, Lcom/revmob/ads/a/d;->k()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->F:I

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final m()D
    .locals 2

    iget-wide v0, p0, Lcom/revmob/ads/interstitial/a/b;->T:D

    return-wide v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->G:I

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->n:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final q()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->q:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final r()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->Z:Ljava/io/File;

    return-object v0
.end method

.method public final s()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->o:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final t()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->p:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final u()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->aa:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final v()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a/b;->ab:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final w()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->H:I

    return v0
.end method

.method public final x()I
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a/b;->I:I

    return v0
.end method

.method public final y()D
    .locals 2

    iget-wide v0, p0, Lcom/revmob/ads/interstitial/a/b;->U:D

    return-wide v0
.end method

.method public final z()D
    .locals 2

    iget-wide v0, p0, Lcom/revmob/ads/interstitial/a/b;->V:D

    return-wide v0
.end method
