.class public Lcom/google/android/gms/internal/zzji$zze;
.super Lcom/google/android/gms/internal/zzqq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzqq",
        "<",
        "Lcom/google/android/gms/internal/zzjj;",
        ">;"
    }
.end annotation


# instance fields
.field private zzKk:Lcom/google/android/gms/internal/zzji$zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzji$zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzji$zze;->zzKk:Lcom/google/android/gms/internal/zzji$zzc;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zze;->zzKk:Lcom/google/android/gms/internal/zzji$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzc;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji$zze;->zzKk:Lcom/google/android/gms/internal/zzji$zzc;

    return-void
.end method

.method public getStatus()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zze;->zzKk:Lcom/google/android/gms/internal/zzji$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzc;->getStatus()I

    move-result v0

    return v0
.end method

.method public reject()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zze;->zzKk:Lcom/google/android/gms/internal/zzji$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzc;->reject()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqp$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzjj;",
            ">;",
            "Lcom/google/android/gms/internal/zzqp$zza;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zze;->zzKk:Lcom/google/android/gms/internal/zzji$zzc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzji$zzc;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    return-void
.end method

.method public synthetic zzg(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzji$zze;->zzj(Lcom/google/android/gms/internal/zzjj;)V

    return-void
.end method

.method public zzj(Lcom/google/android/gms/internal/zzjj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zze;->zzKk:Lcom/google/android/gms/internal/zzji$zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzji$zzc;->zzg(Ljava/lang/Object;)V

    return-void
.end method
