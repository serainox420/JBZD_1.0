.class Lcom/google/android/gms/internal/zzbpj$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/zzbph;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzceE:Lcom/google/android/gms/internal/zzbpj;

.field final synthetic zzceO:Lcom/google/android/gms/internal/zzbpj$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbpj$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$10;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$10;->zzceO:Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$10;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    new-instance v1, Lcom/google/android/gms/internal/zzbpx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj$10;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpj$10;->zzceO:Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbpj$zza;->zzj(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/firebase/database/n;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpj$10;->zzceO:Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbpj$zza;->zzf(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbpx;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/n;Lcom/google/android/gms/internal/zzbrc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpj;->zze(Lcom/google/android/gms/internal/zzbpc;)V

    return-void
.end method
