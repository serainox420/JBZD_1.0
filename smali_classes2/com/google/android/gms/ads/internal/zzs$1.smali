.class Lcom/google/android/gms/ads/internal/zzs$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzs;->zza(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzgl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsI:Lcom/google/android/gms/internal/zzpb$zza;

.field final synthetic zzuh:Lcom/google/android/gms/ads/internal/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/internal/zzpb$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzs$1;->zzuh:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzs$1;->zzsI:Lcom/google/android/gms/internal/zzpb$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzs$1;->zzuh:Lcom/google/android/gms/ads/internal/zzs;

    new-instance v0, Lcom/google/android/gms/internal/zzpb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs$1;->zzsI:Lcom/google/android/gms/internal/zzpb$zza;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzpb;-><init>(Lcom/google/android/gms/internal/zzpb$zza;Lcom/google/android/gms/internal/zzqw;Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzkb;Ljava/lang/String;Lcom/google/android/gms/internal/zzjt;Lcom/google/android/gms/internal/zzha$zza;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/ads/internal/zzs;->zzb(Lcom/google/android/gms/internal/zzpb;)V

    return-void
.end method
