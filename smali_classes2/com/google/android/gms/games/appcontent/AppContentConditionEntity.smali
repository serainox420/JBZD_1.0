.class public final Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;
.super Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContentCondition;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaZe:Ljava/lang/String;

.field private final zzaZf:Ljava/lang/String;

.field private final zzaZg:Ljava/lang/String;

.field private final zzaZh:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/AppContentConditionEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/appcontent/AppContentCondition;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzaZe:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEz()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzaZf:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzaZg:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEB()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzaZh:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesAbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzaZe:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzaZf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzaZg:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzaZh:Landroid/os/Bundle;

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/appcontent/AppContentCondition;)I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEy()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEz()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEA()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEB()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/appcontent/AppContentCondition;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/appcontent/AppContentCondition;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/games/appcontent/AppContentCondition;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEy()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEz()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEz()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEA()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEA()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEB()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEB()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static zzb(Lcom/google/android/gms/games/appcontent/AppContentCondition;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "DefaultValue"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "ExpectedValue"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Predicate"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "PredicateParameters"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentCondition;->zzEB()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentCondition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzEC()Lcom/google/android/gms/games/appcontent/AppContentCondition;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentCondition;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzb(Lcom/google/android/gms/games/appcontent/AppContentCondition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentConditionEntityCreator;->zza(Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzEA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzaZg:Ljava/lang/String;

    return-object v0
.end method

.method public zzEB()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzaZh:Landroid/os/Bundle;

    return-object v0
.end method

.method public zzEC()Lcom/google/android/gms/games/appcontent/AppContentCondition;
    .locals 0

    return-object p0
.end method

.method public zzEy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzaZe:Ljava/lang/String;

    return-object v0
.end method

.method public zzEz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzaZf:Ljava/lang/String;

    return-object v0
.end method
