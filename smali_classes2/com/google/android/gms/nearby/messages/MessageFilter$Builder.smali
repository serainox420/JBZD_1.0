.class public final Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/MessageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zzbzC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzayf;",
            ">;"
        }
    .end annotation
.end field

.field private zzbzD:Z

.field private zzbzF:I

.field private final zzbzG:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzt;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbzH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzayb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzG:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzC:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzH:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzF:I

    return-void
.end method

.method private zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzG:Ljava/util/Set;

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzt;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/messages/MessageFilter;
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzG:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "At least one of the include methods must be called."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/nearby/messages/MessageFilter;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzG:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzC:Ljava/util/List;

    iget-boolean v3, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzD:Z

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzH:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v5, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzF:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/messages/MessageFilter;-><init>(Ljava/util/List;Ljava/util/List;ZLjava/util/List;ILcom/google/android/gms/nearby/messages/MessageFilter$1;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public includeAllMyTypes()Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzD:Z

    return-object p0
.end method

.method public includeAudioBytes(I)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzF:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "includeAudioBytes() can only be called once per MessageFilter instance."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    if-lez p1, :cond_1

    move v0, v1

    :goto_1
    const/16 v3, 0x2c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid value for numAudioBytes: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    const/16 v0, 0xa

    if-gt p1, v0, :cond_2

    :goto_2
    const-string v0, "numAudioBytes is capped by AudioBytes.MAX_SIZE = 10"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    const-string v0, "__reserved_namespace"

    const-string v1, "__audio_bytes"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;

    iput p1, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzF:I

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public includeEddystoneUids(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
    .locals 2

    const-string v0, "__reserved_namespace"

    const-string v1, "__eddystone_uid"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzC:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzayf;->zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzayf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public includeFilter(Lcom/google/android/gms/nearby/messages/MessageFilter;)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzG:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzOE()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzC:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzOG()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzH:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzOH()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzD:Z

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzOF()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzD:Z

    return-object p0
.end method

.method public includeIBeaconIds(Ljava/util/UUID;Ljava/lang/Short;Ljava/lang/Short;)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
    .locals 2

    const-string v0, "__reserved_namespace"

    const-string v1, "__i_beacon_id"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzbzC:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzayf;->zza(Ljava/util/UUID;Ljava/lang/Short;Ljava/lang/Short;)Lcom/google/android/gms/internal/zzayf;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public includeNamespacedType(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "namespace(%s) cannot be null, empty or contain (*)."

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "type(%s) cannot be null or contain (*)."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
