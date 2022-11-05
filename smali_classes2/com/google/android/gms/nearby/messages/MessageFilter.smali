.class public Lcom/google/android/gms/nearby/messages/MessageFilter;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final INCLUDE_ALL_MY_TYPES:Lcom/google/android/gms/nearby/messages/MessageFilter;


# instance fields
.field final zzaiI:I

.field private final zzbzB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzt;",
            ">;"
        }
    .end annotation
.end field

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

.field private final zzbzD:Z

.field private final zzbzE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzayb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbzF:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/MessageFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->includeAllMyTypes()Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/MessageFilter$Builder;->build()Lcom/google/android/gms/nearby/messages/MessageFilter;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/messages/MessageFilter;->INCLUDE_ALL_MY_TYPES:Lcom/google/android/gms/nearby/messages/MessageFilter;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;ZLjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzt;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzayf;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzayb;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzaiI:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzB:Ljava/util/List;

    iput-boolean p4, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzD:Z

    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzC:Ljava/util/List;

    if-nez p5, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p5

    :cond_1
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzE:Ljava/util/List;

    iput p6, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzF:I

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;ZLjava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzt;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzayf;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzayb;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/messages/MessageFilter;-><init>(ILjava/util/List;Ljava/util/List;ZLjava/util/List;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;ZLjava/util/List;ILcom/google/android/gms/nearby/messages/MessageFilter$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/nearby/messages/MessageFilter;-><init>(Ljava/util/List;Ljava/util/List;ZLjava/util/List;I)V

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
    instance-of v2, p1, Lcom/google/android/gms/nearby/messages/MessageFilter;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/nearby/messages/MessageFilter;

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzD:Z

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzD:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzB:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzB:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzC:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzC:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzE:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzE:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzB:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzC:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzD:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzE:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzD:Z

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzB:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "MessageFilter{includeAllMyTypes="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", messageTypes="

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/zzb;->zza(Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzOE()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzB:Ljava/util/List;

    return-object v0
.end method

.method public zzOF()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzD:Z

    return v0
.end method

.method zzOG()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzayf;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzC:Ljava/util/List;

    return-object v0
.end method

.method public zzOH()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzayb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzE:Ljava/util/List;

    return-object v0
.end method

.method public zzOI()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/messages/MessageFilter;->zzbzF:I

    return v0
.end method
