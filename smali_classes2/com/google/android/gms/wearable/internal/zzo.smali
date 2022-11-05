.class public Lcom/google/android/gms/wearable/internal/zzo;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/wearable/CapabilityInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;

.field private zzbTN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/wearable/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbTQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzcc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzcc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzo;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzbTQ:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzbTN:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/zzo;->zzUs()V

    return-void
.end method

.method private zzUs()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzbTQ:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

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
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzo;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->mName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzo;->mName:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzbTQ:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzbTQ:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzo;->zzbTQ:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzo;->zzbTQ:Ljava/util/List;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/wearable/Node;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzbTN:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzbTQ:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzbTN:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzbTN:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzbTQ:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzbTQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzbTQ:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CapabilityInfo{"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzp;->zza(Lcom/google/android/gms/wearable/internal/zzo;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzUt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzcc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->zzbTQ:Ljava/util/List;

    return-object v0
.end method
