.class Lcom/google/android/gms/ads/internal/zzm$zza;
.super Lcom/google/android/gms/internal/zzpj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zztG:Lcom/google/android/gms/ads/internal/zzm;

.field private final zztH:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzm;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpj;-><init>()V

    iput p2, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztH:I

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method public zzco()V
    .locals 10

    const/4 v6, -0x1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzn;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zztK:Z

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzm;->zzcl()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/ads/internal/zzm;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/zzm;->zzb(Lcom/google/android/gms/ads/internal/zzm;)F

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/zzx;->zztK:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztH:I

    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzn;-><init>(ZZZFI)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzqw;->getRequestedOrientation()I

    move-result v1

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget v6, v1, Lcom/google/android/gms/internal/zzpb;->orientation:I

    :goto_1
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzpb;->zzNH:Lcom/google/android/gms/internal/zzqw;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzx;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzm$zza;->zztG:Lcom/google/android/gms/ads/internal/zzm;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/zzm;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/zzx;->zzvs:Lcom/google/android/gms/internal/zzpb;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzpb;->zzSs:Ljava/lang/String;

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqw;ILcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzn;)V

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzm$zza$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/ads/internal/zzm$zza$1;-><init>(Lcom/google/android/gms/ads/internal/zzm$zza;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    move v6, v1

    goto :goto_1
.end method
