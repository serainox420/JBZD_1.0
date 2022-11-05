.class final Lcom/google/android/gms/internal/zzbls$zzb;
.super Lcom/google/android/gms/internal/zzbmd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbmd",
        "<",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbmz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaZU:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbmd;-><init>(I)V

    const-string v0, "code cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzb;->zzaZU:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzb;->zzbYk:Lcom/google/android/gms/internal/zzblz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzb;->zzaZU:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$zzb;->zzbYi:Lcom/google/android/gms/internal/zzbmd$zza;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzblz;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/zzbly;)V

    return-void
.end method

.method public zzVO()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbnb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzb;->zzbYq:Lcom/google/android/gms/internal/zzbmt;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbnb;-><init>(Lcom/google/android/gms/internal/zzbmt;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls$zzb;->zzae(Ljava/lang/Object;)V

    return-void
.end method
