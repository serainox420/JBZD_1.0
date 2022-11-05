.class public Lcom/google/android/gms/drive/query/internal/zzk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/query/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/drive/query/internal/zzj",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private zzaQw:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzaQw:Ljava/lang/Boolean;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/drive/query/Filter;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzk;-><init>()V

    invoke-interface {p0, v0}, Lcom/google/android/gms/drive/query/Filter;->zza(Lcom/google/android/gms/drive/query/internal/zzj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public synthetic zzBI()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/query/internal/zzk;->zzBL()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzBJ()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/query/internal/zzk;->zzBK()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public zzBK()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzaQw:Ljava/lang/Boolean;

    return-object v0
.end method

.method public zzBL()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzaQw:Ljava/lang/Boolean;

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/drive/metadata/zzb;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zzk;->zzc(Lcom/google/android/gms/drive/metadata/zzb;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/query/internal/zzk;->zzc(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zzk;->zzc(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/drive/metadata/zzb;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/zzb",
            "<TT;>;TT;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzaQw:Ljava/lang/Boolean;

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/query/internal/zzx;",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;TT;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzaQw:Ljava/lang/Boolean;

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/query/internal/zzx;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzaQw:Ljava/lang/Boolean;

    return-object v0
.end method

.method public zzc(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzaQw:Ljava/lang/Boolean;

    return-object v0
.end method

.method public synthetic zzdQ(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/internal/zzk;->zzdR(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public zzdR(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzaQw:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzaQw:Ljava/lang/Boolean;

    return-object v0
.end method

.method public synthetic zze(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/internal/zzk;->zzf(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zze(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zzk;->zzf(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzaQw:Ljava/lang/Boolean;

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<TT;>;TT;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzk;->zzaQw:Ljava/lang/Boolean;

    return-object v0
.end method

.method public synthetic zzz(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/query/internal/zzk;->zzc(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
