.class public abstract Lcom/google/android/gms/ads/internal/zzc;
.super Lcom/google/android/gms/ads/internal/zzb;

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzi;
.implements Lcom/google/android/gms/internal/zzkx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzot;)Lcom/google/android/gms/internal/zzqw;
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzx$zza;->getNextView()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzqw;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/zzqw;

    sget-object v2, Lcom/google/android/gms/internal/zzgd;->zzCI:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Reusing webview..."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzpk;->zzbf(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzc;->zzsn:Lcom/google/android/gms/internal/zzgl;

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzqw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzgl;)V

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzx$zza;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcN()Lcom/google/android/gms/internal/zzqy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzx;->zzvm:Lcom/google/android/gms/internal/zzaw;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzx;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzc;->zzsn:Lcom/google/android/gms/internal/zzgl;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzc;->zzsv:Lcom/google/android/gms/ads/internal/zze;

    move-object v8, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzqy;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;ZZLcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/ads/internal/zzu;Lcom/google/android/gms/ads/internal/zze;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zzc;->zzb(Landroid/view/View;)V

    :cond_2
    move-object v11, v0

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzqw;->zzlv()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v8, p2

    move-object v9, p0

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/zzqx;->zza(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzkx;Lcom/google/android/gms/internal/zzot;)V

    invoke-virtual {p0, v11}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzjj;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzTi:Lcom/google/android/gms/internal/zzmk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRL:Ljava/lang/String;

    invoke-interface {v11, v0}, Lcom/google/android/gms/internal/zzqw;->zzbj(Ljava/lang/String;)V

    return-object v11

    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->destroy()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(IIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzc;->zzbI()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzgp;)V
    .locals 1

    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvI:Lcom/google/android/gms/internal/zzgp;

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzjj;)V
    .locals 2

    const-string v0, "/trackActiveViewUnit"

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzc$1;-><init>(Lcom/google/android/gms/ads/internal/zzc;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzjj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzid;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzgl;)V
    .locals 10

    const/4 v5, 0x0

    iget v0, p1, Lcom/google/android/gms/internal/zzpb$zza;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzc$2;-><init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/zzpb$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvr:Lcom/google/android/gms/internal/zzeg;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->zzSn:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzpb$zza;->zzWm:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmn;->zzzD:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvO:I

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcL()Lcom/google/android/gms/internal/zzlq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzqn:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/zzx;->zzvm:Lcom/google/android/gms/internal/zzaw;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzc;->zzsz:Lcom/google/android/gms/internal/zzka;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p0

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/zzlq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzlq$zza;Lcom/google/android/gms/internal/zzgl;)Lcom/google/android/gms/internal/zzpq;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/zzx;->zzvq:Lcom/google/android/gms/internal/zzpq;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc$3;

    invoke-direct {v1, p0, p1, v5, p2}, Lcom/google/android/gms/ads/internal/zzc$3;-><init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzot;Lcom/google/android/gms/internal/zzgl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzpb;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzx;->zzdq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvo:Lcom/google/android/gms/ads/internal/zzx$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzx$zza;->zzdw()Lcom/google/android/gms/internal/zzpr;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzpb;->zzSs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpr;->zzbb(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzpb;Lcom/google/android/gms/internal/zzpb;)Z

    move-result v0

    return v0
.end method

.method public zzbZ()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzc;->onAdClicked()V

    return-void
.end method

.method public zzc(Landroid/view/View;)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzx;->zzvN:Landroid/view/View;

    new-instance v0, Lcom/google/android/gms/internal/zzpb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc;->zzss:Lcom/google/android/gms/ads/internal/zzx;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzx;->zzvt:Lcom/google/android/gms/internal/zzpb$zza;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzpb;-><init>(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzkb;Ljava/lang/String;Lcom/google/android/gms/internal/zzjt;Lcom/google/android/gms/internal/zzha$zza;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzc;->zzb(Lcom/google/android/gms/internal/zzpb;)V

    return-void
.end method

.method public zzca()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzc;->recordImpression()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzc;->zzbE()V

    return-void
.end method

.method public zzcb()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzc;->zzbG()V

    return-void
.end method
