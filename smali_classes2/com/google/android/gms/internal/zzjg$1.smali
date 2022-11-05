.class Lcom/google/android/gms/internal/zzjg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjg;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/ads/internal/zze;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzJA:Lcom/google/android/gms/ads/internal/zze;

.field final synthetic zzJB:Ljava/lang/String;

.field final synthetic zzJC:Lcom/google/android/gms/internal/zzjg;

.field final synthetic zzJx:Lcom/google/android/gms/internal/zzqh;

.field final synthetic zzJy:Lcom/google/android/gms/internal/zzjg$zza;

.field final synthetic zzJz:Lcom/google/android/gms/internal/zzaw;

.field final synthetic zztf:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjg;Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzjg$zza;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/ads/internal/zze;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjg$1;->zzJC:Lcom/google/android/gms/internal/zzjg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjg$1;->zztf:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjg$1;->zzJx:Lcom/google/android/gms/internal/zzqh;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzjg$1;->zzJy:Lcom/google/android/gms/internal/zzjg$zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzjg$1;->zzJz:Lcom/google/android/gms/internal/zzaw;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzjg$1;->zzJA:Lcom/google/android/gms/ads/internal/zze;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzjg$1;->zzJB:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg$1;->zzJC:Lcom/google/android/gms/internal/zzjg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg$1;->zztf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjg$1;->zzJx:Lcom/google/android/gms/internal/zzqh;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjg$1;->zzJy:Lcom/google/android/gms/internal/zzjg$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzjg$1;->zzJz:Lcom/google/android/gms/internal/zzaw;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzjg$1;->zzJA:Lcom/google/android/gms/ads/internal/zze;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzjg;->zza(Lcom/google/android/gms/internal/zzjg;Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzjg$zza;Lcom/google/android/gms/internal/zzaw;Lcom/google/android/gms/ads/internal/zze;)Lcom/google/android/gms/internal/zzjf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg$1;->zzJB:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzjf;->zzan(Ljava/lang/String;)V

    return-void
.end method
