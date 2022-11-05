.class Lcom/google/android/gms/internal/zzlx$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlx;->zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzlx$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQD:Lcom/google/android/gms/internal/zzlx;

.field final synthetic zzQF:Lcom/google/android/gms/internal/zzqj;

.field final synthetic zzQG:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlx;Lcom/google/android/gms/internal/zzqj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx$2;->zzQD:Lcom/google/android/gms/internal/zzlx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlx$2;->zzQF:Lcom/google/android/gms/internal/zzqj;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlx$2;->zzQG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlx$2;->zzQF:Lcom/google/android/gms/internal/zzqj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx$2;->zzQD:Lcom/google/android/gms/internal/zzlx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlx;->zzb(Lcom/google/android/gms/internal/zzlx;)Lcom/google/android/gms/ads/internal/zzs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzcu()Landroid/support/v4/f/k;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx$2;->zzQG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/f/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzhs;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqj;->zzh(Ljava/lang/Object;)V

    return-void
.end method
