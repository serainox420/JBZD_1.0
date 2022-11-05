.class public Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/GoalsReadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zzaTO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaWa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaWb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzaWa:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzaWb:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzaTO:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzaWa:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzaWb:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzaTO:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addActivity(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/fitness/zza;->zzdU(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Attempting to add an unknown activity"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzaTO:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzanu;->zza(Ljava/lang/Object;Ljava/util/List;)I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;
    .locals 1

    const-string v0, "Attempting to use a null data type"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzaWa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzaWa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addObjectiveType(I)Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    :cond_0
    :goto_0
    const-string v1, "Attempting to add an invalid objective type"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzaWb:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzaWb:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public build()Lcom/google/android/gms/fitness/request/GoalsReadRequest;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzaWa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "At least one data type should be specified."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;-><init>(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;Lcom/google/android/gms/fitness/request/GoalsReadRequest$1;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
