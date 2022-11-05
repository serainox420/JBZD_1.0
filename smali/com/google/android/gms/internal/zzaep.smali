.class public Lcom/google/android/gms/internal/zzaep;
.super Lcom/google/android/gms/awareness/fence/AwarenessFence;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaJp:Lcom/google/android/gms/internal/zzbwr;

.field private zzaJq:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaeq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaeq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbwr;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwr;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJp:Lcom/google/android/gms/internal/zzbwr;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJq:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaep;->zzzT()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJp:Lcom/google/android/gms/internal/zzbwr;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaep;->zzaJq:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaep;->zzzT()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzaei;)Lcom/google/android/gms/internal/zzaep;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zzdG(I)Lcom/google/android/gms/internal/zzbwr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaei;->zzzV()Lcom/google/android/gms/internal/zzbwm;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbwr;->zzctt:Lcom/google/android/gms/internal/zzbwm;

    new-instance v1, Lcom/google/android/gms/internal/zzaep;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaep;-><init>(Lcom/google/android/gms/internal/zzbwr;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzaej;)Lcom/google/android/gms/internal/zzaep;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zzdG(I)Lcom/google/android/gms/internal/zzbwr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaej;->zzzY()Lcom/google/android/gms/internal/zzbwn;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbwr;->zzctx:Lcom/google/android/gms/internal/zzbwn;

    new-instance v1, Lcom/google/android/gms/internal/zzaep;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaep;-><init>(Lcom/google/android/gms/internal/zzbwr;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzael;)Lcom/google/android/gms/internal/zzaep;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zzdG(I)Lcom/google/android/gms/internal/zzbwr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzael;->zzzZ()Lcom/google/android/gms/internal/zzbwo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbwr;->zzcty:Lcom/google/android/gms/internal/zzbwo;

    new-instance v1, Lcom/google/android/gms/internal/zzaep;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaep;-><init>(Lcom/google/android/gms/internal/zzbwr;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzaep;)Lcom/google/android/gms/internal/zzaep;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaep;->zzdG(I)Lcom/google/android/gms/internal/zzbwr;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zzi(Ljava/util/Collection;)[Lcom/google/android/gms/internal/zzbwr;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzbwr;->zzctp:[Lcom/google/android/gms/internal/zzbwr;

    new-instance v0, Lcom/google/android/gms/internal/zzaep;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaep;-><init>(Lcom/google/android/gms/internal/zzbwr;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzafc;)Lcom/google/android/gms/internal/zzaep;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zzdG(I)Lcom/google/android/gms/internal/zzbwr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzafc;->zzAd()Lcom/google/android/gms/internal/zzbwx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbwr;->zzctr:Lcom/google/android/gms/internal/zzbwx;

    new-instance v1, Lcom/google/android/gms/internal/zzaep;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaep;-><init>(Lcom/google/android/gms/internal/zzbwr;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzafe;)Lcom/google/android/gms/internal/zzaep;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zzdG(I)Lcom/google/android/gms/internal/zzbwr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzafe;->zzAe()Lcom/google/android/gms/internal/zzbxg;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbwr;->zzctG:Lcom/google/android/gms/internal/zzbxg;

    new-instance v1, Lcom/google/android/gms/internal/zzaep;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaep;-><init>(Lcom/google/android/gms/internal/zzbwr;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzaff;)Lcom/google/android/gms/internal/zzaep;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zzdG(I)Lcom/google/android/gms/internal/zzbwr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaff;->zzAf()Lcom/google/android/gms/internal/zzbxi;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbwr;->zzctq:Lcom/google/android/gms/internal/zzbxi;

    new-instance v1, Lcom/google/android/gms/internal/zzaep;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaep;-><init>(Lcom/google/android/gms/internal/zzbwr;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzafg;)Lcom/google/android/gms/internal/zzaep;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zzdG(I)Lcom/google/android/gms/internal/zzbwr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzafg;->zzAg()Lcom/google/android/gms/internal/zzbxj;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbwr;->zzctC:Lcom/google/android/gms/internal/zzbxj;

    new-instance v1, Lcom/google/android/gms/internal/zzaep;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaep;-><init>(Lcom/google/android/gms/internal/zzbwr;)V

    return-object v1
.end method

.method private static zzdG(I)Lcom/google/android/gms/internal/zzbwr;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbwr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwr;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzbwr;->type:I

    return-object v0
.end method

.method public static zzg(Ljava/util/Collection;)Lcom/google/android/gms/internal/zzaep;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzaep;",
            ">;)",
            "Lcom/google/android/gms/internal/zzaep;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaep;->zzdG(I)Lcom/google/android/gms/internal/zzbwr;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaep;->zzi(Ljava/util/Collection;)[Lcom/google/android/gms/internal/zzbwr;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbwr;->zzctp:[Lcom/google/android/gms/internal/zzbwr;

    new-instance v1, Lcom/google/android/gms/internal/zzaep;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaep;-><init>(Lcom/google/android/gms/internal/zzbwr;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzh(Ljava/util/Collection;)Lcom/google/android/gms/internal/zzaep;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzaep;",
            ">;)",
            "Lcom/google/android/gms/internal/zzaep;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaep;->zzdG(I)Lcom/google/android/gms/internal/zzbwr;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaep;->zzi(Ljava/util/Collection;)[Lcom/google/android/gms/internal/zzbwr;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbwr;->zzctp:[Lcom/google/android/gms/internal/zzbwr;

    new-instance v1, Lcom/google/android/gms/internal/zzaep;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaep;-><init>(Lcom/google/android/gms/internal/zzbwr;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzi(Ljava/util/Collection;)[Lcom/google/android/gms/internal/zzbwr;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/zzaep;",
            ">;)[",
            "Lcom/google/android/gms/internal/zzbwr;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v3, v0, [Lcom/google/android/gms/internal/zzbwr;

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaep;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaep;->zzAb()Lcom/google/android/gms/internal/zzbwr;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private zzzR()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaep;->zzzS()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJq:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbwr;->zzad([B)Lcom/google/android/gms/internal/zzbwr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJp:Lcom/google/android/gms/internal/zzbwr;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJq:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbxs; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaep;->zzzT()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ContextFenceStub"

    const-string v2, "Could not deserialize context fence bytes."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzcf;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private zzzS()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJp:Lcom/google/android/gms/internal/zzbwr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzzT()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJp:Lcom/google/android/gms/internal/zzbwr;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJq:[B

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJp:Lcom/google/android/gms/internal/zzbwr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJq:[B

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJp:Lcom/google/android/gms/internal/zzbwr;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJq:[B

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJp:Lcom/google/android/gms/internal/zzbwr;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJq:[B

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaep;->zzzR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJp:Lcom/google/android/gms/internal/zzbwr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbwr;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaeq;->zza(Lcom/google/android/gms/internal/zzaep;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzAa()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJq:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJq:[B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJp:Lcom/google/android/gms/internal/zzbwr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxt;->zzf(Lcom/google/android/gms/internal/zzbxt;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public zzAb()Lcom/google/android/gms/internal/zzbwr;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaep;->zzzR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzaJp:Lcom/google/android/gms/internal/zzbwr;

    return-object v0
.end method
