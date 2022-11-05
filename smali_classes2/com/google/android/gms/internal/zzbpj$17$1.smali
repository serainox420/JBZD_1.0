.class Lcom/google/android/gms/internal/zzbpj$17$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj$17;->zza(Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbps;Lcom/google/android/gms/internal/zzboo;Lcom/google/android/gms/internal/zzbpr$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzceT:Lcom/google/android/gms/internal/zzbrc;

.field final synthetic zzceU:Lcom/google/android/gms/internal/zzbpr$zza;

.field final synthetic zzceV:Lcom/google/android/gms/internal/zzbpj$17;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj$17;Lcom/google/android/gms/internal/zzbrc;Lcom/google/android/gms/internal/zzbpr$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$17$1;->zzceV:Lcom/google/android/gms/internal/zzbpj$17;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$17$1;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj$17$1;->zzceU:Lcom/google/android/gms/internal/zzbpr$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$17$1;->zzceV:Lcom/google/android/gms/internal/zzbpj$17;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbpj$17;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj;->zzd(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbpo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$17$1;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpo;->zzq(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$17$1;->zzceV:Lcom/google/android/gms/internal/zzbpj$17;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbpj$17;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpj;->zze(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbpr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj$17$1;->zzceT:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzbpr;->zzi(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$17$1;->zzceV:Lcom/google/android/gms/internal/zzbpj$17;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbpj$17;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$17$1;->zzceU:Lcom/google/android/gms/internal/zzbpr$zza;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbpr$zza;->zzb(Lcom/google/firebase/database/c;)Ljava/util/List;

    :cond_0
    return-void
.end method
