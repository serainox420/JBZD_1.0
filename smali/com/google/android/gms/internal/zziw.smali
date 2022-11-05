.class public Lcom/google/android/gms/internal/zziw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzsv:Lcom/google/android/gms/ads/internal/zze;

.field private final zzsz:Lcom/google/android/gms/internal/zzka;

.field private final zztt:Lcom/google/android/gms/internal/zzqh;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zziw;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziw;->zzsz:Lcom/google/android/gms/internal/zzka;

    iput-object p3, p0, Lcom/google/android/gms/internal/zziw;->zztt:Lcom/google/android/gms/internal/zzqh;

    iput-object p4, p0, Lcom/google/android/gms/internal/zziw;->zzsv:Lcom/google/android/gms/ads/internal/zze;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziw;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public zzag(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzm;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/zzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziw;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzeg;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zziw;->zzsz:Lcom/google/android/gms/internal/zzka;

    iget-object v5, p0, Lcom/google/android/gms/internal/zziw;->zztt:Lcom/google/android/gms/internal/zzqh;

    iget-object v6, p0, Lcom/google/android/gms/internal/zziw;->zzsv:Lcom/google/android/gms/ads/internal/zze;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V

    return-object v0
.end method

.method public zzah(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzm;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/zzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziw;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzeg;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zziw;->zzsz:Lcom/google/android/gms/internal/zzka;

    iget-object v5, p0, Lcom/google/android/gms/internal/zziw;->zztt:Lcom/google/android/gms/internal/zzqh;

    iget-object v6, p0, Lcom/google/android/gms/internal/zziw;->zzsv:Lcom/google/android/gms/ads/internal/zze;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V

    return-object v0
.end method

.method public zzgu()Lcom/google/android/gms/internal/zziw;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zziw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zziw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zziw;->zzsz:Lcom/google/android/gms/internal/zzka;

    iget-object v3, p0, Lcom/google/android/gms/internal/zziw;->zztt:Lcom/google/android/gms/internal/zzqh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zziw;->zzsv:Lcom/google/android/gms/ads/internal/zze;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zziw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/zze;)V

    return-object v0
.end method
