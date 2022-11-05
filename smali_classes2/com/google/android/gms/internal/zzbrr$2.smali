.class Lcom/google/android/gms/internal/zzbrr$2;
.super Lcom/google/android/gms/internal/zzbod$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbrr;->zza(Lcom/google/android/gms/internal/zzbrr$zza;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbod$zzb",
        "<",
        "Lcom/google/android/gms/internal/zzbrq;",
        "Lcom/google/android/gms/internal/zzbsc;",
        ">;"
    }
.end annotation


# instance fields
.field zzciZ:Z

.field final synthetic zzcja:Lcom/google/android/gms/internal/zzbrr$zza;

.field final synthetic zzcjb:Lcom/google/android/gms/internal/zzbrr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbrr;Lcom/google/android/gms/internal/zzbrr$zza;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrr$2;->zzcjb:Lcom/google/android/gms/internal/zzbrr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrr$2;->zzcja:Lcom/google/android/gms/internal/zzbrr$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbod$zzb;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbrr$2;->zzciZ:Z

    return-void
.end method


# virtual methods
.method public zzf(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbrr$2;->zzciZ:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaI()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbrq;->zzi(Lcom/google/android/gms/internal/zzbrq;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbrr$2;->zzciZ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrr$2;->zzcja:Lcom/google/android/gms/internal/zzbrr$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaI()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrr$2;->zzcjb:Lcom/google/android/gms/internal/zzbrr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrr;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrr$zza;->zzb(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrr$2;->zzcja:Lcom/google/android/gms/internal/zzbrr$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbrr$zza;->zzb(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    return-void
.end method

.method public synthetic zzj(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbrq;

    check-cast p2, Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbrr$2;->zzf(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbsc;)V

    return-void
.end method
