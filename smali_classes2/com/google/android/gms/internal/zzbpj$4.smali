.class Lcom/google/android/gms/internal/zzbpj$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbpp$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zzZc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzceE:Lcom/google/android/gms/internal/zzbpj;

.field final synthetic zzceI:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$4;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$4;->zzceI:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzf(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$4;->zzceI:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$4;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpj;->zzg(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbpr;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzbpr;->zzi(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$4;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    const/16 v1, -0x9

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;I)Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$4;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    return-void
.end method
