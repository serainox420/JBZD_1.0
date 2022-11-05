.class Lcom/google/android/gms/internal/zzbrf$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbrj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzciB:Lcom/google/android/gms/internal/zzbpz;

.field private final zzciC:Lcom/google/android/gms/internal/zzbsc;

.field private final zzcir:Lcom/google/android/gms/internal/zzbre;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbpz;Lcom/google/android/gms/internal/zzbre;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrf$zzb;->zzciB:Lcom/google/android/gms/internal/zzbpz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrf$zzb;->zzcir:Lcom/google/android/gms/internal/zzbre;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbrf$zzb;->zzciC:Lcom/google/android/gms/internal/zzbsc;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbrw;Lcom/google/android/gms/internal/zzbsb;Z)Lcom/google/android/gms/internal/zzbsb;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrf$zzb;->zzciC:Lcom/google/android/gms/internal/zzbsc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrf$zzb;->zzciC:Lcom/google/android/gms/internal/zzbsc;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrf$zzb;->zzciB:Lcom/google/android/gms/internal/zzbpz;

    invoke-virtual {v1, v0, p2, p3, p1}, Lcom/google/android/gms/internal/zzbpz;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsb;ZLcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbsb;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrf$zzb;->zzcir:Lcom/google/android/gms/internal/zzbre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbre;->zzaax()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    goto :goto_0
.end method

.method public zzh(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrf$zzb;->zzcir:Lcom/google/android/gms/internal/zzbre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbre;->zzaau()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqu;->zzf(Lcom/google/android/gms/internal/zzbrq;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqu;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbsc;->zzm(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrf$zzb;->zzciC:Lcom/google/android/gms/internal/zzbsc;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbqu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrf$zzb;->zzciC:Lcom/google/android/gms/internal/zzbsc;

    invoke-static {}, Lcom/google/android/gms/internal/zzbry;->zzabg()Lcom/google/android/gms/internal/zzbry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbrx;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/internal/zzbrx;ZZ)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbrf$zzb;->zzciB:Lcom/google/android/gms/internal/zzbpz;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzbpz;->zza(Lcom/google/android/gms/internal/zzbrq;Lcom/google/android/gms/internal/zzbqu;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrf$zzb;->zzcir:Lcom/google/android/gms/internal/zzbre;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbre;->zzaaw()Lcom/google/android/gms/internal/zzbqu;

    move-result-object v0

    goto :goto_1
.end method
