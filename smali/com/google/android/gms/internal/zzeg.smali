.class public Lcom/google/android/gms/internal/zzeg;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzeg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final height:I

.field public final heightPixels:I

.field public final width:I

.field public final widthPixels:I

.field public final zzzA:[Lcom/google/android/gms/internal/zzeg;

.field public final zzzB:Z

.field public final zzzC:Z

.field public zzzD:Z

.field public final zzzy:Ljava/lang/String;

.field public final zzzz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/4 v2, 0x0

    const-string v1, "interstitial_mb"

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v3, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzeg;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/zzeg;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    aget-object v6, p2, v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzeg;->zzzz:Z

    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->isFluid()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzeg;->width:I

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzeg;->height:I

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/zzeg;->width:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/zzeg;->height:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/zzqe;->zzah(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/zzqe;->zzai(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v7}, Lcom/google/android/gms/internal/zzeg;->zza(Landroid/util/DisplayMetrics;)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/zzqe;->zzaj(Landroid/content/Context;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    :goto_3
    iget v4, p0, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    int-to-float v4, v4

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-double v8, v4

    double-to-int v4, v8

    double-to-int v5, v8

    int-to-double v10, v5

    sub-double/2addr v8, v10

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v5, v8, v10

    if-ltz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    move v5, v4

    :goto_4
    if-eqz v3, :cond_7

    invoke-static {v7}, Lcom/google/android/gms/internal/zzeg;->zzc(Landroid/util/DisplayMetrics;)I

    move-result v4

    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Lcom/google/android/gms/internal/zzqe;->zza(Landroid/util/DisplayMetrics;I)I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/internal/zzeg;->heightPixels:I

    if-nez v0, :cond_1

    if-eqz v3, :cond_8

    :cond_1
    const/16 v0, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_as"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    :goto_6
    array-length v0, p2

    if-le v0, v1, :cond_a

    array-length v0, p2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzeg;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    move v0, v2

    :goto_7
    array-length v1, p2

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    new-instance v3, Lcom/google/android/gms/internal/zzeg;

    aget-object v4, p2, v0

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzeg;->width:I

    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzeg;->height:I

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    move v3, v2

    goto/16 :goto_2

    :cond_5
    invoke-static {v7}, Lcom/google/android/gms/internal/zzeg;->zza(Landroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/google/android/gms/internal/zzeg;->width:I

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v5

    iget v8, p0, Lcom/google/android/gms/internal/zzeg;->width:I

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/zzqe;->zza(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    move v5, v4

    goto :goto_4

    :cond_7
    iget v4, p0, Lcom/google/android/gms/internal/zzeg;->height:I

    goto :goto_5

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-eqz v0, :cond_9

    const-string v0, "320x50_mb"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    goto :goto_6

    :cond_9
    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    :cond_b
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzeg;->zzzB:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzeg;->zzzD:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzeg;[Lcom/google/android/gms/internal/zzeg;)V
    .locals 11

    iget-object v1, p1, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/gms/internal/zzeg;->height:I

    iget v3, p1, Lcom/google/android/gms/internal/zzeg;->heightPixels:I

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zzeg;->zzzz:Z

    iget v5, p1, Lcom/google/android/gms/internal/zzeg;->width:I

    iget v6, p1, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    iget-boolean v8, p1, Lcom/google/android/gms/internal/zzeg;->zzzB:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    iget-boolean v10, p1, Lcom/google/android/gms/internal/zzeg;->zzzD:Z

    move-object v0, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzeg;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/zzeg;ZZZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/zzeg;ZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzeg;->height:I

    iput p3, p0, Lcom/google/android/gms/internal/zzeg;->heightPixels:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzeg;->zzzz:Z

    iput p5, p0, Lcom/google/android/gms/internal/zzeg;->width:I

    iput p6, p0, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzeg;->zzzB:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    iput-boolean p10, p0, Lcom/google/android/gms/internal/zzeg;->zzzD:Z

    return-void
.end method

.method public static zza(Landroid/util/DisplayMetrics;)I
    .locals 1

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static zzb(Landroid/util/DisplayMetrics;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzeg;->zzc(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static zzc(Landroid/util/DisplayMetrics;)I
    .locals 2

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_0

    const/16 v0, 0x20

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x2d0

    if-gt v0, v1, :cond_1

    const/16 v0, 0x32

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0
.end method

.method public static zzeE()Lcom/google/android/gms/internal/zzeg;
    .locals 11

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzeg;

    const-string v1, "reward_mb"

    const/4 v4, 0x1

    const/4 v7, 0x0

    move v3, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzeg;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/zzeg;ZZZ)V

    return-object v0
.end method

.method public static zzk(Landroid/content/Context;)Lcom/google/android/gms/internal/zzeg;
    .locals 11

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzeg;

    const-string v1, "320x50_mb"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzeg;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/zzeg;ZZZ)V

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzeh;->zza(Lcom/google/android/gms/internal/zzeg;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzeF()Lcom/google/android/gms/ads/AdSize;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzeg;->width:I

    iget v1, p0, Lcom/google/android/gms/internal/zzeg;->height:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public zzl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzeg;->zzzD:Z

    return-void
.end method
